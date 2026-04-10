// Created by Crowbar 0.67

$modelname "solve_nr\waize\Mask_Wild.mdl"

$bodygroup "props20"
{
	studio "props20.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mask_wild_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "mask_wild_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
