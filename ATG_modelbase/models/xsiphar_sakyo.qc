// Created by Crowbar 0.67

$modelname "xsiphar_sakyo.mdl"

$bodygroup "Body"
{
	studio "xsiphar_sakyo.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -0.398 2.918 34.004

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -17.568 -31.048 -3.855 11.731 30.251 71.864

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0.700016 39.002666 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.865782 -2.340485 0.411207 1.44414 -78.833265 -89.729944 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.294641 -0.000074 -0.000001 1.012874 -0.384512 -0.282468 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 15.50185 0.000109 0.000003 0.984628 -57.434036 0.503973 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.696961 0.509678 -0.06473 -0.199733 -31.820188 -0.060045 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.865783 -2.340485 0.619503 1.186653 -101.166651 -90.220802 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.292843 -0.000134 0 -1.019121 1.447406 0.282296 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 15.515227 -0.000004 0 -1.114232 -57.426018 -0.122038 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.891678 0.200082 0.049579 0.372194 -31.858693 -3.502431 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000006 0.811771 0.01827 4.944282 89.999695 89.999927 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.382977 0.270678 -0.000023 0.000057 -1.674756 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 4.875378 0.550924 -0.000021 -0.002521 5.748429 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.605644 0.153776 -0.000268 0.002979 11.121054 0.000516 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 6.144306 -1.276531 0.000029 -0.001146 21.370181 179.999745 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.157158 1.670422 0.000052 0.000573 17.346988 -0.000229 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 4.149582 -0.893758 2.233771 -63.945324 170.169765 89.633665 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.269064 1.363995 0.314384 -0.498645 -19.594296 -89.681531 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.514572 0.000012 0.000004 -2.00409 0.079469 -0.010601 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 10.696766 -0.000019 0 -6.115177 7.729199 90.152213 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.788956 -0.204575 0.538513 -3.589581 -6.899046 2.34546 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.474575 0 0 0.127884 1.839765 -1.889959 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.459337 0.000008 0 0.176242 -12.39806 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.737007 -0.254105 1.43179 -6.518426 -8.452334 16.416732 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.364073 0 0 1.070113 3.345098 -2.965116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.287409 -0.000008 0 0.148566 -13.998621 -0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.348885 -0.618298 1.163938 -38.111141 -24.625441 -88.524675 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.508703 0.000007 -0.000004 1.251228 13.19843 -8.68421 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.382973 -0.000003 0.000004 0.645439 20.79086 0.000914 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.628597 -0.330776 -1.209755 1.981804 -8.240969 -26.338756 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.338964 0 -0.000002 -0.884246 1.905196 0.54059 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 1.134848 -0.000004 0.000002 0.285278 -13.995526 -0.000285 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.798388 -0.247852 -0.343109 1.390569 -7.249752 -10.823288 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.449331 0.000004 0 -0.19045 1.191178 0.667671 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.366922 0.000008 0 0.42147 -24.684288 0.000061 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 4.152393 -0.878327 -2.233732 64.042511 169.573148 -90.208398 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.272776 1.357136 -0.325332 -0.170855 -19.689006 90.112912 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.514423 -0.000014 0.000004 2.003634 -0.892382 -0.022174 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.697626 -0.000069 0 6.095127 7.462605 -89.591291 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.947393 -0.202957 -0.439935 2.304322 -8.398589 -2.395193 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.374388 -0.000008 0 -0.218754 3.872106 1.81026 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.412012 -0.000004 0 -0.255538 -12.395765 -0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.844425 -0.294479 -1.249827 9.769044 -7.125472 -15.772669 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.429193 0 -0.000001 -0.293527 0.976833 2.674279 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.263599 -0.000008 0.000001 -0.240874 -13.998447 0.000055 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.298382 -0.612133 -1.068737 36.669189 -25.241599 104.550081 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.431679 0.000002 -0.000004 2.174431 11.448327 12.770307 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.391472 -0.000008 -0.000002 -0.551355 20.791721 -0.000352 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.533438 -0.369278 1.267602 -5.22698 -5.702018 26.02856 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.358818 0.000004 0 0.350189 0.745072 -1.024327 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 1.135374 0 -0.000002 -0.351395 -13.996611 0.000178 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 4.027506 -0.311592 0.465472 -1.61872 -5.897741 10.411962 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.344801 -0.000008 0 0.12691 0.694253 -0.415908 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.290916 -0.000004 0 -0.553534 -24.682734 0.000289 0 0 0 0 0 0
$definebone "bande1" "ValveBiped.Bip01_Pelvis" -3.087924 -0.132816 6.236506 -0.234282 168.838178 -1.186195 0 0 0 0 0 0
$definebone "bande2" "bande1" -1.019226 5.164394 0.896286 0 0.000228 0 0 0 0 0 0 0
$definebone "bande4" "bande2" -0.437088 6.251694 0.682739 -0.000057 0.000056 0 0 0 0 0 0 0
$definebone "bande3" "bande2" 2.003654 6.441822 0.67669 -0.000115 -0.000287 0 0 0 0 0 0 0
$definebone "bande5" "bande2" -2.759706 5.895924 0.684873 0 -0.000115 0 0 0 0 0 0 0
$definebone "bande6" "ValveBiped.Bip01_Pelvis" 4.293643 -2.340477 -7.739811 0.284588 -168.840692 -1.443796 0 0 0 0 0 0
$definebone "bande7" "ValveBiped.Bip01_Pelvis" 5.106016 -12.521149 -10.762905 0.284703 -168.840869 -1.443911 0 0 0 0 0 0
$definebone "bande8" "ValveBiped.Bip01_Pelvis" 7.23351 -27.055805 -15.091391 0.284474 -168.840746 -1.444713 0 0 0 0 0 0
$definebone "bourse1" "ValveBiped.Bip01_Pelvis" 2.698378 2.056778 5.805501 -0.000057 0 1.664786 0 0 0 0 0 0
$definebone "bourse2" "ValveBiped.Bip01_Pelvis" 4.475622 2.056778 5.421438 -0.000057 0 1.664786 0 0 0 0 0 0
$definebone "bourse3" "ValveBiped.Bip01_Pelvis" 6.040867 2.056778 4.168041 -0.000057 0 1.664958 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_L_Thigh"
$bonemerge "ValveBiped.Bip01_L_Calf"
$bonemerge "ValveBiped.Bip01_L_Foot"
$bonemerge "ValveBiped.Bip01_L_Toe0"
$bonemerge "ValveBiped.Bip01_R_Thigh"
$bonemerge "ValveBiped.Bip01_R_Calf"
$bonemerge "ValveBiped.Bip01_R_Foot"
$bonemerge "ValveBiped.Bip01_R_Toe0"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_Neck1"
$bonemerge "ValveBiped.Bip01_Head1"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"

$jigglebone "bande1"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande2"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande4"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande3"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande5"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande6"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande7"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bande8"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bourse1"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bourse2"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}
$jigglebone "bourse3"
{
	is_flexible
	{
		length 24
		tip_mass 3
		pitch_stiffness 60
		pitch_damping 6
		yaw_stiffness 60
		yaw_damping 6
		allow_length_flex
		along_stiffness 90
		along_damping 2
		pitch_constraint -10 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 25
	}
}

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1
$ikautoplaylock "rhand" 0 0
$ikautoplaylock "lhand" 0 0

$animation "a_proportions_corrective_animation" "xsiphar_sakyo_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions" "xsiphar_sakyo_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "reference" {
	"xsiphar_sakyo_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
}

$sequence "ragdoll" {
	"xsiphar_sakyo_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$includemodel "m_anm.mdl"

$collisionjoints "xsiphar_sakyo_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "ValveBiped.Bip01_Pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 0

	$jointconstrain "ValveBiped.Bip01_Spine4" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine4" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine4" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -37 37 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 59 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 0
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.300000"
		"animfrictiontimehold"		"0.000000"
	}
	editparams 
	{
		"rootname"		"valvebiped.bip01_pelvis"
		"totalmass"		"90.000000"
		"jointmerge"		"valvebiped.bip01_pelvis,valvebiped.bip01"
		"jointmerge"		"valvebiped.bip01_pelvis,valvebiped.bip01_spine1"
		"jointmerge"		"valvebiped.bip01_pelvis,ValveBiped.Bip01_Head1"
	}
}
