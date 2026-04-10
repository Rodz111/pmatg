// Created by Crowbar 0.67

$modelname "solve_nr\waize\SevenHeaven_Blue.mdl"

$bodygroup "props29"
{
	studio "props29.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "sh_01" "" -0.898551 2.103074 2.98283 71.866363 92.36891 -177.507464 0 0 0 0 0 0
$definebone "sh_02" "sh_01" -2.855053 2.066694 -1.960179 36.235048 -179.649944 0.082621 0 0 0 0 0 0

$jigglebone "sh_01"
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
$jigglebone "sh_02"
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
	"sevenheaven_blue_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "sevenheaven_blue_physics.smd"
{
	$mass 93.6764
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
