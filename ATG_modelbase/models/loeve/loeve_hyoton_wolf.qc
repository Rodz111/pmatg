// Created by Crowbar 0.67

$modelname "loeve/loeve_hyoton_wolf.mdl"

$bodygroup "loeve"
{
	studio "loeve_p_komyoton.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.006 -10.478 36.636

$cdmaterials "models\loeve\loeve_p_komyoton\"

$cbox 0 0 0 0 0 0

$bbox -25.96 -135.421 -14.026 42.71 106.152 107.888

$definebone "Bip01 Pelvis" "" -4.863271 20.218924 -12.29001 -1.427582 -90.010699 -89.129713 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 17.707912 -0.067062 -0.000024 0.000057 -10.864771 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 21.915325 -0.023215 -0.000001 0 1.650058 0 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine1" 51.239189 -5.370359 3.813215 1.094407 12.318309 0.761461 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck" -5.901897 6.384018 -4.011846 -0.508213 32.774284 -1.232662 0 0 0 0 0 0
$definebone "Bone009" "Bip01 Head" 13.617805 7.648565 0.000003 0 10.276756 -179.999841 0 0 0 0 0 0
$definebone "Bone007" "Bip01 Head" 14.8349 5.176807 -0.000001 0.000058 -17.144323 -179.999841 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" -3.186302 12.537458 6.700984 -52.533475 6.294696 156.569546 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" -8.592655 3.028102 -19.844149 35.895298 -105.935148 -120.442381 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 28.380306 -0.000019 -0.000019 0.000055 -17.029052 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 18.572569 0.000019 0.000002 -5.744594 -35.533694 -5.533683 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 14.085121 -2.483265 0.127249 -5.755763 -63.288977 4.670642 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" -3.086037 12.629176 -6.574687 49.498395 5.715376 -156.581568 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" -2.442284 5.764437 24.211868 -37.227984 -105.313881 121.604101 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 28.38031 -0.000023 -0.000008 0.000007 -17.029069 0 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 18.572556 0.000011 0.000004 5.744537 -35.533769 5.533681 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 14.085152 -2.483267 -0.127253 5.755703 -63.288956 -4.670701 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Spine" -17.403149 -3.271953 7.067833 -13.316089 114.795454 159.68246 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 26.585072 0.00005 0.000002 0.000052 -57.712728 0.000003 0 0 0 0 0 0
$definebone "Bip01 L HorseLink" "Bip01 L Calf" 28.735073 -0.000048 0.000026 -0.000003 63.651264 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L HorseLink" 15.019176 0.000011 -0.000046 -17.051516 2.976004 0.48363 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 6.929333 8.918407 0.000559 0.00001 89.999982 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Spine" -17.403145 -3.271923 -7.067852 13.3158 114.795399 -159.682569 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 26.585075 0.000059 -0.000013 0.000008 -57.712667 -0.000065 0 0 0 0 0 0
$definebone "Bip01 R HorseLink" "Bip01 R Calf" 28.735126 0.000002 0.00001 -0.000049 63.651216 0.000007 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R HorseLink" 15.0191 0.000015 0.000051 17.051453 2.976009 -0.483624 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" 6.929344 8.9184 -0.000549 -0.00001 90.00003 0.000057 0 0 0 0 0 0
$definebone "Bone001" "Bip01 Pelvis" -12.419382 -1.791046 0.000019 -0.000091 172.184739 -179.999882 0 0 0 0 0 0
$definebone "Bone002" "Bone001" 15.348114 -0.00005 0.000004 0 17.470575 0 0 0 0 0 0 0
$definebone "Bone003" "Bone002" 17.915928 -0.000021 -0.000004 0 28.994252 0 0 0 0 0 0 0
$definebone "Bone004" "Bone003" 21.789101 0.000057 0.000003 0 10.518881 0 0 0 0 0 0 0
$definebone "Bone005" "Bone004" 16.805061 -0.000072 0.000002 0 -37.726628 0 0 0 0 0 0 0


$sequence "run" {
	"loeve_hyoton_wolf_anims\run.smd"
	autoplay
	fadein 0.2
	fadeout 0.2
	snap
	fps 35
}
