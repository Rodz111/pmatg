"""
ATG Playermodel Pipeline — Blender Headless Script
===================================================
Flux : import SMD → LODs → proportion trick → export (aligné sur le workflow manuel).
GENERATE_LODS et RUN_PROPORTION_TRICK : True/False en tête de script pour activer chaque étape.

Ce script est exécuté par Blender en mode headless :
    blender -b --python blender_script.py -- <args>

Arguments (passés après '--') :
    --smd       : Chemin du fichier SMD source
    --name      : Nom de la tenue (ex: boutique_10)
    --output    : Dossier de sortie pour les SMDs exportés
    --gender    : Genre pour le proportion trick ('MALE' ou 'FEMALE')
"""

import bpy
import sys
import os
import re
import argparse
import shutil

# Mettre True pour activer le proportion trick (Roro).
RUN_PROPORTION_TRICK = True

# Mettre True pour générer les LODs (Roro Tools ou repli intégré).
GENERATE_LODS = True

# Mettre True pour exporter à chaque étape (debug bones)
DEBUG_EXPORT_STEPS = True

# ============================================================
# ARGUMENT PARSING
# ============================================================

def parse_args():
    """Parse les arguments passés après '--' dans la ligne de commande Blender."""
    argv = sys.argv
    if "--" not in argv:
        print("[ERROR] Aucun argument trouvé. Utilisez: blender -b --python script.py -- --smd ... --name ... --output ...")
        sys.exit(1)
    
    argv = argv[argv.index("--") + 1:]
    
    parser = argparse.ArgumentParser(description="ATG Playermodel Pipeline - Blender Script")
    parser.add_argument("--smd", required=True, help="Chemin du fichier SMD source")
    parser.add_argument("--name", required=True, help="Nom de la tenue")
    parser.add_argument("--output", required=True, help="Dossier de sortie")
    parser.add_argument("--gender", required=False, default="MALE",
                        choices=["MALE", "FEMALE"],
                        help="Genre pour le proportion trick (MALE ou FEMALE)")
    
    return parser.parse_args(argv)


# ============================================================
# HELPER: Force Object mode safely
# ============================================================

def ensure_object_mode():
    """Force le retour en mode OBJECT quel que soit le contexte actuel."""
    try:
        if bpy.context.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
    except Exception:
        # Fallback: changer le contexte via l'override
        for area in bpy.context.screen.areas:
            if area.type == 'VIEW_3D':
                for region in area.regions:
                    if region.type == 'WINDOW':
                        with bpy.context.temp_override(area=area, region=region):
                            try:
                                bpy.ops.object.mode_set(mode='OBJECT')
                            except Exception:
                                pass
                        break


# ============================================================
# SCENE CLEANUP
# ============================================================

def clean_scene():
    """Nettoie complètement la scène Blender."""
    print("[INFO] Nettoyage de la scène...")
    
    # Supprimer tous les objets
    bpy.ops.object.select_all(action='SELECT')
    bpy.ops.object.delete(use_global=True)
    
    # Nettoyer les données orphan
    for block in bpy.data.meshes:
        if block.users == 0:
            bpy.data.meshes.remove(block)
    for block in bpy.data.materials:
        if block.users == 0:
            bpy.data.materials.remove(block)
    for block in bpy.data.armatures:
        if block.users == 0:
            bpy.data.armatures.remove(block)


# ============================================================
# DEBUG: Export at each step + print transforms
# ============================================================

def debug_print_transforms():
    """Print all armature and mesh transforms for debugging."""
    print("[DEBUG] === Object Transforms ===")
    for obj in bpy.data.objects:
        if obj.type in ('ARMATURE', 'MESH'):
            loc = obj.location
            rot = obj.rotation_euler
            scale = obj.scale
            print(f"  {obj.type}: {obj.name}")
            print(f"    Location: ({loc.x:.4f}, {loc.y:.4f}, {loc.z:.4f})")
            print(f"    Rotation: ({rot.x:.4f}, {rot.y:.4f}, {rot.z:.4f})")
            print(f"    Scale:    ({scale.x:.4f}, {scale.y:.4f}, {scale.z:.4f})")
            print(f"    Matrix World:\n{obj.matrix_world}")
    print("[DEBUG] === End Transforms ===")


def debug_export_step(output_dir, step_name, tenue_name):
    """Export SMD at a specific pipeline step for debugging."""
    if not DEBUG_EXPORT_STEPS:
        return
    
    # Go up one level from tenue folder to put debug in main work dir
    parent_dir = os.path.dirname(output_dir)
    debug_dir = os.path.join(parent_dir, "_debug_steps")
    os.makedirs(debug_dir, exist_ok=True)
    
    print(f"\n[DEBUG EXPORT] Step: {step_name}")
    print(f"[DEBUG EXPORT] Debug dir: {debug_dir}")
    debug_print_transforms()
    
    ensure_object_mode()
    
    # Excluded meshes (defined inline to avoid forward reference issues)
    excluded_meshes = {'reference_male', 'reference_female'}
    
    # Find mesh and armature
    mesh_obj = None
    armature = None
    print(f"[DEBUG] Objects in scene: {[obj.name for obj in bpy.data.objects]}")
    for obj in bpy.data.objects:
        if obj.type == 'MESH' and obj.name not in excluded_meshes:
            mesh_obj = obj
            print(f"[DEBUG] Found mesh: {obj.name}")
        if obj.type == 'ARMATURE':
            armature = obj
            print(f"[DEBUG] Found armature: {obj.name}")
    
    if not mesh_obj:
        print(f"[DEBUG] No mesh found for step {step_name}")
        return
    
    armatures = [a for a in bpy.data.objects if a.type == 'ARMATURE']
    
    # Export with step name prefix
    smd_path = os.path.join(debug_dir, f"{step_name}_{tenue_name}.smd")
    print(f"[DEBUG EXPORT] Exporting to: {smd_path}")
    try:
        export_smd_manual(mesh_obj, smd_path, armatures)
        print(f"[DEBUG EXPORT] OK: {smd_path}")
    except Exception as e:
        import traceback
        print(f"[DEBUG EXPORT] FAILED: {e}")
        traceback.print_exc()


# ============================================================
# SMD IMPORT
# ============================================================

def import_smd(smd_path):
    """Importe un fichier SMD via Blender Source Tools."""
    print(f"[INFO] Import SMD: {smd_path}")
    
    if not os.path.exists(smd_path):
        print(f"[ERROR] Fichier SMD introuvable: {smd_path}")
        sys.exit(1)
    
    # Activer l'addon Source Tools si pas déjà fait
    try:
        bpy.ops.preferences.addon_enable(module="io_scene_valvesource")
    except Exception:
        pass  # Peut déjà être activé
    
    # Import SMD
    try:
        bpy.ops.import_scene.smd(filepath=smd_path)
        print(f"[OK] SMD importé avec succès")
    except Exception as e:
        print(f"[ERROR] Erreur lors de l'import SMD: {e}")
        sys.exit(1)
    
    # NOTE: On n'applique PAS les transformations ici !
    # L'addon Roro Tools manuel ne le fait pas, et cela casserait le proportion trick.
    # Les transformations seront appliquées APRÈS le proportion trick si nécessaire.


def apply_all_transforms():
    """
    Apply all object transforms (location, rotation, scale) to mesh and armature.
    This ensures vertices and bones are in the same coordinate space.
    """
    print("[INFO] Applying all transforms...")
    ensure_object_mode()
    
    # Skip these special objects created by Source Tools
    skip_objects = {'smd_bone_vis', 'interstice'}
    
    # First, apply transforms to armature(s)
    for obj in bpy.data.objects:
        if obj.type == 'ARMATURE':
            if obj.name in skip_objects:
                print(f"  [INFO] Skipping special object: {obj.name}")
                continue
            print(f"  [INFO] Applying transforms to armature: {obj.name}")
            print(f"    Before - Loc: {obj.location}, Scale: {obj.scale}, Rot: {obj.rotation_euler}")
            
            try:
                bpy.ops.object.select_all(action='DESELECT')
                obj.select_set(True)
                bpy.context.view_layer.objects.active = obj
                
                # Apply all transforms
                bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
                
                print(f"    After - Loc: {obj.location}, Scale: {obj.scale}, Rot: {obj.rotation_euler}")
            except Exception as e:
                print(f"    [WARN] Failed to apply transforms: {e}")
    
    # Then apply transforms to mesh(es)
    for obj in bpy.data.objects:
        if obj.type == 'MESH':
            if obj.name in skip_objects or obj.name.startswith('smd_'):
                print(f"  [INFO] Skipping special object: {obj.name}")
                continue
            print(f"  [INFO] Applying transforms to mesh: {obj.name}")
            print(f"    Before - Loc: {obj.location}, Scale: {obj.scale}, Rot: {obj.rotation_euler}")
            
            try:
                bpy.ops.object.select_all(action='DESELECT')
                obj.select_set(True)
                bpy.context.view_layer.objects.active = obj
                
                # Apply all transforms
                bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
                
                print(f"    After - Loc: {obj.location}, Scale: {obj.scale}, Rot: {obj.rotation_euler}")
            except Exception as e:
                print(f"    [WARN] Failed to apply transforms: {e}")
    
    bpy.ops.object.select_all(action='DESELECT')
    print("[OK] Transforms applied")


# ============================================================
# PROPORTION TRICK (headless safe - copie directe des positions)
# ============================================================

def run_proportion_trick(gender="MALE"):
    """
    Exécute le Proportion Trick en mode headless.
    
    Au lieu d'utiliser des contraintes (qui ne s'évaluent pas en headless),
    on copie DIRECTEMENT les positions des bones de 'gg' vers 'proportions'
    en mode EDIT.
    """
    from mathutils import Vector, Matrix
    
    print(f"[INFO] Proportion Trick (headless): gender={gender}")
    
    ensure_object_mode()
    
    # Liste des bones ValveBiped à synchroniser
    valvebipeds = [
        'ValveBiped.Bip01_Pelvis',
        'ValveBiped.Bip01_Spine',
        'ValveBiped.Bip01_Spine1',
        'ValveBiped.Bip01_Spine2',
        'ValveBiped.Bip01_Spine4',
        'ValveBiped.Bip01_Neck1',
        'ValveBiped.Bip01_Head1',
        'ValveBiped.Bip01_R_Clavicle',
        'ValveBiped.Bip01_R_UpperArm',
        'ValveBiped.Bip01_R_Forearm',
        'ValveBiped.Bip01_R_Hand',
        'ValveBiped.Bip01_R_Finger0',
        'ValveBiped.Bip01_R_Finger01',
        'ValveBiped.Bip01_R_Finger02',
        'ValveBiped.Bip01_R_Finger1',
        'ValveBiped.Bip01_R_Finger11',
        'ValveBiped.Bip01_R_Finger12',
        'ValveBiped.Bip01_R_Finger2',
        'ValveBiped.Bip01_R_Finger21',
        'ValveBiped.Bip01_R_Finger22',
        'ValveBiped.Bip01_R_Finger3',
        'ValveBiped.Bip01_R_Finger31',
        'ValveBiped.Bip01_R_Finger32',
        'ValveBiped.Bip01_R_Finger4',
        'ValveBiped.Bip01_R_Finger41',
        'ValveBiped.Bip01_R_Finger42',
        'ValveBiped.Bip01_L_Clavicle',
        'ValveBiped.Bip01_L_UpperArm',
        'ValveBiped.Bip01_L_Forearm',
        'ValveBiped.Bip01_L_Hand',
        'ValveBiped.Bip01_L_Finger0',
        'ValveBiped.Bip01_L_Finger01',
        'ValveBiped.Bip01_L_Finger02',
        'ValveBiped.Bip01_L_Finger1',
        'ValveBiped.Bip01_L_Finger11',
        'ValveBiped.Bip01_L_Finger12',
        'ValveBiped.Bip01_L_Finger2',
        'ValveBiped.Bip01_L_Finger21',
        'ValveBiped.Bip01_L_Finger22',
        'ValveBiped.Bip01_L_Finger3',
        'ValveBiped.Bip01_L_Finger31',
        'ValveBiped.Bip01_L_Finger32',
        'ValveBiped.Bip01_L_Finger4',
        'ValveBiped.Bip01_L_Finger41',
        'ValveBiped.Bip01_L_Finger42',
        'ValveBiped.Bip01_R_Thigh',
        'ValveBiped.Bip01_R_Calf',
        'ValveBiped.Bip01_R_Foot',
        'ValveBiped.Bip01_R_Toe0',
        'ValveBiped.Bip01_L_Thigh',
        'ValveBiped.Bip01_L_Calf',
        'ValveBiped.Bip01_L_Foot',
        'ValveBiped.Bip01_L_Toe0',
    ]
    
    # ── STEP 1: Trouver et renommer l'armature en 'gg' ──
    armature = None
    for obj in bpy.data.objects:
        if obj.type == 'ARMATURE':
            armature = obj
            break
    
    if not armature:
        print("[ERROR] Aucune armature trouvée pour le proportion trick!")
        return False
    
    old_name = armature.name
    armature.name = "gg"
    print(f"[INFO] Armature '{old_name}' renommée en 'gg'")
    
    # ── STEP 2: Charger proportion_trick.blend ──
    roro_operators_dir = _roro_operators_dir()
    blend_file_path = os.path.join(roro_operators_dir, "proportion_trick.blend")
    
    if not os.path.exists(blend_file_path):
        print(f"[ERROR] Fichier proportion_trick.blend introuvable: {blend_file_path}")
        return False
    
    print("[INFO] Chargement de proportion_trick.blend...")
    with bpy.data.libraries.load(blend_file_path, link=False) as (data_from, data_to):
        data_to.collections = data_from.collections
    
    imported_objects = []
    for collection in data_to.collections:
        if collection is not None:
            bpy.context.scene.collection.children.link(collection)
            imported_objects.extend(collection.objects)
    
    # ── STEP 3: Choisir male/female et supprimer l'autre ──
    if gender == 'MALE':
        keep_reference = "reference_male"
        remove_reference = "reference_female"
    else:
        keep_reference = "reference_female"
        remove_reference = "reference_male"
    
    for obj in list(imported_objects):
        if obj.type == 'ARMATURE' and obj.name == remove_reference:
            bpy.data.objects.remove(obj, do_unlink=True)
            print(f"[INFO] {remove_reference} supprimé")
    
    # ── STEP 4: Récupérer les armatures ──
    gg_armature = bpy.data.objects.get('gg')
    proportions_arm = bpy.data.objects.get('proportions')
    
    if not gg_armature or not proportions_arm:
        print("[ERROR] Armatures 'gg' ou 'proportions' introuvables!")
        return False
    
    # ── STEP 5: Copier les positions des bones (en mode EDIT) ──
    print("[INFO] Copie directe des positions des bones ValveBiped...")
    
    # Collecter les positions des bones de gg
    gg_bone_positions = {}
    bpy.ops.object.select_all(action='DESELECT')
    gg_armature.select_set(True)
    bpy.context.view_layer.objects.active = gg_armature
    bpy.ops.object.mode_set(mode='EDIT')
    
    for bone_name in valvebipeds:
        if bone_name in gg_armature.data.edit_bones:
            ebone = gg_armature.data.edit_bones[bone_name]
            gg_bone_positions[bone_name] = {
                'head': ebone.head.copy(),
                'tail': ebone.tail.copy(),
                'roll': ebone.roll
            }
    
    bpy.ops.object.mode_set(mode='OBJECT')
    print(f"[INFO] {len(gg_bone_positions)} positions de bones collectées de 'gg'")
    
    # Appliquer les positions sur proportions
    bpy.ops.object.select_all(action='DESELECT')
    proportions_arm.select_set(True)
    bpy.context.view_layer.objects.active = proportions_arm
    bpy.ops.object.mode_set(mode='EDIT')
    
    bones_updated = 0
    for bone_name, pos in gg_bone_positions.items():
        if bone_name in proportions_arm.data.edit_bones:
            ebone = proportions_arm.data.edit_bones[bone_name]
            ebone.head = pos['head']
            ebone.tail = pos['tail']
            ebone.roll = pos['roll']
            bones_updated += 1
    
    bpy.ops.object.mode_set(mode='OBJECT')
    print(f"[INFO] {bones_updated} bones mis à jour dans 'proportions'")
    
    # ── STEP 6: Exécuter proportion_trick2.py (fusion des bones non-ValveBiped) ──
    # Retirer la référence des collections avant select_all + join
    ref_obj = bpy.data.objects.get(keep_reference)
    ref_collections = []
    if ref_obj:
        ref_collections = list(ref_obj.users_collection)
        for col in ref_collections:
            col.objects.unlink(ref_obj)
        print(f"[INFO] {keep_reference} retiré temporairement des collections")
    
    print("[INFO] Exécution de proportion_trick2.py (fusion des bones non-ValveBiped)...")
    script_path2 = os.path.join(roro_operators_dir, "proportion_trick2.py")
    
    ensure_object_mode()
    with open(script_path2, encoding="utf-8") as _f:
        exec(compile(_f.read(), script_path2, "exec"))
    
    ensure_object_mode()
    
    # ── STEP 7: Reparenter les meshes de gg vers proportions ──
    gg_armature = bpy.data.objects.get('gg')
    proportions_obj = bpy.data.objects.get('proportions')
    
    if gg_armature and proportions_obj:
        for child in list(gg_armature.children):
            child.parent = proportions_obj
        print(f"[INFO] Meshes reparentés vers 'proportions'")
    
    # ── STEP 8: Mettre à jour les modificateurs Armature sur TOUS les meshes ──
    if proportions_obj:
        excluded_meshes = {'reference_male', 'reference_female'}
        for obj in bpy.data.objects:
            if obj.type == 'MESH' and obj.name not in excluded_meshes:
                for mod in obj.modifiers:
                    if mod.type == 'ARMATURE':
                        if mod.object is None or mod.object.name == 'gg':
                            mod.object = proportions_obj
                            print(f"  [INFO] Modificateur Armature de '{obj.name}' mis à jour vers 'proportions'")
    
    # ── STEP 9: Supprimer gg ──
    if gg_armature:
        bpy.data.objects.remove(gg_armature, do_unlink=True)
        print("[INFO] Armature 'gg' supprimée")
    
    # ── STEP 10: Restaurer la référence (cachée) ──
    if ref_obj:
        bpy.context.scene.collection.objects.link(ref_obj)
        # Maintenant qu'il est dans une collection, on peut le cacher
        try:
            ref_obj.hide_set(True)
            ref_obj.hide_viewport = True
        except Exception:
            pass
        print(f"[INFO] {keep_reference} restauré (caché)")
    
    ensure_object_mode()
    print("[OK] Proportion Trick terminé!")
    return True


# ============================================================
# SCENE OBJECTS — parcours collections (LODs Roro hors racine)
# ============================================================

_EXCLUDED_REFERENCE_MESHES = frozenset({'reference_male', 'reference_female'})


def iter_objects_in_scene(scene, obj_types, excluded_names=None):
    """
    Tous les objets d'un type donné liés à la scène, y compris sous-collections.
    bpy.context.scene.objects peut omettre des meshes en headless si Roro les met
    uniquement dans des collections enfants — d'où ce parcours récursif.
    """
    if excluded_names is None:
        excluded_names = frozenset()
    if isinstance(obj_types, str):
        want = {obj_types}
    else:
        want = set(obj_types)
    seen = set()

    def walk(col):
        for obj in col.objects:
            if obj.name in seen:
                continue
            if obj.type in want and obj.name not in excluded_names:
                seen.add(obj.name)
                yield obj
        for child in col.children:
            yield from walk(child)

    yield from walk(scene.collection)


def align_body_mesh_name_to_tenue(smd_path, tenue_name):
    """
    Renomme le mesh importé (nom = fichier SMD sans extension) vers --name
    pour que base + LODs + QC utilisent le même préfixe (ex. boutique_10.smd).
    """
    base = os.path.splitext(os.path.basename(smd_path))[0]
    obj = bpy.data.objects.get(base)
    if not obj or obj.type != 'MESH':
        return
    if obj.name == tenue_name:
        return
    if obj.name in _EXCLUDED_REFERENCE_MESHES:
        return
    old = obj.name
    obj.name = tenue_name
    print(f"[INFO] Mesh renommé « {old} » → « {tenue_name} » (alignement export / QC)")


def _collect_base_mesh_names(excluded_names=None):
    """Noms des meshes « base » (hors références), figés avant création des LODs."""
    if excluded_names is None:
        excluded_names = _EXCLUDED_REFERENCE_MESHES
    return [
        obj.name for obj in iter_objects_in_scene(bpy.context.scene, 'MESH', excluded_names)
    ]


def generate_lods_via_roro_tools(mesh_names, num_lods=3, ratios=None):
    """
    Active l'addon Roro_Tools et exécute roro.generate_lods comme dans l'UI
    (ratios / nombre de LODs / collections / apply Decimate).
    """
    if ratios is None:
        ratios = [0.85, 0.65, 0.45]
    ratios = ratios[:num_lods]

    print(f"[INFO] LODs via Roro Tools: {num_lods} niveaux, ratios {ratios}")

    try:
        bpy.ops.preferences.addon_enable(module="Roro_Tools")
    except Exception as e:
        print(f"[WARN] Addon Roro_Tools non activable: {e}")
        return False

    if not hasattr(bpy.ops, "roro") or not hasattr(bpy.ops.roro, "generate_lods"):
        print("[WARN] Opérateur bpy.ops.roro.generate_lods introuvable (addon incomplet ?)")
        return False

    wm = bpy.context.window_manager
    try:
        wm.roro_lod_count = num_lods
        for i in range(1, 6):
            val = ratios[i - 1] if i <= len(ratios) else getattr(wm, f"roro_lod_ratio_{i}", 1.0)
            setattr(wm, f"roro_lod_ratio_{i}", val)
        wm.roro_lod_create_collections = True
        wm.roro_lod_apply_modifier = True
    except Exception as e:
        print(f"[WARN] Propriétés WindowManager Roro LOD indisponibles: {e}")
        return False

    ensure_object_mode()
    bpy.ops.object.select_all(action='DESELECT')

    first_mesh = None
    for name in mesh_names:
        obj = bpy.data.objects.get(name)
        if obj and obj.type == 'MESH':
            obj.select_set(True)
            if first_mesh is None:
                first_mesh = obj

    if not first_mesh:
        print("[ERROR] Aucun mesh de base sélectionnable pour Roro LODs.")
        return False

    bpy.context.view_layer.objects.active = first_mesh

    try:
        result = bpy.ops.roro.generate_lods()
    except Exception as e:
        print(f"[WARN] roro.generate_lods: {e}")
        return False

    if result == {'FINISHED'}:
        print("[OK] LODs créés avec Roro Tools (roro.generate_lods).")
        return True
    print(f"[WARN] roro.generate_lods retour inattendu: {result}")
    return False


def generate_lods(num_lods=3, ratios=None, mesh_names=None):
    """
    Génère des LODs (repli si Roro Tools indisponible).
    Même logique que operators/generate_lods.py : copie mesh, Decimate, apply.
    Si mesh_names est fourni, seuls ces objets sont traités (meshes de base).
    """
    if ratios is None:
        ratios = [0.85, 0.65, 0.45]
    
    ratios = ratios[:num_lods]
    
    print(f"[INFO] Génération LODs (intégré): {num_lods} niveaux, ratios {ratios}")
    
    ensure_object_mode()
    
    excluded_names = {'reference_male', 'reference_female'}
    if mesh_names is not None:
        mesh_objects = []
        for n in mesh_names:
            o = bpy.data.objects.get(n)
            if o and o.type == 'MESH' and o.name not in excluded_names:
                mesh_objects.append(o)
    else:
        mesh_objects = list(
            iter_objects_in_scene(bpy.context.scene, 'MESH', excluded_names)
        )
    
    if not mesh_objects:
        print("[ERROR] Aucun mesh trouvé dans la scène.")
        return 0
    
    print(f"[INFO] {len(mesh_objects)} mesh(es) trouvé(s): {[m.name for m in mesh_objects]}")
    
    created_lods = 0
    
    for obj in mesh_objects:
        base_name = obj.name
        print(f"[INFO] Traitement LOD: {base_name}")
        
        for i, ratio in enumerate(ratios, start=1):
            # Copier l'objet + sa data mesh
            new_obj = obj.copy()
            new_obj.data = obj.data.copy()
            new_obj.animation_data_clear()
            
            # Supprimer les shape keys sur la copie
            if new_obj.data.shape_keys:
                new_obj.shape_key_clear()
            
            # Nom du nouveau mesh
            new_obj.name = f"{base_name}_{i}"
            
            # Créer une collection pour ce LOD
            collection_name = new_obj.name
            new_collection = bpy.data.collections.new(collection_name)
            bpy.context.scene.collection.children.link(new_collection)
            
            # Ajouter l'objet dans sa collection
            new_collection.objects.link(new_obj)
            
            # Ajouter un modificateur Decimate
            dec = new_obj.modifiers.new(name=f"LOD_{i}_Decimate", type='DECIMATE')
            dec.ratio = ratio
            
            # Appliquer le modificateur
            bpy.context.view_layer.objects.active = new_obj
            new_obj.select_set(True)
            try:
                bpy.ops.object.modifier_apply(modifier=dec.name)
            except Exception as e:
                print(f"  [WARN] Modifier apply failed: {e}")
            new_obj.select_set(False)
            
            created_lods += 1
            print(f"  [OK] LOD {i} créé: {new_obj.name} (ratio: {ratio})")
    
    print(f"[OK] {created_lods} LOD(s) créé(s)")
    return created_lods


# ============================================================
# LIST MATERIALS (for auto-discovery by the pipeline)
# ============================================================

def list_materials():
    """
    Liste tous les matériaux utilisés par les meshes.
    Affiche les noms pour que le pipeline puisse les récupérer.
    """
    materials_seen = set()
    excluded_names = {'reference_male', 'reference_female'}
    
    for obj in bpy.data.objects:
        if obj.type != 'MESH' or not obj.data.materials:
            continue
        if obj.name in excluded_names:
            continue
        for mat in obj.data.materials:
            if mat and mat.name not in materials_seen:
                materials_seen.add(mat.name)
    
    print(f"[MATERIALS] {','.join(sorted(materials_seen))}")
    return sorted(materials_seen)


# ============================================================
# SMD EXPORT
# ============================================================

def export_smds(output_dir, tenue_name):
    """
    Exporte les SMDs via Blender Source Tools.
    Exporte le mesh de base et chaque LOD séparément.
    """
    print(f"[INFO] Export des SMDs vers: {output_dir}")
    
    os.makedirs(output_dir, exist_ok=True)
    ensure_object_mode()
    
    # Activer l'addon Source Tools
    try:
        bpy.ops.preferences.addon_enable(module="io_scene_valvesource")
    except Exception:
        pass
    
    bpy.ops.object.select_all(action='DESELECT')
    
    exported = []
    
    # Lister tous les meshes (exclure reference_male/female), y compris sous-collections
    excluded_names = _EXCLUDED_REFERENCE_MESHES
    all_meshes_names = [
        o.name for o in iter_objects_in_scene(bpy.context.scene, 'MESH', excluded_names)
    ]
    all_meshes_names.sort()
    armatures = list(iter_objects_in_scene(bpy.context.scene, 'ARMATURE'))
    
    print(f"[INFO] Meshes à exporter: {all_meshes_names}")
    print(f"[INFO] Armatures: {[a.name for a in armatures]}")

    
    # Configurer le chemin d'export Source Tools
    scene = bpy.context.scene
    if hasattr(scene, 'vs'):
        scene.vs.export_path = output_dir
        scene.vs.export_format = 'SMD'
    
    # Armature principale
    main_armature = bpy.data.objects.get('proportions')
    if not main_armature:
        for a in armatures:
            if a.name not in excluded_names:
                main_armature = a
                break
    
    # Exporter chaque mesh
    for mesh_name in all_meshes_names:
        mesh_obj = bpy.data.objects.get(mesh_name)
        if not mesh_obj:
            print(f"  [ERROR] L'objet {mesh_name} n'existe plus dans bpy.data.objects. Impossible de l'exporter.")
            continue
            
        smd_filename = f"{mesh_name}.smd"
        smd_path = os.path.join(output_dir, smd_filename)
        
        print(f"[INFO] Export de: {mesh_name}")
        
        bpy.ops.object.select_all(action='DESELECT')
        mesh_obj.select_set(True)
        
        if mesh_obj.parent and mesh_obj.parent.type == 'ARMATURE':
            mesh_obj.parent.select_set(True)
            bpy.context.view_layer.objects.active = mesh_obj.parent
        elif main_armature:
            main_armature.select_set(True)
            bpy.context.view_layer.objects.active = main_armature
        else:
            bpy.context.view_layer.objects.active = mesh_obj
        
        try:
            export_smd_manual(mesh_obj, smd_path, armatures)
            exported.append(smd_path)
            print(f"  [OK] Export manuel réussi: {smd_filename}")
        except Exception as e:
            print(f"  [ERROR] Export manuel échoué pour {smd_filename}: {e}")
    
    print(f"[OK] {len(exported)} fichier(s) SMD exporté(s)")
    
    verify_and_fix_exports(output_dir, tenue_name, all_meshes_names)
    
    return exported


def _find_layer_collection(layer_collection, target_collection):
    """Trouve le LayerCollection correspondant à une Collection (récursif)."""
    if layer_collection.collection == target_collection:
        return layer_collection
    for child in layer_collection.children:
        found = _find_layer_collection(child, target_collection)
        if found is not None:
            return found
    return None


def _layer_collection_chain_to(root_lc, target_collection):
    """
    Chaîne de LayerCollection de la racine jusqu'à target_collection (inclus).
    Pas d'API .parent sur LayerCollection en Blender 4.x — parcours explicite.
    """
    if root_lc.collection == target_collection:
        return [root_lc]
    for child in root_lc.children:
        sub = _layer_collection_chain_to(child, target_collection)
        if sub is not None:
            return [root_lc] + sub
    return None


def ensure_armature_visible_for_export(arm_obj):
    """Démasque l'armature et dé-exclut ses collections du view layer actif."""
    arm_obj.hide_set(False)
    if hasattr(arm_obj, "hide_viewport"):
        arm_obj.hide_viewport = False
    vl = bpy.context.view_layer
    for col in arm_obj.users_collection:
        chain = _layer_collection_chain_to(vl.layer_collection, col)
        if chain:
            for lc in chain:
                lc.exclude = False


def export_armature_skeleton_smd(arm_obj, filepath):
    """
    SMD squelette seulement (nodes + skeleton + triangles vides).
    Utilise les données de POSE pour un export correct des positions/rotations.
    """
    from mathutils import Matrix, Vector
    
    os.makedirs(os.path.dirname(os.path.abspath(filepath)), exist_ok=True)
    
    # S'assurer que l'armature est en mode OBJECT
    ensure_object_mode()
    
    # Activer et sélectionner l'armature
    bpy.ops.object.select_all(action='DESELECT')
    arm_obj.select_set(True)
    bpy.context.view_layer.objects.active = arm_obj
    
    # Mettre à jour la scène pour avoir les matrices de pose à jour
    bpy.context.view_layer.update()
    
    bones = list(arm_obj.data.bones)
    pose_bones = arm_obj.pose.bones
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write("version 1\n")
        f.write("nodes\n")
        for i, bone in enumerate(bones):
            parent_idx = -1
            if bone.parent:
                parent_idx = bones.index(bone.parent)
            f.write(f'  {i} "{bone.name}" {parent_idx}\n')
        f.write("end\n")
        f.write("skeleton\n")
        f.write("time 0\n")
        
        for i, bone in enumerate(bones):
            pbone = pose_bones[bone.name]
            
            # Utiliser les matrices de pose pour calculer les positions locales
            if bone.parent:
                parent_pbone = pose_bones[bone.parent.name]
                # Matrice du bone dans l'espace du parent
                parent_mat_inv = parent_pbone.matrix.inverted()
                local_mat = parent_mat_inv @ pbone.matrix
            else:
                # Bone racine: matrice dans l'espace de l'armature
                local_mat = pbone.matrix
            
            loc = local_mat.translation
            rot = local_mat.to_euler('XYZ')
            
            f.write(
                f"  {i} {loc.x:.6f} {loc.y:.6f} {loc.z:.6f} "
                f"{rot.x:.6f} {rot.y:.6f} {rot.z:.6f}\n"
            )
        f.write("end\n")
        f.write("triangles\n")
        f.write("end\n")
    print(f"  [OK] Animation (manuel squelette): {os.path.basename(filepath)}")


def _roro_operators_dir():
    """
    Assets proportion trick bundlés avec le script (dossier roro_operators/).
    Même dossier que blender_script.py : portable (dist / exe PyInstaller).
    """
    return os.path.join(os.path.dirname(os.path.abspath(__file__)), "roro_operators")


def _flatten_nested_anims_folder(output_dir):
    """Si Source Tools a créé anims/anims/, remonte les .smd d'un niveau."""
    inner = os.path.join(output_dir, "anims", "anims")
    outer = os.path.join(output_dir, "anims")
    if not os.path.isdir(inner):
        return
    os.makedirs(outer, exist_ok=True)
    for fn in os.listdir(inner):
        if not fn.lower().endswith(".smd"):
            continue
        src = os.path.join(inner, fn)
        dst = os.path.join(outer, fn)
        try:
            if os.path.exists(dst):
                os.remove(dst)
            shutil.move(src, dst)
            print(f"[INFO] SMD remonté: anims/anims/{fn} → anims/{fn}")
        except OSError as e:
            print(f"[WARN] Impossible de déplacer {fn}: {e}")


def _remove_duplicate_reference_smds(anims_dir):
    """
    Source Tools peut écrire reference_male.001.smd en même temps que proportions.
    Si reference_male.smd existe (export manuel), supprime les *.00x.smd parasites.
    """
    if not os.path.isdir(anims_dir):
        return
    pat = re.compile(r"^(reference_(?:male|female))\.(\d+)\.smd$", re.IGNORECASE)
    for fn in os.listdir(anims_dir):
        m = pat.match(fn)
        if not m:
            continue
        base_fn = f"{m.group(1)}.smd"
        base_path = os.path.join(anims_dir, base_fn)
        dup_path = os.path.join(anims_dir, fn)
        if os.path.isfile(base_path) and os.path.isfile(dup_path):
            try:
                os.remove(dup_path)
                print(f"[INFO] Doublon supprimé (référence): {fn}")
            except OSError as e:
                print(f"[WARN] Suppression {fn}: {e}")


def export_animation_smds(output_dir, tenue_name, gender="MALE"):
    """
    Exporte proportions.smd et reference_*.smd **uniquement** à partir des armatures
    présentes dans la scène (résultat du proportion trick dans Blender).
    Aucune réimportation depuis proportion_trick.blend : pas de squelette « de secours ».
    """
    print("[INFO] Export des animations SMD (proportions / reference) depuis la scène...")
    
    os.makedirs(output_dir, exist_ok=True)
    anims_dir = os.path.join(output_dir, "anims")
    
    ensure_object_mode()
    arms_dbg = [o.name for o in bpy.data.objects if o.type == "ARMATURE"]
    print(f"[INFO] Armatures (bpy.data) pour export anims: {arms_dbg}")
    scene = bpy.context.scene
    
    # Nettoyer cibles Source Tools sur collections / objets
    for col in bpy.data.collections:
        if hasattr(col, "vs"):
            col.vs.export_format = "DEFAULT"
            col.vs.export_path = ""
    for obj in bpy.data.objects:
        if hasattr(obj, "vs"):
            obj.vs.export_format = "DEFAULT"
            obj.vs.export_path = ""
    
    # Dossier de sortie = racine tenue ; ST écrit dans <export_path>/anims/
    if hasattr(scene, "vs"):
        scene.vs.export_path = output_dir
        scene.vs.export_format = "SMD"
    
    # Références en premier (export manuel) : export_scene.smd(proportions) peut
    # quand même écrire des reference_*.00x.smd qu'on nettoiera ensuite.
    anim_target_names = ["reference_male", "reference_female", "proportions"]
    targets = []
    for name in anim_target_names:
        obj = bpy.data.objects.get(name)
        if obj and obj.type == "ARMATURE":
            targets.append(obj)
    
    if not targets:
        print(
            "[WARN] Aucune armature proportions / reference_* dans la scène — "
            "lance le proportion trick pour les générer, ou vérifie les noms d'objets."
        )
        return []
    
    for arm in targets:
        ensure_armature_visible_for_export(arm)
        
        os.makedirs(anims_dir, exist_ok=True)
        
        # Export manuel pour TOUTES les armatures (proportions ET reference_*)
        # Source Tools (export_scene.smd) ne fonctionne pas bien en headless
        arm_base = arm.name.split(".")[0]
        arm_path = os.path.join(anims_dir, f"{arm_base}.smd")
        
        print(f"[INFO] Export animation (manuel): {arm.name} -> {arm_base}.smd")
        try:
            export_armature_skeleton_smd(arm, arm_path)
        except Exception as e:
            print(f"[ERROR] Export armature {arm.name}: {e}")
    
    _flatten_nested_anims_folder(output_dir)
    _remove_duplicate_reference_smds(anims_dir)
    
    # Re-cacher les armatures reference après export pour éviter superposition visuelle
    for arm in targets:
        if arm.name.startswith("reference_"):
            arm.hide_set(True)
            if hasattr(arm, "hide_viewport"):
                arm.hide_viewport = True
    
    exported = []
    if os.path.isdir(anims_dir):
        for root, _dirs, files in os.walk(anims_dir):
            for fn in files:
                if fn.lower().endswith(".smd"):
                    full = os.path.join(root, fn)
                    exported.append(full)
                    print(f"  [OK] Animation: {os.path.relpath(full, output_dir)}")
    
    print(f"[OK] Animations (dossier): {anims_dir}")
    return exported


def export_smd_manual(mesh_obj, filepath, armatures):
    """
    Export SMD manuel si Source Tools ne fonctionne pas.
    Utilise un format SMD basique compatible Source Engine.
    
    NOTE: SMD format expects bone positions in LOCAL space (relative to parent).
    Vertices should match this coordinate space.
    """
    from mathutils import Matrix, Vector
    
    # Armatures à exclure (référence pour animations, pas pour meshes)
    excluded_armatures = {'reference_male', 'reference_female'}
    
    armature = None
    if mesh_obj.parent and mesh_obj.parent.type == 'ARMATURE':
        armature = mesh_obj.parent
    elif armatures:
        # Chercher d'abord 'proportions', puis la première armature non-référence
        for arm in armatures:
            if arm.name == 'proportions':
                armature = arm
                break
        if not armature:
            for arm in armatures:
                if arm.name not in excluded_armatures:
                    armature = arm
                    break
        if not armature and armatures:
            armature = armatures[0]
    
    # Debug: Print transform info
    print(f"[DEBUG SMD Export] Mesh: {mesh_obj.name}")
    print(f"  Mesh location: {mesh_obj.location}")
    print(f"  Mesh scale: {mesh_obj.scale}")
    if armature:
        print(f"[DEBUG SMD Export] Armature: {armature.name}")
        print(f"  Armature location: {armature.location}")
        print(f"  Armature scale: {armature.scale}")
    
    with open(filepath, 'w') as f:
        f.write("version 1\n")
        
        f.write("nodes\n")
        if armature and armature.data.bones:
            for i, bone in enumerate(armature.data.bones):
                parent_idx = -1
                if bone.parent:
                    parent_idx = list(armature.data.bones).index(bone.parent)
                f.write(f'  {i} "{bone.name}" {parent_idx}\n')
        else:
            f.write('  0 "root" -1\n')
        f.write("end\n")
        
        f.write("skeleton\n")
        f.write("time 0\n")
        if armature and armature.data.bones:
            for i, bone in enumerate(armature.data.bones):
                # SMD skeleton: bone positions are LOCAL to their parent
                # For root bones (no parent): position relative to armature origin
                # For child bones: position relative to parent bone
                if bone.parent:
                    # Child bone: position relative to parent
                    parent_mat_inv = bone.parent.matrix_local.inverted()
                    local_mat = parent_mat_inv @ bone.matrix_local
                    loc = local_mat.translation
                    rot = local_mat.to_euler()
                else:
                    # Root bone: use local position directly
                    loc = bone.head_local
                    rot = bone.matrix_local.to_euler()
                
                f.write(f"  {i} {loc.x:.6f} {loc.y:.6f} {loc.z:.6f} {rot.x:.6f} {rot.y:.6f} {rot.z:.6f}\n")
        else:
            f.write("  0 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000\n")
        f.write("end\n")
        
        f.write("triangles\n")
        
        depsgraph = bpy.context.evaluated_depsgraph_get()
        eval_obj = mesh_obj.evaluated_get(depsgraph)
        eval_mesh = eval_obj.to_mesh()
        eval_mesh.calc_loop_triangles()
        
        for tri in eval_mesh.loop_triangles:
            mat_name = "default"
            if eval_mesh.materials and tri.material_index < len(eval_mesh.materials):
                mat = eval_mesh.materials[tri.material_index]
                if mat:
                    mat_name = mat.name
            
            f.write(f"{mat_name}\n")
            
            for loop_idx in tri.loops:
                loop = eval_mesh.loops[loop_idx]
                vert = eval_mesh.vertices[loop.vertex_index]
                
                # Use LOCAL vertex position (no world transform)
                # This matches how bones are exported in local space
                pos = vert.co
                normal = loop.normal
                
                u, v = 0.0, 0.0
                if eval_mesh.uv_layers.active:
                    uv = eval_mesh.uv_layers.active.data[loop_idx].uv
                    u, v = uv[0], uv[1]
                
                bone_idx = 0
                num_weights = 1
                weight_str = f"{bone_idx} 1.000000"
                
                if armature and vert.groups:
                    groups = sorted(vert.groups, key=lambda g: g.weight, reverse=True)
                    valid_groups = []
                    for g in groups:
                        if g.weight > 0.001:
                            vg = mesh_obj.vertex_groups[g.group]
                            bone_names = [b.name for b in armature.data.bones]
                            if vg.name in bone_names:
                                b_idx = bone_names.index(vg.name)
                                valid_groups.append((b_idx, g.weight))
                    if valid_groups:
                        num_weights = len(valid_groups)
                        weight_str = " ".join(f"{bi} {w:.6f}" for bi, w in valid_groups)
                
                f.write(f"  {bone_idx}  {pos.x:.6f} {pos.y:.6f} {pos.z:.6f}  {normal.x:.6f} {normal.y:.6f} {normal.z:.6f}  {u:.6f} {v:.6f}  {num_weights} {weight_str}\n")
        
        f.write("end\n")
        eval_obj.to_mesh_clear()


def verify_and_fix_exports(output_dir, tenue_name, all_meshes_names):
    """Vérifie que les fichiers SMD ont bien été exportés."""
    expected_files = [f"{m}.smd" for m in all_meshes_names]
    existing_files = [f for f in os.listdir(output_dir) if f.endswith('.smd')]
    
    print(f"[INFO] Fichiers SMD attendus: {expected_files}")
    print(f"[INFO] Fichiers SMD trouvés dans {output_dir}: {existing_files}")
    
    for expected in expected_files:
        full_path = os.path.join(output_dir, expected)
        if not os.path.exists(full_path):
            print(f"  [WARN] Fichier manquant (pas exporté correctement par le script): {expected}")


# ============================================================
# MAIN
# ============================================================

def main():
    args = parse_args()
    
    smd_path = os.path.abspath(args.smd)
    tenue_name = args.name
    output_dir = os.path.abspath(args.output)
    gender = args.gender.upper()
    
    print("=" * 60)
    print("ATG Playermodel Pipeline — Blender Script")
    print("=" * 60)
    print(f"  SMD source   : {smd_path}")
    print(f"  Tenue        : {tenue_name}")
    print(f"  Output       : {output_dir}")
    print(f"  Gender       : {gender}")
    print(f"  DEBUG_EXPORT_STEPS: {DEBUG_EXPORT_STEPS}")
    print("=" * 60)
    
    # Copy source SMD for comparison if debug enabled
    if DEBUG_EXPORT_STEPS:
        # Debug folder goes in parent of output (work dir level)
        parent_dir = os.path.dirname(output_dir)
        debug_dir = os.path.join(parent_dir, "_debug_steps")
        os.makedirs(debug_dir, exist_ok=True)
        src_copy = os.path.join(debug_dir, f"00_SOURCE_ORIGINAL.smd")
        shutil.copy2(smd_path, src_copy)
        print(f"[DEBUG] Source SMD copied to: {src_copy}")
        print(f"[DEBUG] Debug folder: {debug_dir}")
    
    # 1. Nettoyer la scène
    clean_scene()
    
    # 2. Importer le SMD
    import_smd(smd_path)
    
    # DEBUG: Export right after import
    debug_export_step(output_dir, "01_post_import", tenue_name)
    
    # 3. Lister les matériaux (avant proportion trick ; même ordre que le flux manuel)
    list_materials()
    
    # 4. Nom du mesh aligné sur --name (avant LODs : noms base + LOD cohérents avec le QC)
    align_body_mesh_name_to_tenue(smd_path, tenue_name)
    
    # DEBUG: Export after rename
    debug_export_step(output_dir, "02_post_rename", tenue_name)
    
    # 5. LODs (désactivable — voir GENERATE_LODS)
    if GENERATE_LODS:
        base_mesh_names = _collect_base_mesh_names()
        lod_ratios = [0.85, 0.65, 0.45]
        try:
            roro_ok = generate_lods_via_roro_tools(
                base_mesh_names, num_lods=3, ratios=lod_ratios
            )
            if not roro_ok:
                print("[INFO] Repli: génération LODs intégrée (équivalent generate_lods.py)")
                generate_lods(num_lods=3, ratios=lod_ratios, mesh_names=base_mesh_names)
        except Exception as e:
            print(f"[ERROR] Génération LODs: {e}")
            import traceback
            traceback.print_exc()
        
        # DEBUG: Export after LODs
        debug_export_step(output_dir, "03_post_lods", tenue_name)
    else:
        print("[DEBUG] Génération LODs ignorée (GENERATE_LODS = False)")
    
    # 6. Proportion trick après les LODs (désactivable pour debug — voir RUN_PROPORTION_TRICK)
    if RUN_PROPORTION_TRICK:
        try:
            pt_ok = run_proportion_trick(gender=gender)
            if pt_ok:
                print("[OK] Proportion Trick réussi")
            else:
                print("[WARN] Proportion Trick n'a pas abouti, on continue sans")
        except Exception as e:
            print(f"[ERROR] Proportion Trick a planté: {e}")
            import traceback
            traceback.print_exc()
            ensure_object_mode()
        
        # DEBUG: Export after proportion trick
        debug_export_step(output_dir, "04_post_pt", tenue_name)
    else:
        print("[DEBUG] Proportion trick ignoré (RUN_PROPORTION_TRICK = False)")
    
    # 7. Exporter les SMDs (base + LODs)
    try:
        export_smds(output_dir, tenue_name)
    except Exception as e:
        print(f"[ERROR] Export SMDs: {e}")
        import traceback
        traceback.print_exc()
    
    # 8. Animations (proportions.smd, reference_*.smd) : seulement si le PT a tourné
    if RUN_PROPORTION_TRICK:
        try:
            export_animation_smds(output_dir, tenue_name, gender=gender)
        except Exception as e:
            print(f"[ERROR] Export animations: {e}")
            import traceback
            traceback.print_exc()
    else:
        print(
            "[INFO] Export anims (proportions / reference) ignoré : "
            "activer RUN_PROPORTION_TRICK pour produire ces SMD depuis Blender."
        )
    
    print("=" * 60)
    print("[DONE] Pipeline Blender terminé avec succès!")
    print("=" * 60)


if __name__ == "__main__":
    main()
