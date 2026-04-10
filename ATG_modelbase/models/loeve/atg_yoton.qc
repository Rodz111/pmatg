// Created by Crowbar 0.67

$modelname "loeve/atg_yoton.mdl"

$bodygroup "studio"
{
	studio "atg_yoton.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "models\loeve\poingyoton\"

$cbox 0 0 0 0 0 0

$bbox -5.85 -1.557 -7.821 5.777 2.54 36.002

$hboxset "default"

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "poingyoton" {
	"atg_yoton_anims\poingyoton.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionmodel "atg_yoton_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "2"

}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.000000"
		"animfrictiontimehold"		"0.300000"
	}
	editparams 
	{
		"rootname"		"2"
		"totalmass"		"100.000000"
	}
}
