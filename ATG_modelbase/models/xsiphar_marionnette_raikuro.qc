// Created by Crowbar 0.67

$modelname "xsiphar_marionnette_raikuro.mdl"

$bodygroup "xsiphar_marionnette_raikuro"
{
	studio "xsiphar_marionnette_raikuro.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 6.133 -0.05 29.713

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -7.339 -4.212 1.107 7.44 16.478 58.318

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"xsiphar_marionnette_raikuro_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "xsiphar_marionnette_raikuro_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
