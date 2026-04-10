// Created by Crowbar 0.67

$modelname "loeve/loeve_hiramekarei_dos.mdl"

$staticprop

$bodygroup "loeve"
{
	studio "loeve_hiramekarei_dos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -0.003 -15.059 -0.051

$cdmaterials "models\loeve\loeve_hiramekarei\"

$cbox 0 0 0 0 0 0

$bbox -10.412 -1.468 -3.526 40.554 1.463 3.423

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"loeve_hiramekarei_dos_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "loeve_hiramekarei_dos_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
