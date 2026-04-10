// Created by Crowbar 0.67

$modelname "solve_nr\waize\Halloween_Ghost.mdl"

$bodygroup "props07"
{
	studio "props07.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"halloween_ghost_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "halloween_ghost_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
