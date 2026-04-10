// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Gyuki.mdl"

$bodygroup "props33"
{
	studio "props33.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "TailCenterBone02" "" -0.394205 5.82481 4.897142 -49.919291 67.680809 41.843453 0 0 0 0 0 0
$definebone "TailCenterBone03" "TailCenterBone02" 0.175227 0 0 72.666096 117.056451 -152.379758 0 0 0 0 0 0
$definebone "TailRight01Bone02" "" -2.353879 4.773766 4.049822 -33.025501 130.92011 107.893944 0 0 0 0 0 0
$definebone "TailRight01Bone03" "TailRight01Bone02" 0.157578 0 0 -45.67591 -82.170509 32.622216 0 0 0 0 0 0
$definebone "TailRight02Bone02" "" -3.646707 4.952465 2.076483 17.17802 104.622324 74.728478 0 0 0 0 0 0
$definebone "TailRight02Bone03" "TailRight02Bone02" 0.143157 0 0 -50.862957 -90.709133 91.410723 0 0 0 0 0 0
$definebone "TailRight03Bone02" "" 0.712005 5.320076 -2.235792 42.437762 86.850636 -176.840373 0 0 0 0 0 0
$definebone "TailRight03Bone03" "TailRight03Bone02" 0.079357 -0.009362 -0.002048 34.327107 -46.482743 -149.103958 0 0 0 0 0 0
$definebone "TailRight04Bone02" "" -2.44974 4.687995 0.030468 48.997561 125.494877 112.340786 0 0 0 0 0 0
$definebone "TailRight04Bone03" "TailRight04Bone02" 0.148747 0 0 -2.678232 87.354691 -1.614192 0 0 0 0 0 0
$definebone "TailLeft02Bone02" "" 2.730094 4.024187 -0.398722 31.739285 36.987981 123.908019 0 0 0 0 0 0
$definebone "TailLeft02Bone03" "TailLeft02Bone02" 0.154215 0 0 71.973105 -150.758408 172.055662 0 0 0 0 0 0
$definebone "TailLeft03Bone02" "" 2.493051 3.835654 4.319671 -29.843139 48.084511 60.169739 0 0 0 0 0 0
$definebone "TailLeft03Bone03" "TailLeft03Bone02" 0.168801 0 0 64.0585 113.050047 157.410111 0 0 0 0 0 0
$definebone "TailLeft04Bone02" "" 3.141508 4.761275 2.20472 7.853533 44.491661 62.723178 0 0 0 0 0 0
$definebone "TailLeft04Bone03" "TailLeft04Bone02" 0.131226 0 0 41.732753 68.354395 76.357622 0 0 0 0 0 0

$jigglebone "TailCenterBone02"
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
$jigglebone "TailCenterBone03"
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
$jigglebone "TailRight01Bone02"
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
$jigglebone "TailRight01Bone03"
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
$jigglebone "TailRight02Bone02"
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
$jigglebone "TailRight02Bone03"
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
$jigglebone "TailRight03Bone02"
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
$jigglebone "TailRight03Bone03"
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
$jigglebone "TailRight04Bone02"
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
$jigglebone "TailRight04Bone03"
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
$jigglebone "TailLeft02Bone02"
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
$jigglebone "TailLeft02Bone03"
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
$jigglebone "TailLeft03Bone02"
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
$jigglebone "TailLeft03Bone03"
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
$jigglebone "TailLeft04Bone02"
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
$jigglebone "TailLeft04Bone03"
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
	"tail_gyuki_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_gyuki_physics.smd"
{
	$mass 94.66199
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
