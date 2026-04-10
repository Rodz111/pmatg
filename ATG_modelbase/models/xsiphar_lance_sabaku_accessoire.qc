// Created by Crowbar 0.67

$modelname "xsiphar_lance_sabaku_accessoire.mdl"

$bodygroup "xsiphar_lance_sabaku_accessoire"
{
	studio "xsiphar_lance_sabaku_accessoire.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -0.357 2.152 20.823

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -11.159 -5.137 -23.684 6.854 4.424 65.33

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"xsiphar_lance_sabaku_accessoire_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "xsiphar_lance_sabaku_accessoire_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
