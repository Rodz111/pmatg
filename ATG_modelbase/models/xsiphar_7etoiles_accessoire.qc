// Created by Crowbar 0.67

$modelname "xsiphar_7etoiles_accessoire.mdl"

$bodygroup "xsiphar_7etoiles_accessoire"
{
	studio "xsiphar_7etoiles_accessoire.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -12.062 0 0

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -1.371 -48.72 -9.934 1.371 24.596 9.934

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"xsiphar_7etoiles_accessoire_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "xsiphar_7etoiles_accessoire_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
