// Created by Crowbar 0.67

$modelname "loeve/chest_kg_loeve.mdl"

$bodygroup "studio"
{
	studio "chest_kg_loeve.smd"
}


$surfaceprop "crowbar"

$contents "solid"

$illumposition 0 0.016 39.309

$cdmaterials "models\loeve\chest_kg_loeve\"

$cbox 0 0 0 0 0 0

$bbox -9.961 -12.145 -8.155 10.022 8.893 8.024

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"chest_kg_loeve_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
