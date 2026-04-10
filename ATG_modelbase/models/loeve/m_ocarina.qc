// Created by Crowbar 0.67

$modelname "loeve/m_ocarina.mdl"

$bodygroup "studio"
{
	studio "m_ocarina.smd"
}


$surfaceprop "crowbar"

$contents "solid"

$illumposition 0 0.016 39.309

$cdmaterials "models\loeve\m_ocarina\"

$cbox 0 0 0 0 0 0

$bbox -9.961 -12.145 -8.155 10.022 8.893 8.024

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"m_ocarina_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
