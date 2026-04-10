// Created by Crowbar 0.67

$modelname "daichi\m_uchiha_genin.mdl"

$bodygroup "model"
{
	studio "m_uchiha_genin.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.005 0.245 35.32

$eyeposition 0 0 70

$cdmaterials "models\daichi\m_uchiha_genin\"
$cdmaterials "models\daichi\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.67 -4.32 0 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.5 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -7.614 -38.754 -2.69 7.125 38.764 73.33

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -2 -6.2 -5.5 9 4.8 5.5
$hbox 2 "ValveBiped.Bip01_Spine4" -2.5 -6.6 -7 9.5 5.4 7
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -1 -4.5 7.5 6 4.5
$hbox 3 "ValveBiped.Bip01_Spine" 0 -4 -6.25 6 5 6.25
$hbox 3 "ValveBiped.Bip01_Spine1" -3 -4.5 -6 3 4.5 6
$hbox 3 "ValveBiped.Bip01_Spine2" -1.5 -4.8 -6 4.5 4.2 6
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -3.25 -2.55 -2.5 10.25 2.95 2.5
$hbox 4 "ValveBiped.Bip01_L_Forearm" -0.5 -1.75 -2.35 9.5 2.75 2.15
$hbox 4 "ValveBiped.Bip01_L_Hand" -1 -3 -2 5 1 3
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -3.25 -2.55 -2.5 10.25 2.95 2.5
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -1.75 -2.35 9.5 2.75 2.15
$hbox 5 "ValveBiped.Bip01_R_Hand" -1 -3 -3 5 1 2
$hbox 6 "ValveBiped.Bip01_L_Thigh" -1 -4.7 -3.25 17 4.3 4.25
$hbox 6 "ValveBiped.Bip01_L_Calf" -2 -3.5 -3.25 18 4.5 3.25
$hbox 6 "ValveBiped.Bip01_L_Foot" -2.5 -2.5 -2.4 5.5 4.9 2.6
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.8 -2.5 -2.4 4.2 0.5 2.7
$hbox 7 "ValveBiped.Bip01_R_Thigh" -1 -4.7 -4.25 17 4.3 3.25
$hbox 7 "ValveBiped.Bip01_R_Calf" -2 -3.5 -3.25 18 4.5 3.25
$hbox 7 "ValveBiped.Bip01_R_Foot" -2.5 -2.5 -2.6 5.5 4.9 2.4
$hbox 7 "ValveBiped.Bip01_R_Toe0" -0.8 -2.5 -2.4 4.2 0.5 2.7

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0 35.90794 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 4.452034 0.000008 0 0.238236 -80.050568 -89.974485 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.856091 0.00011 0.000003 -0.05735 3.208736 -0.284187 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 15.856072 0.000001 -0.000002 1.006114 -61.821517 0.056892 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000013 4.927803 -0.00761 4.944282 89.999695 89.999921 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" -0.000004 -0.000001 0 0.000057 -1.674812 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 0 0 0 -0.002521 5.748371 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.565662 -0.530825 -0.000444 0.002979 11.12134 0.000516 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 7.344555 -1.459479 -2.061369 64.042456 169.573025 -90.208398 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.482626 1.676216 -0.223865 -0.579833 -18.670061 90.512834 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.497047 0.00005 -0.000004 -0.115382 -1.454396 -0.021142 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.497034 0.000029 0 6.094961 7.463065 -89.591694 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676081 -1.712425 0 -5.183205 -141.175612 86.007668 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 9.395523 -1.872099 0.000059 -0.001146 21.370006 179.999745 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.151012 1.647629 0.000048 0.000573 17.346922 -0.000229 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 1.999996 -3.000003 0 89.998548 14.273641 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -4.452034 0.000031 0.000003 0.239153 -99.949737 -90.026565 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.856085 -0.000119 0.000001 0.057296 3.207647 0.285218 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 15.856053 0.000061 0.000003 -1.106384 -61.818137 0.325383 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 7.344429 -1.459473 2.061458 -63.945501 170.169655 89.633727 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.478741 1.683533 0.245447 0.344634 -18.574314 -90.528475 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.497196 -0.000056 -0.000008 0.118827 -1.454511 -0.015012 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 10.497166 -0.00001 0.000004 -6.115687 7.729259 90.152104 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676085 -1.71244 0.000001 -5.140179 38.872546 -94.498734 0 0 0 0 0 0
$definebone "RightUpLegBend01" "ValveBiped.Bip01_R_Thigh" 7.721375 -0.000089 -0.000062 0.000036 179.999486 -178.976242 0 0 0 0 0 0
$definebone "RightUpLegBend02" "ValveBiped.Bip01_R_Thigh" 14.45331 -0.000185 0.000175 0.000038 -180.000005 -178.977048 0 0 0 0 0 0
$definebone "RightLegBend03" "ValveBiped.Bip01_R_Calf" 14.944874 0.000233 -0.000183 -0.000088 -179.998393 -178.692338 0 0 0 0 0 0
$definebone "RightLegBend02" "ValveBiped.Bip01_R_Calf" 8.330421 0.000028 -0.000052 0.000039 -179.998967 -178.692393 0 0 0 0 0 0
$definebone "RightLegBend01" "ValveBiped.Bip01_R_Calf" 1.673491 0.000007 0.000002 -0.000032 -179.999882 -178.692734 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.989748 -0.274925 0.540725 -3.733967 -4.671265 1.853633 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.850325 -0.000015 0 -0.000002 -0.000575 -1.900327 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.165628 -0.000023 0 0.176241 -12.398336 0.000059 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.893576 -0.328876 1.465209 -7.491597 -4.55696 15.105918 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.722042 0 -0.000002 0.000001 0.000058 -2.424801 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.118313 0 -0.000001 0.148517 -13.99879 -0.000102 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.008635 -0.903034 1.370826 -33.108495 -14.347434 -94.672856 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.95052 -0.000006 0.000008 2.644147 22.459206 -11.014367 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.172279 -0.000003 0 0.645444 20.790751 0.000978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.744186 -0.399853 -1.208452 2.263474 -4.835023 -25.988907 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.921229 0.028623 -0.090848 -0.096373 -31.795251 -3.831881 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.636715 0.000015 0.000002 -0.000222 0.000746 0.029041 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.924673 -0.000004 -0.000002 0.285279 -13.995583 -0.000179 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.893307 -0.313873 -0.388029 0.264595 -4.779898 -10.987783 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.851963 -0.000019 -0.000001 0.000059 -0.00057 0.464034 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.118319 -0.000011 0 0.421411 -24.684565 -0.000006 0 0 0 0 0 0
$definebone "LeftForeArmBend1" "ValveBiped.Bip01_L_Forearm" 1.750122 -0.000008 -0.000008 -0.008826 -0.000687 4.684904 0 0 0 0 0 0
$definebone "LeftForeArmBend2" "ValveBiped.Bip01_L_Forearm" 5.934387 -0.000012 -0.000004 -0.008823 -0.000974 4.685134 0 0 0 0 0 0
$definebone "LeftForeArmBend3" "ValveBiped.Bip01_L_Forearm" 9.961473 -0.000015 -0.000027 -0.008763 -0.000745 4.684676 0 0 0 0 0 0
$definebone "LeftArmBend1" "ValveBiped.Bip01_L_UpperArm" 0.000027 0.000001 -0.000008 -0.008768 -0.001203 4.671152 0 0 0 0 0 0
$definebone "LeftArmBend2" "ValveBiped.Bip01_L_UpperArm" 4.640549 -0.000031 -0.000015 -0.008768 -0.00126 4.671096 0 0 0 0 0 0
$definebone "LeftArmBend3" "ValveBiped.Bip01_L_UpperArm" 8.81119 -0.000052 -0.000027 -0.008768 -0.00126 4.671382 0 0 0 0 0 0
$definebone "LeftUpLegBend02" "ValveBiped.Bip01_L_Thigh" 14.453234 0.000099 0.000002 0.038445 0.000974 -178.974766 0 0 0 0 0 0
$definebone "LeftUpLegBend01" "ValveBiped.Bip01_L_Thigh" 7.721544 0.000055 0.000008 0.125538 0.002521 -178.975108 0 0 0 0 0 0
$definebone "LeftLegBend03" "ValveBiped.Bip01_L_Calf" 14.94492 0.000004 0.000003 -0.009164 0.000573 -178.693185 0 0 0 0 0 0
$definebone "LeftLegBend01" "ValveBiped.Bip01_L_Calf" 1.673513 -0.000016 0.000001 -0.000113 -0.000057 -178.693048 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.992302 -0.278881 -0.518983 3.417635 -4.698302 -1.636139 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.850306 0.000019 -0.000001 -0.000058 -0.000563 1.832778 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.165602 0.000008 0 -0.25554 -12.395595 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.900703 -0.339607 -1.443513 7.176066 -4.608741 -15.100075 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.722019 0 -0.000001 -0.000008 0.000816 2.529084 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.118299 -0.000008 0 -0.24088 -13.998486 0.000109 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.01531 -0.913048 -1.35917 32.730629 -14.566181 110.581999 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.950486 0.000004 0 3.605979 22.332516 17.442534 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.172249 -0.000008 -0.000002 -0.551337 20.791729 -0.000376 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.738113 -0.391006 1.229825 -2.581238 -4.819016 25.989309 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.636686 -0.000011 0.000002 -0.000343 -0.000787 -0.798347 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.924673 0.000008 -0.000004 -0.351392 -13.996144 0.000309 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.891273 -0.311035 0.409545 -0.581326 -4.779091 10.464558 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.851944 0 0 -0.000058 -0.000796 -0.309107 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.118307 0.000008 0 -0.553532 -24.681867 0.000289 0 0 0 0 0 0
$definebone "RightForeArmBend1" "ValveBiped.Bip01_R_Forearm" 1.750084 0.000042 -0.000008 0.015117 -179.998407 4.512845 0 0 0 0 0 0
$definebone "RightForeArmBend2" "ValveBiped.Bip01_R_Forearm" 5.93433 0.000058 0.000004 0.015571 -179.998639 4.513073 0 0 0 0 0 0
$definebone "RightForeArmBend3" "ValveBiped.Bip01_R_Forearm" 9.961193 0.00021 0.000099 0.013338 -179.998134 4.512617 0 0 0 0 0 0
$definebone "RightArmBend3" "ValveBiped.Bip01_R_UpperArm" 8.81105 -0.000066 0.000065 0.015868 -179.999281 4.535477 0 0 0 0 0 0
$definebone "RightArmBend2" "ValveBiped.Bip01_R_UpperArm" 4.640467 0.000045 0.000008 0.020511 -179.998243 4.535417 0 0 0 0 0 0
$definebone "RightArmBend1" "ValveBiped.Bip01_R_UpperArm" -0.000004 0.000016 0.000004 0.013054 -179.999158 4.535706 0 0 0 0 0 0
$definebone "LeftLegBend02" "ValveBiped.Bip01_L_Calf" 8.330427 -0.000008 -0.000004 -0.000742 0 -178.69283 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.92138 0.029541 0.080314 0.004351 -31.819283 0.284759 0 0 0 0 0 0


$sectionframes 30 100

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$animation "a_proportions_corrective_animation" "m_uchiha_genin_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions_corrective_animation" "m_uchiha_genin_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "m_uchiha_genin_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "reference" {
	"m_uchiha_genin_anims\reference.smd"
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
	"m_uchiha_genin_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$includemodel "m_anm.mdl"

$collisionjoints "m_uchiha_genin_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -150 115 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -70 70 0




	$jointconstrain "ValveBiped.Bip01_R_Finger3" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger3" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger3" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger31" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger31" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger31" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger32" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger32" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger32" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger4" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger4" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger4" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger41" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger41" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger41" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger42" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger42" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger42" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger0" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger01" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger01" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger01" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger02" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger02" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger02" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger11" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger11" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger11" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger12" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger12" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger12" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger2" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger2" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger2" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger21" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger21" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger21" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_Finger22" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger22" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Finger22" z limit 0 0 0



	$jointrotdamping "ValveBiped.Bip01_Pelvis" 3

	$jointconstrain "ValveBiped.Bip01_Spine" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -115 150 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -70 70 0




	$jointconstrain "ValveBiped.Bip01_L_Finger3" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger3" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger3" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger31" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger31" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger31" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger32" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger32" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger32" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger4" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger4" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger4" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger41" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger41" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger41" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger42" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger42" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger42" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger0" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger01" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger01" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger01" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger02" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger02" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger02" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger11" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger11" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger11" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger12" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger12" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger12" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger2" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger2" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger2" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger21" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger21" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger21" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Finger22" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger22" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Finger22" z limit 0 0 0



	$jointconstrain "ValveBiped.Bip01_Spine1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -65 95 0

	$jointconstrain "ValveBiped.Bip01_Spine4" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine4" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine4" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Neck1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -65 40 0

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 0 0


	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -90 55 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -70 125 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_R_Toe0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Toe0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Toe0" z limit 0 0 0



	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -55 90 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -70 120 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_L_Toe0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Toe0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Toe0" z limit 0 0 0



}

$keyvalues
{
}
