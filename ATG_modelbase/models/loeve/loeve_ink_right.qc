// Created by Crowbar 0.67

$modelname "loeve/loeve_ink_right.mdl"

$bodygroup "studio"
{
	studio "loeve_ink_right.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "models\loeve\loeve_ink\"

$cbox 0 0 0 0 0 0

$bbox -5.85 -1.557 -7.821 5.777 2.54 36.002

$hboxset "default"

$definebone "Hips" "" 0 0 75.600647 0 0 89.999982 0 0 0 0 0 0
$definebone "Spine" "Hips" 0 5.471191 -0.015691 0 0 -4.046859 0 0 0 0 0 0
$definebone "Chest" "Spine" 0 19.788055 0 0 0 3.009346 0 0 0 0 0 0
$definebone "Neck" "Chest" 0 20.747459 0 0 0 5.036242 0 0 0 0 0 0
$definebone "Head" "Neck" 0 6.99929 0.000002 0 0 -3.99873 0 0 0 0 0 0
$definebone "Hair_B01" "Head" 0 0.100006 0 0 0 -39.052006 0 0 0 0 0 0
$definebone "Hair_B02" "Hair_B01" 0 23.829529 0.000008 0 0 -50.947863 0 0 0 0 0 0
$definebone "Hair_B03" "Hair_B02" 0 12.863329 0 0 0 -90.000098 0 0 0 0 0 0
$definebone "Left shoulder" "Chest" 3.657568 12.802361 -0.292899 -88.962469 -89.996485 -0.003782 0 0 0 0 0 0
$definebone "Left arm" "Left shoulder" 0 13.405489 0 -30.634966 34.784439 -55.28613 0 0 0 0 0 0
$definebone "Left elbow" "Left arm" 0.000008 19.933323 -0.000008 -0.006463 -0.057922 -0.066866 0 0 0 0 0 0
$definebone "Left wrist" "Left elbow" 0 19.93331 0 -29.722255 125.082702 -56.934411 0 0 0 0 0 0
$definebone "Thumb0_L" "Left wrist" 0.104589 2.005836 -4.270985 18.183692 -121.568351 -78.243505 0 0 0 0 0 0
$definebone "Thumb1_L" "Thumb0_L" 0.000008 4.989218 0 -8.359165 15.705774 14.290464 0 0 0 0 0 0
$definebone "Thumb2_L" "Thumb1_L" -0.000015 2.583771 0.000008 -38.826887 41.853367 66.535803 0 0 0 0 0 0
$definebone "IndexFinger1_L" "Left wrist" 5.482656 -0.048714 -8.380875 31.512403 -128.646996 -56.882966 0 0 0 0 0 0
$definebone "IndexFinger2_L" "IndexFinger1_L" 0 4.419556 -0.000008 0.0004 -0.000277 0.00026 0 0 0 0 0 0
$definebone "IndexFinger3_L" "IndexFinger2_L" 0.000008 2.573078 0.000008 -30.112935 125.880154 -55.255124 0 0 0 0 0 0
$definebone "MiddleFinger1_L" "Left wrist" 6.904469 -0.375458 -6.714701 34.371762 -126.06155 -52.212842 0 0 0 0 0 0
$definebone "MiddleFinger2_L" "MiddleFinger1_L" 0.000015 4.738884 0.000008 0.000236 -0.000142 0.000164 0 0 0 0 0 0
$definebone "MiddleFinger3_L" "MiddleFinger2_L" 0 2.786003 0 -25.773893 122.676386 -55.865835 0 0 0 0 0 0
$definebone "RingFinger1_L" "Left wrist" 8.353399 -0.412125 -4.887487 36.583893 -123.607914 -48.118027 0 0 0 0 0 0
$definebone "RingFinger2_L" "RingFinger1_L" -0.000004 4.539825 0 -0.000108 0.00013 -0.000114 0 0 0 0 0 0
$definebone "RingFinger3_L" "RingFinger2_L" 0.000004 2.646519 0 -21.855487 119.776424 -56.950746 0 0 0 0 0 0
$definebone "LittleFinger1_L" "Left wrist" 9.296923 -0.083649 -3.019457 37.634295 -122.285521 -45.983009 0 0 0 0 0 0
$definebone "LittleFinger2_L" "LittleFinger1_L" 0 3.949207 0 0.000186 -0.000092 0.000108 0 0 0 0 0 0
$definebone "LittleFinger3_L" "LittleFinger2_L" 0.000008 2.184589 -0.000008 -19.028463 118.35972 -58.86744 0 0 0 0 0 0
$definebone "LeftForeArmBend1" "Left elbow" 0.000237 1.870316 0.000137 -27.559545 52.917871 58.526791 0 0 0 0 0 0
$definebone "LeftForeArmBend2" "Left elbow" 0 9.689377 0.000153 -27.559607 52.917871 58.526778 0 0 0 0 0 0
$definebone "LeftForeArmBend3" "Left elbow" 0.000092 17.507921 0.000458 -27.559545 52.917871 58.526791 0 0 0 0 0 0
$definebone "LeftArmBend1" "Left arm" 0 0.000008 0 -27.561789 52.923547 58.519736 0 0 0 0 0 0
$definebone "LeftArmBend2" "Left arm" 0.000252 9.243866 0.00032 -27.561854 52.923594 58.519633 0 0 0 0 0 0
$definebone "LeftArmBend3" "Left arm" 0.000305 17.062668 0.000237 -27.561854 52.923594 58.519633 0 0 0 0 0 0
$definebone "Right shoulder" "Chest" -3.65757 12.802361 -0.29289 88.962469 90.003766 0.003782 0 0 0 0 0 0
$definebone "Right arm" "Right shoulder" 0 13.405487 0 30.635021 -34.784559 -55.286133 0 0 0 0 0 0
$definebone "Right elbow" "Right arm" -0.000008 19.933304 -0.000008 0.006463 0.05791 -0.066861 0 0 0 0 0 0
$definebone "Right wrist" "Right elbow" 0.000008 19.933308 0.000008 29.722364 -125.082743 -56.934353 0 0 0 0 0 0
$definebone "Thumb0_R" "Right wrist" -0.104574 2.005829 -4.270985 -18.183622 121.567942 -78.243594 0 0 0 0 0 0
$definebone "Thumb1_R" "Thumb0_R" 0 4.989231 0.000004 8.358777 -15.705479 14.290729 0 0 0 0 0 0
$definebone "Thumb2_R" "Thumb1_R" 0.000008 2.583755 -0.000004 38.826798 -41.853429 66.535857 0 0 0 0 0 0
$definebone "IndexFinger1_R" "Right wrist" -5.482628 -0.048737 -8.380896 -31.512242 128.647228 -56.883045 0 0 0 0 0 0
$definebone "IndexFinger2_R" "IndexFinger1_R" 0 4.419552 0.000008 -0.000009 -0.000015 0.000073 0 0 0 0 0 0
$definebone "IndexFinger3_R" "IndexFinger2_R" 0 2.573078 0.000008 30.11331 -125.880018 -55.254967 0 0 0 0 0 0
$definebone "MiddleFinger1_R" "Right wrist" -6.904446 -0.375473 -6.714724 -34.371626 126.061892 -52.21292 0 0 0 0 0 0
$definebone "MiddleFinger2_R" "MiddleFinger1_R" -0.000004 4.738876 0 0.000223 -0.00013 -0.000162 0 0 0 0 0 0
$definebone "MiddleFinger3_R" "MiddleFinger2_R" -0.000008 2.786011 -0.000008 25.774274 -122.676194 -55.865688 0 0 0 0 0 0
$definebone "RingFinger1_R" "Right wrist" -8.353395 -0.412125 -4.887508 -36.583781 123.607914 -48.118102 0 0 0 0 0 0
$definebone "RingFinger2_R" "RingFinger1_R" 0 4.539818 -0.000015 0.000053 -0.000068 -0.00005 0 0 0 0 0 0
$definebone "RingFinger3_R" "RingFinger2_R" 0.000004 2.646526 0 21.855536 -119.776451 -56.950694 0 0 0 0 0 0
$definebone "LittleFinger1_R" "Right wrist" -9.296913 -0.083649 -3.019485 -37.634175 122.285508 -45.983094 0 0 0 0 0 0
$definebone "LittleFinger2_R" "LittleFinger1_R" 0.000008 3.949211 -0.000008 -0.000178 0.000157 0.000123 0 0 0 0 0 0
$definebone "LittleFinger3_R" "LittleFinger2_R" 0 2.184597 0 19.028571 -118.359761 -58.867406 0 0 0 0 0 0
$definebone "RightForeArmBend3" "Right elbow" -0.000008 17.507881 0.000534 -39.677593 -163.419461 -100.763547 0 0 0 0 0 0
$definebone "RightForeArmBend2" "Right elbow" 0.000084 9.689346 0.000198 -39.677535 -163.419229 -100.763718 0 0 0 0 0 0
$definebone "RightForeArmBend1" "Right elbow" -0.000198 1.870316 0.000198 -39.677542 -163.419407 -100.763602 0 0 0 0 0 0
$definebone "RightArmBend3" "Right arm" -0.000252 17.062691 0.000305 -39.217795 -160.502943 -102.618435 0 0 0 0 0 0
$definebone "RightArmBend2" "Right arm" -0.000191 9.243874 0.00032 -39.217744 -160.502711 -102.618613 0 0 0 0 0 0
$definebone "RightArmBend1" "Right arm" 0 -0.000023 0.000015 -39.217686 -160.502246 -102.618852 0 0 0 0 0 0
$definebone "Right_Wear02" "Hips" -19.030993 4.790215 -1.557469 78.899272 53.202102 -27.351349 0 0 0 0 0 0
$definebone "Left_Wear02" "Hips" 19.030994 4.790222 -1.557463 78.899306 -107.026489 152.648649 0 0 0 0 0 0
$definebone "Right_Wear01" "Hips" -9.980948 6.3377 12.449452 14.666803 152.524053 86.3958 0 0 0 0 0 0
$definebone "Back_Wear" "Hips" 0.000005 5.041649 -13.802176 0 0 -87.580326 0 0 0 0 0 0
$definebone "Left_Wear01" "Hips" 9.980945 6.3377 12.449455 14.666745 -0.463981 -93.604116 0 0 0 0 0 0
$definebone "Left leg" "Hips" 9.687208 -2.694771 -0.000009 -9.99731 9.954683 -179.75629 0 0 0 0 0 0
$definebone "Left knee" "Left leg" -0.000002 32.791843 0 0.043144 0.501967 3.169775 0 0 0 0 0 0
$definebone "Left ankle" "Left knee" 0.000002 32.791862 0 -5.891554 -9.12756 -64.82663 0 0 0 0 0 0
$definebone "Left toe" "Left ankle" -0.000004 11.368917 0.000001 -14.453611 -9.164866 -115.407739 0 0 0 0 0 0
$definebone "LeftLegBend01" "Left knee" -0.106497 4.051323 0.089327 -8.227677 24.14352 -93.670232 0 0 0 0 0 0
$definebone "LeftLegBend03" "Left knee" -0.016003 29.071568 0.104454 -8.227735 24.142958 -93.670177 0 0 0 0 0 0
$definebone "LeftLegBend02" "Left knee" -0.016325 16.438704 0.104759 -8.227678 24.143701 -93.670293 0 0 0 0 0 0
$definebone "LeftUpLegBend01" "Left leg" -0.000317 16.630844 -0.000045 7.252271 143.930377 -95.253661 0 0 0 0 0 0
$definebone "LeftUpLegBend02" "Left leg" 0.000505 28.977425 -0.000106 7.252386 143.931238 -95.253545 0 0 0 0 0 0
$definebone "Right leg" "Hips" -9.687208 -2.694771 0.000015 9.997195 -9.954797 -179.756345 0 0 0 0 0 0
$definebone "Right knee" "Right leg" 0 32.791859 0 -0.043145 -0.501909 3.169775 0 0 0 0 0 0
$definebone "Right ankle" "Right knee" 0 32.791855 0.000001 5.891497 9.126927 -64.826739 0 0 0 0 0 0
$definebone "Right toe" "Right ankle" -0.000008 11.368914 -0.000001 14.452916 9.164857 -115.407903 0 0 0 0 0 0
$definebone "RightLegBend01" "Right knee" 0.016542 4.067448 0.104325 8.865264 -10.147027 88.420105 0 0 0 0 0 0
$definebone "RightLegBend02" "Right knee" 0.016333 16.438696 0.104791 8.865264 -10.147027 88.420105 0 0 0 0 0 0
$definebone "RightLegBend03" "Right knee" 0.016712 29.071426 0.104374 8.865264 -10.147027 88.420105 0 0 0 0 0 0
$definebone "RightUpLegBend01" "Right leg" 0.000328 16.630817 -0.00001 8.809912 -10.115682 88.434831 0 0 0 0 0 0
$definebone "RightUpLegBend02" "Right leg" 0.000195 28.977291 -0.000195 8.809912 -10.115682 88.434831 0 0 0 0 0 0


$sequence "loeve_run" {
	"loeve_ink_right_anims\loeve_run.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "loeve_punch" {
	"loeve_ink_right_anims\loeve_punch.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "loeve_run_start" {
	"loeve_ink_right_anims\loeve_run_start.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "loeve_ink_right_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "

}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.000000"
		"animfrictiontimehold"		"0.300000"
	}
	editparams 
	{
		"rootname"		""
		"totalmass"		"100.000000"
	}
}
