// Created by Crowbar 0.67

$modelname "solve_nr\waize\WitchHat.mdl"

$bodygroup "props50"
{
	studio "props50.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "obi01" "" 1.943981 -4.091652 4.192162 8.612014 -6.548564 -13.772015 0 0 0 0 0 0
$definebone "hat01" "" 4.001709 -4.125156 12.709343 12.218268 -9.947751 86.3295 0 0 0 0 0 0
$definebone "hat02" "hat01" 0.688965 -0.066358 -2.474232 -0.000001 -0.000003 0 0 0 0 0 0 0
$definebone "hat03" "hat02" 3.221724 -0.611298 -3.477271 -23.777866 21.452921 54.415519 0 0 0 0 0 0

$jigglebone "obi01"
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
$jigglebone "hat01"
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
$jigglebone "hat02"
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
$jigglebone "hat03"
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
	"witchhat_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "witchhat_physics.smd"
{
	$mass 65.93889
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
