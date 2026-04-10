// Created by Crowbar 0.67

$modelname "loeve/loeve_crystal.mdl"

$staticprop

$bodygroup "Body"
{
	studio "loeve_crystal.smd"
}


$surfaceprop "Glass"

$contents "solid"

$illumposition 4.542 5.262 14.59

$cdmaterials "models\loeve\loeve_crystal\"

$cbox 0 0 0 0 0 0

$bbox -86.419 -72.417 -166.899 75.895 81.502 195.996

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"loeve_crystal_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "loeve_crystal_physics.smd"
{
	$mass 90
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
