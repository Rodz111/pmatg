// Created by Crowbar 0.67

$modelname "solve_nr\waize\School_GymUniformPouch.mdl"

$bodygroup "props28"
{
	studio "props28.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "joint01" "" -2.10325 4.653865 8.567488 6.083322 0 0 0 0 0 0 0 0

$jigglebone "joint01"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 15
	}
}

$sequence "idle" {
	"school_gymuniformpouch_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "school_gymuniformpouch_physics.smd"
{
	$mass 70.48663
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
