// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Kurama.mdl"

$bodygroup "props36"
{
	studio "props36.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Tail_Hips" "" 0 0 0 -89.999811 -179.999882 0 0 0 0 0 0 0
$definebone "TailCenterBone01" "Tail_Hips" 0.128058 -0.116317 0 -89.99975 -161.324287 0 0 0 0 0 0 0
$definebone "TailCenterBone02" "TailCenterBone01" 0.000001 0.250924 0.019937 0 0 21.644741 0 0 0 0 0 0
$definebone "TailRight01Bone01" "Tail_Hips" 0.128058 -0.116317 0 -43.555505 -56.377782 -95.934344 0 0 0 0 0 0
$definebone "TailRight01Bone02" "TailRight01Bone01" 0 0.245606 0.018999 -0.000002 0 10.000007 0 0 0 0 0 0
$definebone "TailRight02Bone01" "Tail_Hips" 0.128058 -0.116317 0 -5.713707 -126.562545 -93.757037 0 0 0 0 0 0
$definebone "TailRight02Bone02" "TailRight02Bone01" 0 0.247606 0.019351 0.000005 0 10.000005 0 0 0 0 0 0
$definebone "TailRight03Bone01" "Tail_Hips" 0.128058 -0.116317 0 -62.291373 -113.436342 -119.7292 0 0 0 0 0 0
$definebone "TailRight03Bone02" "TailRight03Bone01" 0 0.248893 0.019578 -0.000002 0 10.000007 0 0 0 0 0 0
$definebone "TailRight04Bone01" "Tail_Hips" 0.128058 -0.116317 0 -39.575779 -134.387578 -102.42174 0 0 0 0 0 0
$definebone "TailRight04Bone02" "TailRight04Bone01" 0 0.257325 0.021065 -0.000002 0.000002 10.000009 0 0 0 0 0 0
$definebone "TailLeft01Bone01" "Tail_Hips" 0.128058 -0.116317 0 -71.659599 99.328251 41.054662 0 0 0 0 0 0
$definebone "TailLeft01Bone02" "TailLeft01Bone01" 0 0.251726 0.020078 0.000001 -0.000001 10.000001 0 0 0 0 0 0
$definebone "TailLeft02Bone01" "Tail_Hips" 0.128058 -0.116317 0 -43.042882 61.016798 67.840553 0 0 0 0 0 0
$definebone "TailLeft02Bone02" "TailLeft02Bone01" 0 0.246814 0.019212 0.000003 -0.000002 10.000003 0 0 0 0 0 0
$definebone "TailLeft03Bone01" "Tail_Hips" 0.128058 -0.116317 0 -41.570433 105.557964 108.486695 0 0 0 0 0 0
$definebone "TailLeft03Bone02" "TailLeft03Bone01" 0 0.250459 0.019855 -0.000002 -0.000005 10.000001 0 0 0 0 0 0
$definebone "TailLeft04Bone01" "Tail_Hips" 0.128058 -0.116317 0 -5.165443 60.02638 89.2525 0 0 0 0 0 0
$definebone "TailLeft04Bone02" "TailLeft04Bone01" 0 0.250252 0.019818 0 0.000057 10.000004 0 0 0 0 0 0

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
	"tail_kurama_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_kurama_physics.smd"
{
	$mass 130.3331
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
