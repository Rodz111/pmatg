// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Kurama02.mdl"

$bodygroup "props37"
{
	studio "props37.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "TailCenterBone01" "" -0.000002 2.95928 3.257967 -0.000172 0.000172 21.103526 0 0 0 0 0 0
$definebone "TailCenterBone02" "TailCenterBone01" 0.000001 0.250924 0.019937 0 0 21.644741 0 0 0 0 0 0
$definebone "TailRight01Bone01" "" -0.000002 2.95928 3.257967 -23.658114 41.211709 18.68255 0 0 0 0 0 0
$definebone "TailRight01Bone02" "TailRight01Bone01" 0 0.245606 0.018999 0 -0.000002 10.000004 0 0 0 0 0 0
$definebone "TailRight02Bone01" "" -0.000002 2.95928 3.257967 36.351821 82.899488 -7.97987 0 0 0 0 0 0
$definebone "TailRight02Bone02" "TailRight02Bone01" 0 0.247606 0.019351 -0.000001 -0.000001 10.000005 0 0 0 0 0 0
$definebone "TailRight03Bone01" "" -0.000002 2.95928 3.257967 10.657473 25.72844 -50.7251 0 0 0 0 0 0
$definebone "TailRight03Bone02" "TailRight03Bone01" 0 0.248893 0.019578 0.000002 -0.000002 10.000003 0 0 0 0 0 0
$definebone "TailRight04Bone01" "" -0.000002 2.95928 3.257967 32.627254 40.845993 -44.370425 0 0 0 0 0 0
$definebone "TailRight04Bone02" "TailRight04Bone01" 0 0.257325 0.021065 0.000001 0.000002 10.000004 0 0 0 0 0 0
$definebone "TailLeft01Bone01" "" -0.000002 2.95928 3.257967 2.923575 -18.11366 -40.083443 0 0 0 0 0 0
$definebone "TailLeft01Bone02" "TailLeft01Bone01" 0 0.251726 0.020078 0 0 10.000006 0 0 0 0 0 0
$definebone "TailLeft02Bone01" "" -0.000002 2.95928 3.257967 -20.740327 -43.126532 -42.870195 0 0 0 0 0 0
$definebone "TailLeft02Bone02" "TailLeft02Bone01" 0 0.246814 0.019212 -0.000002 0.000002 10.000006 0 0 0 0 0 0
$definebone "TailLeft03Bone01" "" -0.000002 2.95928 3.257967 11.575523 -47.365562 28.953278 0 0 0 0 0 0
$definebone "TailLeft03Bone02" "TailLeft03Bone01" 0 0.250459 0.019855 0.000001 -0.000002 10.000001 0 0 0 0 0 0
$definebone "TailLeft04Bone01" "" -0.000002 2.95928 3.257967 -29.839642 -84.042192 -3.720043 0 0 0 0 0 0
$definebone "TailLeft04Bone02" "TailLeft04Bone01" 0 0.250252 0.019818 0.000003 0 10.000005 0 0 0 0 0 0

$jigglebone "TailCenterBone01"
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
$jigglebone "TailRight01Bone01"
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
$jigglebone "TailRight02Bone01"
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
$jigglebone "TailRight03Bone01"
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
$jigglebone "TailRight04Bone01"
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
$jigglebone "TailLeft01Bone01"
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
$jigglebone "TailLeft01Bone02"
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
$jigglebone "TailLeft03Bone01"
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
$jigglebone "TailLeft04Bone01"
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

$sequence "idle" {
	"tail_kurama02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_kurama02_physics.smd"
{
	$mass 89.11763
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
