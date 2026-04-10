// Created by Crowbar 0.67

$modelname "loeve/chest_vetement1_loeve.mdl"

$bodygroup "chest"
{
	studio "chest_vetement1_loeve.smd"
}


$surfaceprop "TYPE"

$contents "solid"

$illumposition 0 -0.025 1.278

$cdmaterials "models\loeve\chest_vetement1_loeve\"

$cbox 0 0 0 0 0 0

$bbox 0 -327.694 0 43.767 0 179.656

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"chest_vetement1_loeve_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
