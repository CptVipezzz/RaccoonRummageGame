//Maya ASCII 2023 scene
//Name: racoon5.ma
//Last modified: Mon, Mar 27, 2023 03:31:17 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "9D3354DB-43A5-F3D9-7743-44942A9FA0E3";
createNode transform -s -n "persp";
	rename -uid "8D7A2687-4BB9-0515-A7CE-F380FC34A9DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.32212179924761108 1.3943501208949798 1.7404746476191855 ;
	setAttr ".r" -type "double3" -3.5999999999996959 -1068.8000000006193 5.0660997729371945e-17 ;
	setAttr ".rpt" -type "double3" -8.3304720054737622e-17 -1.153249776846188e-16 2.5317226835894776e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8ACA99C3-400C-033B-E97E-848FAC802059";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 1.9444750929742647;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.11334941709577695 1.3183237697512298 -0.12312618757872978 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6E8DACFF-4FD1-A1D5-44C2-A99D6816F2E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.9750581581010636e-05 1.0928018476397241 -1000.1434124034205 ;
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".rpt" -type "double3" -2.1360054872464087e-14 -5.5673236620590035e-15 1.8362191374551022e-14 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F37C797A-4AF9-4DFD-13C7-FB8F19E0775C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.4102618502471236;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -3.9750581280714003e-05 1.0928018476397185 -0.043412403420461487 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F85C637D-460B-2E29-C1FB-CBAFE1014557";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.9750581605879631e-05 1.0928018476397185 999.94819929867811 ;
	setAttr ".rpt" -type "double3" 3.4137790185328258e-15 0 -4.2114576956281366e-14 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "518CF56B-4E66-065F-AD82-56BE0A558965";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.99778017188521;
	setAttr ".ow" 1.5621164546760391;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -3.9750581602465851e-05 1.0928018476397185 -0.049580873207105469 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D18A5896-4086-3D85-8DA3-40BD91E4BC1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9EF87378-4CFE-41F6-E98F-5AA2F10A5BFF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube2";
	rename -uid "B2F90858-4E7A-F316-0518-A382068C73D4";
	setAttr ".t" -type "double3" 0.25532685791910037 2.1159420396715789 -0.018877704844764878 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" -0.12781326472759247 -1.0231401920318604 -0.037800434976816177 ;
	setAttr ".sp" -type "double3" -0.12781326472759247 -1.0231401920318604 -0.037800434976816177 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "10971128-46F4-626A-0672-3AB62AB5A284";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50070606172084808 0.6805458664894104 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[75]" -type "float3" 0.0019758788 -0.0089127738 -0.0071766446 ;
	setAttr ".pt[110]" -type "float3" -0.0019743752 -0.014237403 -0.0050876569 ;
	setAttr ".pt[111]" -type "float3" 0.0025372745 -0.0059336754 -0.0062963506 ;
	setAttr ".pt[112]" -type "float3" 0.0002988514 -0.01143607 -0.0064289947 ;
	setAttr ".pt[249]" -type "float3" -0.0020352774 -0.0088728061 -0.007229297 ;
	setAttr ".pt[284]" -type "float3" 0.0019415205 -0.014178723 -0.0050974065 ;
	setAttr ".pt[285]" -type "float3" -0.0026663064 -0.006040039 -0.0065130522 ;
	setAttr ".pt[286]" -type "float3" -0.00037038606 -0.011404692 -0.0065012774 ;
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	rename -uid "101C5B96-4D31-E551-73AB-A3AA45A1B727";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[8:11]" "f[20:35]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0:3]" "f[64:65]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[14:15]" "f[60:61]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[12:13]" "f[62:63]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[16:19]" "f[36:59]" "f[66:146]";
	setAttr ".pv" -type "double2" 0.61511725187301636 0.59995007887482643 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 408 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 1 0.375 0.25
		 0.375 0.5 0.375 0.75 0.125 0 0.5 0.125 0.5 0.625 0.5 0.875 0.25 0.125 0.5 0 0.5 1
		 0.5 0.25 0.375 0.125 0.5 0.5 0.375 0.36622864 0.5 0.75 0.375 0.625 0.125 0.125 0.375
		 0.875 0.25 0 0.46250001 0 0.46250001 1 0.375 0.25 0.5 0.25 0.375 0.38150939 0.46250001
		 0.75 0.47500002 0.875 0.47500002 0.875 0.46250001 1 0.375 1 0.375 0.875 0.375 0.75
		 0.46250001 0.75 0.40125 0 0.40125 1 0 0 0.99779862 0.23706278 0.88809931 0.45139289
		 0.0032333909 0.20820367 1 0 0.1164825 0.45778891 0 0 1 0 0.95806992 0.68956578 0.66331118
		 0.60337001 0 0 1 0 1 1 0.014535821 1.10716569 0.015556823 -0.01814734 1 0 0.99266225
		 0.63551491 0.17539223 1.10416424 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 0 0 1 0 0 0 1 0 0.375 0.27717799 0.0050047492 0.70195574 0.082635015 0.33466634
		 1 0 0.96529329 0.44569477 0.375 0.035501875 0.25 0.035501875 0.125 0.035501875 0.375
		 0.7144981 0.5 0.0625 1.030303121 0.87264997 0.997154 0.058215633 1 1 0 1 0.22234212
		 0.45490932 0.14442286 0.058033668 0 0 1 0 1.00016081333 0.81689703 0 1 -0.15698338
		 0.064868808 1 0 1 1 -0.2508415 0.55136454 1.01968348 1.022091031 0.33007073 0.80824476
		 0.40946978 0.26787281 0.79679388 0.25976938 0.83007073 0.80824476 0.83481103 0.53564572
		 0.35092565 0.47781014 0 0 1 0 0.88214815 1.22989619 0.038086154 1.10678792 1.0096033812
		 0.82124126 -0.018623251 0.5295279 0 0 0.8478778 0.12283664 0.95206976 1.0068697929
		 0.080073901 0.94148862 -0.064200528 -0.02999603 1 0 0.79119736 0.9013344 0.44227856
		 0.86231905 0.030158877 0.02391259 1 0 1.481076 0.89074552 0.10811443 1.048241377
		 -0.032938678 0.026227647 1.0359025 0.018639278 1 1 0 1 0 0 1 0 1 1 0 1 0.039673205
		 0.020637544 1 0 1 1 -0.089498661 0.59856647 0 0 0.95409262 -0.016993223 1.11649156
		 0.97241205 0 1 0 0 1 0 1.089153051 0.60453928 0 1 0 0 1 0 1 1 -0.11288165 0.96838814
		 0.98009479 0 0.0095717702 0 0.98275697 1 0.99163926 0 0.055781722 0.83558786 0 0
		 1 0 1.00016081333 0.81689703 0 1 1 0 1 1 0 0 1 0 1.0096033812 0.82124126 0.88214815
		 1.22989619 0.038086154 1.10678792 -0.018623251 0.5295279 1 0 1 1 0 0 0 1 0 0 0.93795317
		 0.1219355 1.095350862 0.44801617 0 1 0.090313561 0.046364199 1 0 1 1 -0.13138649
		 0.91346103 0 0 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1.035292149 0.47770941 0.61673796 0.88182676
		 0.99137849 0.5 0 0.5 0.99581963 0.5 0.0047858851 0.5 0.9900474 0.5 0 0.5 1 0.5 0
		 0.5 0.067927808 0.88853824 -0.024912728 0.30960202 0 0 1 0 0.48013428 0.98143482
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0.47500002 0.875 0.46250001 1 0.375 1 0.375 0.875
		 0.375 0.75 0.46250001 0.75 0.47500002 0.875 0.46250001 1 0.375 1 0.375 0.875 0.375
		 0.75 0.46250001 0.75 0.47500002 0.875 0.46250001 1 0.375 1 0.375 0.875 0.375 0.75
		 0.46250001 0.75 0.45614657 1 0.45597029 1 0.46250001 1 0.46250001 1 0.38055322 1
		 0.38077477 1 0.375 1 0.375 1 0 0 1 0 0.95577645 0.58643973 0.041334368 0.56668603
		 0 0 1 0 0.95866537 0.62358689 0.041691858 0.62600553 0.99115533 0.11728795 0.46122932
		 1 0.0082668727 0.1133372 0.46119404 1 0.5 0.71249998 0.60000002 0 0.56420058 0.83942658
		 0.85000002 0.30000001 0.15000001 0.30000001 0.65937024 0.43861526 0.22564685 0.48186353
		 0.7999773 0.49397224 0.38759768 0.4553155 0.80000001 0.40000001;
	setAttr ".uvst[0].uvsp[250:407]" 0.2 0.40000001 0.55824578 0.98620605 0.5 0
		 0.2 0.40000001 0.75 0.5 0.38 0.75999999 1.0330441 0.47324774 0.59876549 0.78578889
		 0.029391479 0.64774042 1.07196188 0.65308362 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 -0.078488261 0.77158821 0 0 1 0 1.060193539 0.476367 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0.5 1 0.5 0 0.375 0.1875 0.5 0 0.375 0.5625 0.5 1 0.15145712 0.12520479
		 0.3389585 0.12484314 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0.23579086 1.011404157 0 0 1 0 0.70515651
		 0.93610996 0.11312363 1.013759732 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0.37215245 0.97816819 0 0 1 0 0.80813968 0.99716526 0 1 0 0 1 0 0.8062911
		 0.94944346 0 1 0.24916364 0.11888438 1 0 0.49765787 0.51581258 0.80173373 0.11466834
		 0.54033417 0.50949329 0 0 0.81682134 0.038810402 0.42507499 0.53582364 0.38613358
		 0.99481761 0 0 0.51787782 0.11982755 0.29528093 0.21402107 0.32324222 0.24253634
		 1 0 0.93795317 0.1219355 1.089153051 0.60453928 1.095350862 0.44801617 -0.11288165
		 0.96838814 0 0 0.090313561 0.046364199 -0.13138649 0.91346103;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 172 ".vt";
	setAttr ".vt[0:165]"  -0.10559526 -1.18672216 0.0060465597 -0.094225302 -0.90090311 -0.01530862
		 -0.10218943 -0.89934111 -0.1033032 -0.098733306 -1.202384 -0.10024242 -0.16206002 -0.8692863 -0.068231247
		 0 -1.23955786 -0.13510999 -0.068674415 -0.93827868 -0.12854639 -0.1290109 -1.19807446 -0.038574666
		 0 -1.24625671 0.034949359 0 -0.92933381 0.02375488 -0.066968217 -0.95197988 0.012514535
		 0 -0.88977981 -0.12863956 0 -0.97962546 0.039526191 0 -0.92762804 -0.14675727 0 -1.25009286 -0.041042283
		 -0.072392657 -0.95448613 -0.073782355 -0.042591348 -1.23907697 0.02813651 -0.040816288 -0.87969625 0.027095575
		 0 -0.89330244 0.03190849 -0.12488438 -0.82485366 -0.0015819296 -0.054927886 -1.2535032 -0.12349389
		 -0.041464251 -1.24167418 -0.049892329 -0.049983416 -1.26404727 -0.055050038 -0.1284315 -1.22866869 -0.047121301
		 -0.054184571 -1.26052189 0.0039403755 -0.10175001 -1.22860825 -0.01061091 -0.10605531 -1.22714376 -0.082883641
		 -0.056181669 -1.26158583 -0.10381337 -0.07935445 -1.20920229 0.012673546 -0.11847825 -0.88994145 -0.068281233
		 -2.3283064e-10 -0.85924256 0.063803934 -0.0069784289 -0.85720682 0.063803859 -0.059994459 -0.83613467 0.027095575
		 -0.018683374 -0.84494042 0.063803859 0.00046625221 -0.8243711 0.027095586 0.00047968724 -0.83661199 0.063803867
		 -4.4292808e-10 -0.85683012 0.071156405 7.1279675e-05 -0.84346247 0.075287081 -0.0066099926 -0.85524774 0.07115633
		 -0.010634129 -0.8443253 0.07115633 0.00033540319 -0.838346 0.071156338 -0.053039711 -0.86142087 0.027095575
		 0.00039309124 -0.81293416 0.01101164 -0.10775012 -1.12646306 -0.0084382202 -0.12524989 -1.12882113 -0.056314297
		 -0.090196133 -1.1365509 -0.11528524 0 -1.12887967 0.053587653 0.00039159445 -0.76639104 -0.0015816558
		 -0.070030004 -0.76916814 -0.0015816391 -0.10639691 -0.82111585 -0.0015816502 0.00039159445 -0.753093 -0.0015816558
		 -0.07418564 -0.75670123 -0.001581654 -0.060084339 -0.7819221 -0.0015816502 -0.061645251 -0.80872703 -0.0015816409
		 -0.035408437 -0.80646896 -0.0015816577 -0.034846313 -0.78219581 -0.0015816521 -0.030140612 -0.79391682 -0.0015816521
		 -0.070838317 -0.79823351 -0.0015816502 -0.14188793 -0.78210115 -0.068231247 -0.096019983 -0.74498236 -0.071553029
		 -0.082753092 -0.72365046 -0.071553029 -0.0015665829 -0.70050073 -0.071553029 -0.18281725 -0.74910009 -0.068231247
		 -0.14064676 -0.7163012 -0.071553029 -0.19268438 -0.73192155 -0.068231247 -0.18285783 -0.7161268 -0.071553029
		 -0.14426009 -0.79205799 -0.068231247 -0.19886321 -0.74577415 -0.061520718 -0.15353844 -0.69415879 -0.064842507
		 -0.21642044 -0.72011352 -0.061520718 -0.20631385 -0.70382071 -0.064842507 0.00033028089 -0.76465285 0.0098910825
		 0.00033028089 -0.75646436 0.0098910825 -0.069899559 -0.76636291 0.0098910993 -0.073011741 -0.75868618 0.0098910844
		 -0.043734398 -0.78943884 0.0045525823 -0.055048816 -0.78931618 0.0045525841 -0.059869915 -0.79662871 0.0045525841
		 -0.055748586 -0.80133295 0.0045525935 -0.043986399 -0.80032063 0.0045525767 -0.041624792 -0.79469347 0.0045525823
		 -0.17695013 -0.74771297 -0.053033181 -0.19886321 -0.74577415 -0.053033173 -0.14240825 -0.71952939 -0.056354955
		 -0.15353844 -0.69415879 -0.056354962 -0.18775478 -0.73192155 -0.053033181 -0.21642044 -0.72011352 -0.053033173
		 -0.17897785 -0.72036052 -0.056354962 -0.20631385 -0.70382071 -0.056354962 -0.090112641 -0.73548698 -0.06761039
		 -0.14797334 -0.70684409 -0.053550377 -0.19264585 -0.71209061 -0.047012754 -0.20208761 -0.72601748 -0.045971051
		 -0.18790667 -0.74674356 -0.050228596 -0.14307401 -0.78707957 -0.065551899 -0.10627003 -0.75367212 -0.089236006
		 -0.061645254 -1.2887125 -0.053769685 -0.11072765 -1.28557873 -0.05684536 -0.067587428 -1.28609753 -0.032049403
		 -0.096419245 -1.28425598 -0.035337172 -0.10839666 -1.28389812 -0.086020589 -0.068631589 -1.28479159 -0.091840155
		 -0.063035227 -1.29921854 -0.053568594 -0.11307178 -1.30076492 -0.065857768 -0.067489818 -1.32641315 -0.033371724
		 -0.11038589 -1.32641315 -0.043145567 -0.10728581 -1.29428875 -0.084679045 -0.07269305 -1.29428875 -0.095717534
		 -0.069588915 -1.32353199 -0.097388178 -0.11307178 -1.32353187 -0.091756478 -0.067489818 -1.35212159 -0.055487819
		 -0.11038589 -1.35212147 -0.061995737 -0.10728581 -1.31475115 -0.096768722 -0.07269305 -1.31475127 -0.098908961
		 -0.099025004 -1.33625245 0.0045254156 -0.099025004 -1.35212159 0.0045552775 -0.057932749 -1.35212159 -0.015706884
		 -0.057932749 -1.33467865 -0.015696572 -0.11399619 -1.33517373 -0.016567284 -0.11399619 -1.35212147 -0.01656496
		 -0.11874432 -1.35212147 -0.030719759 -0.11874432 -1.3339119 -0.030689897 -0.070300706 -1.33601749 -7.0150942e-05
		 -0.070300706 -1.35212159 -4.6249479e-05 0 -1.14029157 -0.12938602 -0.17352556 -0.76725149 -0.064634629
		 -0.16884345 -0.75084662 -0.080845736 -0.16883121 -0.73755836 -0.085438885 -0.15631138 -0.72327936 -0.086696357
		 -0.14056511 -0.71365905 -0.083195113 -0.11814576 -0.70890462 -0.068197772 -0.13291143 -0.78215146 -0.081964292
		 -0.096586585 -0.73852944 -0.081954777 -0.11854169 -0.76691115 -0.086566463 -0.038952455 -0.76863122 -0.14413792
		 -0.0015665829 -0.73610473 -0.12143277 -0.082753092 -0.75925446 -0.12143277 -0.087551847 -0.95244765 -0.029540056
		 -0.093017757 -0.90708911 -0.020058556 -0.10166963 -0.90781534 -0.097901113 -0.069418065 -0.94152021 -0.096424103
		 -0.10651643 -0.90111017 -0.068553999 -0.089517109 -0.92674589 -0.0087322798 -0.08059676 -0.92644143 -0.0013970416
		 -0.085432053 -0.91712463 -0.12297361 -0.094265178 -0.91901851 -0.10813501 -0.092305794 -0.97225904 -0.070699885
		 -0.097216681 -0.95503473 -0.088794559 -0.092285514 -0.97233009 -0.035342731 -0.11001773 -0.94384694 -0.018713752
		 -0.1234101 -0.91109896 -0.090660177 -0.11534281 -0.9251703 -0.098153509 -0.12110189 -0.91919446 -0.027322063
		 -0.1245367 -0.90714741 -0.065765381 -0.13379602 -1.032737255 -0.064244844 -0.1408381 -1.016500711 -0.082407601
		 -0.13376698 -1.03280437 -0.028754661 -0.15185224 -0.99110627 -0.012063118 -0.16828628 -0.95321488 -0.0842802
		 -0.15948802 -0.97350073 -0.09180177 -0.16497652 -0.96084595 -0.020703861 -0.1699018 -0.94949031 -0.05929178
		 -0.23373839 -1.058364391 -0.0069056377 -0.24277994 -1.053632021 -0.015763896 -0.22217333 -1.051415205 0.0074294098
		 -0.22514251 -1.026072025 0.010154366;
	setAttr ".vt[166:171]" -0.25562647 -1.021633029 -0.022429602 -0.25416228 -1.0334903 -0.023563029
		 -0.23348486 -1.01303184 0.0039777663 -0.24821973 -1.01481235 -0.012682008 -0.24146609 -1.025734067 -0.0077662989
		 -0.24906662 -1.042140007 -0.019948872;
	setAttr -s 319 ".ed";
	setAttr ".ed[0:165]"  0 28 0 1 9 0 2 11 0 3 20 0 0 43 0 10 143 0 1 4 0 4 2 0
		 2 144 0 6 45 0 3 7 0 7 0 0 8 46 0 12 10 0 9 12 0 11 13 0 13 6 0 5 124 0 5 14 0 14 21 0
		 8 14 0 7 44 0 15 140 0 16 8 0 1 17 0 9 18 0 17 18 0 4 19 0 17 41 0 20 5 0 16 21 0
		 21 20 0 21 22 0 7 23 0 16 24 0 24 22 0 0 25 0 25 24 0 23 25 0 3 26 0 20 27 0 26 27 0
		 22 27 0 26 23 0 28 16 0 1 29 0 29 4 0 2 29 0 17 31 0 18 30 0 30 31 0 31 33 0 32 33 0
		 32 34 0 33 35 0 34 35 0 30 36 0 36 37 0 31 38 0 36 38 0 38 37 0 33 39 0 38 39 0 39 37 0
		 35 40 0 39 40 0 40 37 0 41 19 0 41 32 0 43 10 0 44 15 0 45 3 0 43 44 0 44 45 0 46 12 0
		 46 43 0 34 42 0 42 47 0 19 49 0 47 48 0 49 48 0 50 51 0 19 51 0 47 55 0 42 49 0 42 54 0
		 52 48 0 53 49 0 52 57 0 53 54 0 54 56 0 55 52 0 56 55 0 57 53 0 4 66 0 19 59 0 58 59 0
		 51 60 0 59 89 0 50 61 0 60 61 0 58 62 0 59 63 0 62 63 0 62 64 0 63 65 0 64 65 0 58 94 0
		 66 125 0 60 130 0 67 69 0 68 70 0 69 70 0 47 71 0 50 72 0 71 72 0 48 73 0 71 73 0
		 51 74 0 72 74 0 73 74 0 49 73 0 19 74 0 55 75 0 52 76 0 75 76 0 57 77 0 76 77 0 53 78 0
		 77 78 0 54 79 0 78 79 0 56 80 0 79 80 0 80 75 0 62 81 0 58 81 0 67 82 0 81 93 0 66 82 0
		 63 83 0 59 83 0 68 84 0 60 84 0 83 90 0 64 85 0 81 85 0 69 86 0 85 92 0 82 86 0 65 87 0
		 83 87 0 70 88 0 84 88 0 87 91 0 85 87 0 86 88 0 89 60 0 90 84 0 91 88 0 92 86 0 93 82 0
		 94 66 0 89 90 0 90 91 0 91 92 0;
	setAttr ".ed[166:318]" 92 93 0 93 94 0 66 131 0 67 126 0 60 132 0 68 129 0
		 69 127 0 70 128 0 22 96 0 23 97 0 24 98 0 98 96 0 25 99 0 99 98 0 97 99 0 26 100 0
		 27 101 0 100 101 0 96 101 0 100 97 0 96 102 0 97 103 0 98 104 0 104 102 0 99 105 0
		 105 104 0 103 105 0 100 106 0 101 107 0 106 107 0 102 107 0 106 103 0 102 108 0 103 109 0
		 108 109 0 104 110 0 110 108 0 105 111 0 111 110 0 109 111 0 106 112 0 107 113 0 112 113 0
		 108 113 0 112 109 0 105 121 0 104 117 0 111 120 0 110 116 0 114 115 0 115 123 0 116 117 0
		 117 122 0 118 114 0 119 115 0 118 119 0 119 120 0 120 121 0 121 118 0 122 114 0 123 116 0
		 122 123 0 124 13 0 124 45 0 125 67 0 130 68 0 125 126 1 126 127 0 127 128 0 128 129 0
		 129 130 1 131 133 0 132 95 0 129 132 1 131 126 1 133 95 0 133 127 1 128 95 0 4 134 0
		 66 134 0 61 135 0 60 136 0 136 135 0 10 137 0 1 138 0 137 142 0 2 139 0 6 140 0 139 145 0
		 29 141 0 138 141 0 139 141 0 142 138 0 143 1 0 142 143 1 144 6 0 145 140 0 144 145 1
		 137 15 0 15 146 0 140 147 0 146 147 0 137 148 0 142 149 0 148 149 0 139 150 0 145 151 0
		 150 151 0 138 152 0 141 153 0 152 153 0 150 153 0 149 152 0 151 147 0 148 146 0 146 154 0
		 147 155 0 154 155 0 148 156 0 149 157 0 156 157 0 150 158 0 151 159 0 158 159 0 152 160 0
		 153 161 0 160 161 0 158 161 0 157 160 0 159 155 0 156 154 0 154 162 0 155 163 0 162 163 0
		 156 164 0 157 165 0 158 166 0 159 167 0 166 167 0 160 168 0 161 169 0 168 169 0 166 169 0
		 165 168 0 167 171 0 164 162 0 162 170 0 165 170 0 171 163 0 163 170 0 170 171 0 164 170 0
		 165 164 0;
	setAttr -s 147 -ch 598 ".fc[0:146]" -type "polyFaces" 
		f 6 0 44 23 12 75 -5
		mu 0 6 0 34 21 10 78 74
		f 5 -14 -15 -2 -260 -6
		mu 0 5 13 6 12 2 285
		f 5 2 15 16 -262 -9
		mu 0 5 3 14 7 17 287
		f 4 -17 -229 229 -10
		mu 0 4 17 7 240 77
		f 4 31 29 18 19
		mu 0 4 27 26 16 8
		f 4 30 -20 -21 -24
		mu 0 4 22 27 8 11
		f 4 10 21 73 71
		mu 0 4 5 20 75 76
		f 4 11 4 72 -22
		mu 0 4 20 0 74 75
		f 4 1 25 -27 -25
		mu 0 4 2 12 24 23
		f 5 -7 24 28 67 -28
		mu 0 5 15 2 23 69 25
		f 4 -201 -203 -205 -206
		mu 0 4 217 214 215 216
		f 4 208 -210 200 -211
		mu 0 4 218 219 214 217
		f 4 -31 34 35 -33
		mu 0 4 27 22 29 28
		f 5 -45 -1 36 37 -35
		mu 0 5 22 35 1 30 29
		f 4 -12 33 38 -37
		mu 0 4 1 19 31 30
		f 4 3 40 -42 -40
		mu 0 4 4 26 33 32
		f 4 -32 32 42 -41
		mu 0 4 26 27 28 33
		f 4 -11 39 43 -34
		mu 0 4 19 4 32 31
		f 3 6 -47 -46
		mu 0 3 36 37 38
		f 3 7 47 46
		mu 0 3 39 40 41
		f 4 26 49 50 -49
		mu 0 4 42 43 44 45
		f 5 48 51 -53 -69 -29
		mu 0 5 46 47 48 49 70
		f 4 52 54 -56 -54
		mu 0 4 50 51 52 53
		f 3 -60 57 -61
		mu 0 3 63 64 56
		f 3 -63 60 -64
		mu 0 3 65 66 59
		f 3 -66 63 -67
		mu 0 3 67 68 62
		f 4 -51 56 59 -59
		mu 0 4 54 55 64 63
		f 4 -52 58 62 -62
		mu 0 4 57 58 66 65
		f 4 -55 61 65 -65
		mu 0 4 60 61 68 67
		f 6 -68 68 53 76 84 -79
		mu 0 6 71 72 73 79 93 83
		f 5 -73 69 249 264 -71
		mu 0 5 75 74 13 290 9
		f 5 -74 70 22 -254 9
		mu 0 5 76 75 9 289 18
		f 4 -76 74 13 -70
		mu 0 4 74 78 6 13
		f 4 -118 115 119 -121
		mu 0 4 147 148 149 150
		f 4 121 120 -123 78
		mu 0 4 89 151 152 92
		f 5 -88 -94 -89 86 -81
		mu 0 5 84 95 99 94 82
		f 4 -85 85 -90 87
		mu 0 4 84 80 96 95
		f 5 -93 -91 -86 77 83
		mu 0 5 97 98 96 80 81
		f 4 -87 -92 -84 79
		mu 0 4 82 94 97 81
		f 6 125 127 129 131 133 134
		mu 0 6 153 154 155 156 157 158
		f 6 27 95 -97 107 162 -95
		mu 0 6 106 107 108 109 189 146
		f 5 82 97 -158 -99 -96
		mu 0 5 110 111 112 180 113
		f 4 -98 -82 99 -101
		mu 0 4 114 115 116 117
		f 4 96 102 -104 -102
		mu 0 4 118 119 120 121
		f 4 103 105 -107 -105
		mu 0 4 122 123 124 125
		f 4 136 138 167 -108
		mu 0 4 126 159 187 190
		f 4 -142 98 163 -145
		mu 0 4 161 131 179 182
		f 4 146 148 166 -139
		mu 0 4 171 142 185 188
		f 4 -152 144 164 -155
		mu 0 4 143 174 181 184
		f 4 155 154 165 -149
		mu 0 4 176 145 183 186
		f 4 -80 113 117 -117
		mu 0 4 85 86 148 147
		f 4 81 118 -120 -115
		mu 0 4 87 88 150 149
		f 3 80 116 -122
		mu 0 3 89 90 151
		f 3 -83 122 -119
		mu 0 3 91 92 152
		f 4 91 124 -126 -124
		mu 0 4 100 101 154 153
		f 4 88 126 -128 -125
		mu 0 4 101 104 155 154
		f 4 93 128 -130 -127
		mu 0 4 104 102 156 155
		f 4 89 130 -132 -129
		mu 0 4 102 103 157 156
		f 4 90 132 -134 -131
		mu 0 4 103 105 158 157
		f 4 92 123 -135 -133
		mu 0 4 105 100 153 158
		f 3 101 135 -137
		mu 0 3 126 127 159
		f 4 -231 -109 139 -138
		mu 0 4 128 242 129 160
		f 3 -103 141 -141
		mu 0 3 130 131 161
		f 4 109 231 142 -144
		mu 0 4 132 251 133 162
		f 4 104 145 -147 -136
		mu 0 4 134 135 164 163
		f 4 -111 137 149 -148
		mu 0 4 400 136 165 401
		f 4 -106 140 151 -151
		mu 0 4 402 137 166 403
		f 4 111 152 -154 -143
		mu 0 4 138 139 168 167
		f 4 106 150 -156 -146
		mu 0 4 140 141 170 169
		f 4 -113 147 156 -153
		mu 0 4 404 405 406 407
		f 4 -164 157 143 -159
		mu 0 4 182 179 132 162
		f 4 -165 158 153 -160
		mu 0 4 184 181 144 175
		f 4 -166 159 -157 -161
		mu 0 4 186 183 177 178
		f 4 -167 160 -150 -162
		mu 0 4 188 185 172 173
		f 4 -168 161 -140 -163
		mu 0 4 190 187 160 129
		f 4 242 234 243 -242
		mu 0 4 255 256 259 193
		f 4 239 238 -244 235
		mu 0 4 250 254 257 258
		f 4 -36 176 177 -175
		mu 0 4 28 29 203 202
		f 4 -38 178 179 -177
		mu 0 4 29 30 204 203
		f 4 -39 175 180 -179
		mu 0 4 30 31 205 204
		f 4 41 182 -184 -182
		mu 0 4 32 33 207 206
		f 4 -43 174 184 -183
		mu 0 4 33 28 202 207
		f 4 -44 181 185 -176
		mu 0 4 31 32 206 205
		f 4 -178 188 189 -187
		mu 0 4 202 203 209 208
		f 4 -180 190 191 -189
		mu 0 4 203 204 210 209
		f 4 -181 187 192 -191
		mu 0 4 204 205 211 210
		f 4 183 194 -196 -194
		mu 0 4 206 207 213 212
		f 4 -185 186 196 -195
		mu 0 4 207 202 208 213
		f 4 -186 193 197 -188
		mu 0 4 205 206 212 211
		f 4 -190 201 202 -199
		mu 0 4 208 209 215 214
		f 4 -193 199 205 -204
		mu 0 4 210 211 217 216
		f 4 195 207 -209 -207
		mu 0 4 212 213 219 218
		f 4 -197 198 209 -208
		mu 0 4 213 208 214 219
		f 4 -198 206 210 -200
		mu 0 4 211 212 218 217
		f 4 203 213 223 -212
		mu 0 4 210 216 226 227
		f 4 -216 -220 221 220
		mu 0 4 221 220 224 225
		f 7 204 214 -227 -217 -221 222 -214
		mu 0 7 216 215 222 239 221 225 226
		f 4 -202 212 -218 -215
		mu 0 4 215 209 223 222
		f 7 -192 211 224 219 -226 -219 -213
		mu 0 7 209 210 227 224 220 237 223
		f 4 217 218 227 226
		mu 0 4 228 229 236 238
		f 4 -224 -223 -222 -225
		mu 0 4 232 233 234 235
		f 4 -228 225 215 216
		mu 0 4 238 236 230 231
		f 5 -230 -18 -30 -4 -72
		mu 0 5 77 240 16 26 4
		f 3 -233 230 169
		mu 0 3 243 241 192
		f 4 110 172 -234 -170
		mu 0 4 196 197 245 244
		f 4 112 173 -235 -173
		mu 0 4 200 201 247 246
		f 4 -112 171 -236 -174
		mu 0 4 198 199 249 248
		f 3 -232 -237 -172
		mu 0 3 194 252 250
		f 4 236 -110 170 -240
		mu 0 4 250 252 195 254
		f 4 108 232 -241 -169
		mu 0 4 191 241 243 253
		f 4 240 233 -243 -238
		mu 0 4 253 243 256 255
		f 3 94 245 -245
		mu 0 3 260 261 262
		f 4 100 246 -249 -248
		mu 0 4 263 264 265 266
		f 4 260 259 250 -259
		mu 0 4 283 284 268 269
		f 4 8 263 -255 -253
		mu 0 4 271 286 288 274
		f 4 45 255 -257 -251
		mu 0 4 275 276 277 278
		f 4 -48 252 257 -256
		mu 0 4 279 280 281 282
		f 4 5 -261 -252 -250
		mu 0 4 267 284 283 270
		f 4 -264 261 253 -263
		mu 0 4 288 286 272 273
		f 4 -23 265 267 -267
		mu 0 4 291 292 293 294
		f 4 251 269 -271 -269
		mu 0 4 295 296 297 298
		f 4 254 272 -274 -272
		mu 0 4 299 300 301 302
		f 4 256 275 -277 -275
		mu 0 4 303 304 305 306
		f 4 -258 271 277 -276
		mu 0 4 307 308 309 310
		f 4 258 274 -279 -270
		mu 0 4 311 312 313 314
		f 4 262 266 -280 -273
		mu 0 4 315 316 317 318
		f 4 -265 268 280 -266
		mu 0 4 319 320 321 322
		f 4 -268 281 283 -283
		mu 0 4 323 324 325 326
		f 4 270 285 -287 -285
		mu 0 4 327 328 329 330
		f 4 273 288 -290 -288
		mu 0 4 331 332 333 334
		f 4 276 291 -293 -291
		mu 0 4 335 336 337 338
		f 4 -278 287 293 -292
		mu 0 4 339 340 341 342
		f 4 278 290 -295 -286
		mu 0 4 343 344 345 346
		f 4 279 282 -296 -289
		mu 0 4 347 348 349 350
		f 4 -281 284 296 -282
		mu 0 4 351 352 353 354
		f 4 -284 297 299 -299
		mu 0 4 355 356 357 358
		f 4 286 301 318 -301
		mu 0 4 359 360 361 362
		f 4 289 303 -305 -303
		mu 0 4 363 364 365 366
		f 4 292 306 -308 -306
		mu 0 4 367 368 369 370
		f 4 -294 302 308 -307
		mu 0 4 371 372 373 374
		f 4 294 305 -310 -302
		mu 0 4 375 376 377 378
		f 5 295 298 -315 -311 -304
		mu 0 5 379 380 381 395 382
		f 4 -297 300 311 -298
		mu 0 4 383 384 385 386
		f 3 -300 312 -316
		mu 0 3 387 388 389
		f 3 -312 317 -313
		mu 0 3 392 393 394
		f 3 315 316 314
		mu 0 3 396 397 398
		f 3 -319 313 -318
		mu 0 3 399 390 391;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "72011E89-4273-28DB-5B54-D187B9E3ECC6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C994FCB0-4B8F-684F-8E38-86A004706323";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "423FC61D-430F-23B7-1CFC-15800F495112";
createNode displayLayerManager -n "layerManager";
	rename -uid "0BFF0877-4F2F-F2FC-93DA-93AB0F8ED7DF";
createNode displayLayer -n "defaultLayer";
	rename -uid "B73800EB-48EC-9807-A47E-70AE0D187256";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B0E0A63D-44F1-52DB-0BB5-6CABA52CE099";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "84107886-4927-DC30-6E4D-8F980C03981B";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8FE07531-4DA6-C96C-2CF0-1DB069888F20";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "29202734-4943-90B2-D4AF-14B545E42B77";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A1D409C1-4FEE-452A-8B75-DABE01CB4124";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "12DE9869-4739-10DA-353D-6A9309CFAB73";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7F60B2F5-4967-DB85-CFF6-C78E2F64B0BD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 563\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1134\n            -height 795\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 795\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 795\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1.968504 -size 4.724409 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "24466629-47C2-67F3-CCEE-228CB19FF25C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 300 -ast 1 -aet 300 ";
	setAttr ".st" 6;
createNode polyMirror -n "polyMirror1";
	rename -uid "CFBE38A9-41F2-976B-0AA9-39A309FE8372";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.1375633031129837;
	setAttr ".sp" -type "double3" -0.12781326472759247 -1.0231401920318604 -0.037800434976816177 ;
	setAttr ".cm" yes;
	setAttr ".fnf" 147;
	setAttr ".lnf" 293;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "1BC165EE-45E2-809E-EC92-3F9EC67EA1FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[269]" "e[272:275]" "e[278]" "e[281]" "e[604]" "e[607]" "e[609:610]" "e[612]" "e[617:618]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.1844763e-09 1.0883561 -0.025582036 ;
	setAttr ".rs" 59465;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25532681668340818 1.0738020326525359 -0.042440734089307 ;
	setAttr ".cbx" -type "double3" 0.25532679831445559 1.102910199347177 -0.0087233383515397805 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "9402FA3B-49B3-2D59-02B2-68B234E7F1E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[622]" "e[625:626]" "e[628]" "e[630]" "e[632:633]" "e[636]" "e[639:640]" "e[642]" "e[644]" "e[646:647]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.830517e-05 1.0878953 -0.021754134 ;
	setAttr ".rs" 57765;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25592068756162778 1.0773243095308929 -0.034029584594957044 ;
	setAttr ".cbx" -type "double3" 0.25584407722413882 1.098466315451303 -0.0094786828690687913 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "11025AB5-48E6-93D7-59A6-B2AD172D65F6";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[324:337]" -type "float3"  -0.00051726686 -0.0021020167
		 0.0081744818 -0.00092510472 0.0011501577 0.0084909974 -0.0065956395 -0.004462712
		 0.00093138352 -0.0025487223 -0.0039733252 0.0054990835 -0.0088935178 -0.00088655227
		 -0.00075534469 -0.0023290159 0.0035222995 0.0075045275 -0.0044091549 -0.00097813352
		 0.0041569434 0.00059386255 -0.0020832217 0.0080946265 0.0010016967 0.0011689466 0.0084111495
		 0.0066722352 -0.0044439179 0.00085153239 0.0026253106 -0.0039545572 0.0054192282
		 0.008970106 -0.0008677619 -0.00083520001 0.0024056041 0.003541094 0.0074246796 0.0044857506
		 -0.00095934048 0.0040770881;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "61FC78C6-4662-EB4E-46FE-BAB8FE4E9FA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[650]" "e[653:654]" "e[656]" "e[658]" "e[660:661]" "e[664]" "e[667:668]" "e[670]" "e[672]" "e[674:675]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7870395e-05 1.0844599 -0.0061980337 ;
	setAttr ".rs" 39145;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27118662918150083 1.0759250308901458 -0.016130543530873467 ;
	setAttr ".cbx" -type "double3" 0.27107088839471682 1.0929947282702117 0.003734475716062377 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "0A12044C-4A58-17B7-6881-9FA48D13BEF4";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[338:351]" -type "float3"  -0.015226804 -0.0042744428
		 0.017778054 -0.015435285 -0.0026119417 0.01793986 -0.018334042 -0.0054812096 0.014075416
		 -0.016265273 -0.005231054 0.016410407 -0.019508708 -0.0036531028 0.01321316 -0.016152961
		 -0.0013993137 0.017435584 -0.017216325 -0.0036999083 0.015724303 0.015265953 -0.0042648534
		 0.017737236 0.015474441 -0.0026023472 0.01789904 0.018373201 -0.0054716179 0.014034591
		 0.01630443 -0.0052214595 0.016369585 0.019547869 -0.0036435076 0.013172336 0.016192114
		 -0.0013897192 0.017394762 0.017255478 -0.0036903084 0.015683481;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "68815A70-438A-3BF8-17E5-5F9E94E085BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[678]" "e[681:682]" "e[684]" "e[686]" "e[688:689]" "e[692]" "e[695:696]" "e[698]" "e[700]" "e[702:703]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4187163e-05 1.0821975 0.0042132456 ;
	setAttr ".rs" 47701;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28109944785177365 1.0753604556948333 -0.0037657350608627099 ;
	setAttr ".cbx" -type "double3" 0.28095107352197513 1.0890347148806243 0.012192225798078368 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "C6F9098D-4656-73C3-D562-0CA49E728BDE";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[324:365]" -type "float3"  -0.002492758 0.00071774854
		 -0.0025737267 -0.0022365795 -0.0013250656 -0.0027725433 0.0013252986 0.0022005844
		 0.0019759319 -0.0012167246 0.0018931897 -0.00089321355 0.0027686856 -4.5736637e-05
		 0.003035435 -0.0013547312 -0.0028151039 -0.0021529105 -4.8114009e-05 1.1805576e-05
		 -5.0158756e-05 0.0024446484 0.0007059559 -0.0025235692 0.0021884714 -0.0013368583
		 -0.0027223884 -0.0013734103 0.0021888174 0.0020260972 0.0011686117 0.0018813958 -0.00084305339
		 -0.0028167954 -5.7503188e-05 0.0030855979 0.0013066176 -0.0028268974 -0.0021027497
		 3.1359942e-11 -1.1519385e-08 -2.745006e-09 -0.0024704279 0.00071131811 -0.0025506716
		 -0.0022165407 -0.0013132094 -0.0027477066 0.0013134263 0.0021808713 0.001958231 -0.0012058273
		 0.001876243 -0.00088521146 0.0027438779 -4.5300887e-05 0.0030082439 -0.0013425979
		 -0.0027898627 -0.0021336218 -4.7688092e-05 1.1717017e-05 -4.9710961e-05 0.0024227479
		 0.00069963036 -0.0025009622 0.0021688675 -0.0013248624 -0.0026979968 -0.0013611061
		 0.0021692163 0.0020079478 0.0011581408 0.0018645282 -0.00083550188 -0.0027915598
		 -5.7014582e-05 0.0030579485 0.0012949104 -0.0028015778 -0.0020839111 -1.012764e-09
		 -2.4764644e-08 -4.7128252e-09 -0.0098801823 -0.0029618032 0.012263936 -0.010054019
		 -0.0015756156 0.012398842 -0.01247099 -0.0039679846 0.009176692 -0.010746052 -0.0037594391
		 0.011123593 -0.013450408 -0.0024437574 0.0084577501 -0.010652408 -0.00056455482 0.011978377
		 -0.011539033 -0.0024827614 0.010551534 0.0099128289 -0.0029538041 0.012229896 0.010086665
		 -0.0015676168 0.012364808 0.012503628 -0.0039600278 0.0091426549 0.010778703 -0.0037514083
		 0.011089559 0.013483066 -0.0024357217 0.008423714 0.010685054 -0.00055653922 0.011944346
		 0.011571688 -0.0024747078 0.010517496;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "BB28F0DD-40D2-F1B7-5CB9-429C3AE2E83E";
	setAttr ".ics" -type "componentList" 1 "vtx[366:379]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "80930F03-4491-D595-D57E-B7949C78E4EA";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[366:379]" -type "float3"  0.0051221806 -0.0017862709
		 0.006015589 0.0044481116 0.0037701933 0.0065357904 -0.0052430374 -0.0058137565 -0.0063587991
		 0.0016512235 -0.0049814372 0.0014513857 -0.0091334023 0.00029786519 -0.0092674689
		 0.0020724197 0.0078240242 0.0048328447 -0.0014979581 0.00013729026 -0.00086402014
		 -0.0051221806 -0.0017862709 0.0060155946 -0.0044481414 0.0037701933 0.006535782 0.0052430374
		 -0.0058137565 -0.0063587953 -0.0016512235 -0.004981318 0.0014513875 0.0091333725
		 0.00029786519 -0.0092674671 -0.0020724495 0.0078241434 0.0048328354 0.0014979581
		 0.00013740947 -0.00086401455;
createNode polyTweak -n "polyTweak5";
	rename -uid "C3CC0079-4776-AE1B-564A-E7B43E696245";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[149]" -type "float3" -0.0027290625 -0.00058365415 0.0024804419 ;
	setAttr ".tk[322]" -type "float3" 0.0027290625 -0.00058365415 0.0024804419 ;
	setAttr ".tk[341]" -type "float3" 0.00096431776 0.0012999562 0.0012495177 ;
	setAttr ".tk[348]" -type "float3" -0.00096431776 0.0012999562 0.0012495177 ;
	setAttr ".tk[352]" -type "float3" -1.5133992e-09 -3.783498e-10 1.7462298e-09 ;
	setAttr ".tk[355]" -type "float3" 0.00058752421 0.00094720582 0.00077610457 ;
	setAttr ".tk[359]" -type "float3" 1.5133992e-09 -3.783498e-10 1.7462298e-09 ;
	setAttr ".tk[362]" -type "float3" -0.00058752421 0.00094720582 0.00077610457 ;
	setAttr ".tk[366]" -type "float3" -0.0028857691 0.00015153158 0.0036941497 ;
	setAttr ".tk[367]" -type "float3" 0.0028857691 0.00015153158 0.0036941497 ;
createNode polySplit -n "polySplit1";
	rename -uid "225FB548-4239-566C-08A5-629B1FFA359A";
	setAttr -s 2 ".e[0:1]"  0.89999998 0.89999998;
	setAttr -s 2 ".d[0:1]"  -2147483048 -2147483046;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "260FC5C5-4B8C-F5D4-41AC-27B812B0672E";
	setAttr -s 2 ".e[0:1]"  0.89999998 0.89999998;
	setAttr -s 2 ".d[0:1]"  -2147483382 -2147483383;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "16C5AAC0-4FCE-16A2-39F9-36B5D976A9A8";
	setAttr -s 2 ".e[0:1]"  0.2 0.2;
	setAttr -s 2 ".d[0:1]"  -2147483032 -2147483030;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "9D370270-4AB8-4869-44F1-31936E138331";
	setAttr -s 2 ".e[0:1]"  0.2 0.2;
	setAttr -s 2 ".d[0:1]"  -2147483366 -2147483370;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "9A5F7974-4214-AE91-5A47-8FB6530D9603";
	setAttr -s 2 ".e[0:1]"  0.80000001 0.172719;
	setAttr -s 2 ".d[0:1]"  -2147482922 -2147483047;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "00E0B28F-4443-5577-6760-5E9C66220C0E";
	setAttr -s 2 ".e[0:1]"  0.80000001 0.172719;
	setAttr -s 2 ".d[0:1]"  -2147482919 -2147483365;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "83728569-4177-11E6-5AE9-7FA9981BA39A";
	setAttr ".ics" -type "componentList" 2 "f[290]" "f[355]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7166849e-09 1.0751464 -0.011592669 ;
	setAttr ".rs" 36737;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22817828679620877 1.0645268346697478 -0.013991348662368466 ;
	setAttr ".cbx" -type "double3" 0.22817829822957858 1.0857659961611419 -0.0091939896652023095 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "3B2DAE63-4F44-8697-111C-958E72E5C10F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[380:387]" -type "float3"  0.0036230795 0.0024285356
		 0.0089658042 0.002241483 0.00085396849 0.0097635249 0.0016453987 -0.0042339056 0.0092164697
		 0.0028525554 -0.0041482034 0.0082586678 -0.0027369964 -0.0041663214 0.0083483532
		 -0.0035075173 0.0024104309 0.0090554925 -0.0015298373 -0.0042520175 0.0093061589
		 -0.0021259221 0.00083586288 0.0098532131;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "77DA5EBF-4C68-F956-1902-9F9A090064FF";
	setAttr ".dc" -type "componentList" 2 "e[720]" "e[723]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "6BFF7CD0-4751-1251-BF01-178860A322C5";
	setAttr ".dc" -type "componentList" 2 "vtx[368]" "vtx[370]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "FB9F760F-41A1-E601-FD21-6E8FE6098736";
	setAttr ".dc" -type "componentList" 1 "vtx[368:369]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "06B42144-43D4-C4AF-4447-52BFD6BFEDA7";
	setAttr ".ics" -type "componentList" 2 "f[290]" "f[353]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7773537e-05 1.0742346 -0.0025367301 ;
	setAttr ".rs" 56072;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22982368791639463 1.0669372465044646 -0.0042278237947742242 ;
	setAttr ".cbx" -type "double3" 0.22970814084470614 1.0815320398241668 -0.00084563645809095089 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "29C98D10-43AF-9505-61CB-7982052291A7";
	setAttr ".uopa" yes;
	setAttr -s 174 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 -0.028137334 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.0053079333 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[28]" -type "float3" 0 0.0012031489 -0.011998858 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[59]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[113]" -type "float3" 0 -0.087574646 0 ;
	setAttr ".tk[114]" -type "float3" -0.00023420193 -0.031589173 0 ;
	setAttr ".tk[115]" -type "float3" 0.017514929 -0.012195377 0 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.022914998 ;
	setAttr ".tk[131]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[141]" -type "float3" -0.00022638035 0.0069040814 0.0023975219 ;
	setAttr ".tk[142]" -type "float3" 0.0043699471 0.0047987727 0.0062432149 ;
	setAttr ".tk[143]" -type "float3" 0.0012775024 0.00076957711 -0.0062077101 ;
	setAttr ".tk[144]" -type "float3" 0.0033463009 -0.0071378397 -0.0081845038 ;
	setAttr ".tk[145]" -type "float3" 0.01431887 -0.0082315449 0.0015560756 ;
	setAttr ".tk[146]" -type "float3" 0.013307974 -0.0045388499 0.0024526645 ;
	setAttr ".tk[147]" -type "float3" 0.0068405233 -0.01113404 -0.0069045629 ;
	setAttr ".tk[148]" -type "float3" 0.011981111 -0.010435288 -0.0017362391 ;
	setAttr ".tk[149]" -type "float3" 0.0085064005 -0.0074689346 -0.0020337952 ;
	setAttr ".tk[150]" -type "float3" 0.011145184 -0.0018838875 0.0017510634 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.028137334 ;
	setAttr ".tk[152]" -type "float3" 0 -0.0068176524 0.013720393 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.0053079333 ;
	setAttr ".tk[154]" -type "float3" 0 0 0.0043225647 ;
	setAttr ".tk[157]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[160]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[163]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[164]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[165]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[166]" -type "float3" 0 0.0023966918 -0.033886127 ;
	setAttr ".tk[167]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[168]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[169]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[170]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[171]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[172]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[173]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[174]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[175]" -type "float3" 0 0.00096037006 -0.015827578 ;
	setAttr ".tk[177]" -type "float3" 0 0 -0.028137334 ;
	setAttr ".tk[183]" -type "float3" 0 0 -0.0053079333 ;
	setAttr ".tk[186]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[187]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[198]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[199]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[201]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[202]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[203]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[204]" -type "float3" 0 0.0012031489 -0.011998858 ;
	setAttr ".tk[207]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[208]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[209]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[210]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[211]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[212]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[213]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[214]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[215]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[228]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[229]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[230]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[231]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[232]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[233]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[234]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[235]" -type "float3" 0 0 0.020953422 ;
	setAttr ".tk[288]" -type "float3" -0.017514929 -0.012195377 0 ;
	setAttr ".tk[290]" -type "float3" 0 0 -0.022914998 ;
	setAttr ".tk[304]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[314]" -type "float3" 0.00037565772 0.0069542229 0.0022656864 ;
	setAttr ".tk[315]" -type "float3" -0.0042206701 0.004848911 0.0061113816 ;
	setAttr ".tk[316]" -type "float3" -0.0012501269 0.00083329901 -0.0063752485 ;
	setAttr ".tk[317]" -type "float3" -0.003318927 -0.007074126 -0.0083520478 ;
	setAttr ".tk[318]" -type "float3" -0.014291503 -0.0081678014 0.0013885447 ;
	setAttr ".tk[319]" -type "float3" -0.013280602 -0.0044750813 0.0022851434 ;
	setAttr ".tk[320]" -type "float3" -0.0068131541 -0.01107032 -0.0070721023 ;
	setAttr ".tk[321]" -type "float3" -0.011953728 -0.01037157 -0.0019037793 ;
	setAttr ".tk[322]" -type "float3" -0.0084790196 -0.0074051865 -0.0022013276 ;
	setAttr ".tk[323]" -type "float3" -0.011117818 -0.0018201453 0.0015835264 ;
	setAttr ".tk[324]" -type "float3" -0.0081226211 -0.0050886557 0.011006903 ;
	setAttr ".tk[325]" -type "float3" -0.0081722848 -0.0039482801 0.011032082 ;
	setAttr ".tk[326]" -type "float3" -0.010359487 -0.0059277485 0.008625594 ;
	setAttr ".tk[327]" -type "float3" -0.008902071 -0.0057488293 0.010152357 ;
	setAttr ".tk[328]" -type "float3" -0.011073526 -0.0046770633 0.0079677049 ;
	setAttr ".tk[329]" -type "float3" -0.0086030345 -0.0031184442 0.01064029 ;
	setAttr ".tk[330]" -type "float3" -0.0094772447 -0.0047011976 0.0096250996 ;
	setAttr ".tk[331]" -type "float3" 0.0080665322 -0.0050697778 0.010902634 ;
	setAttr ".tk[332]" -type "float3" 0.0081162089 -0.0039294031 0.010927808 ;
	setAttr ".tk[333]" -type "float3" 0.010303399 -0.005908906 0.0085213175 ;
	setAttr ".tk[334]" -type "float3" 0.0088459989 -0.0057300213 0.01004809 ;
	setAttr ".tk[335]" -type "float3" 0.011017432 -0.0046582022 0.0078634303 ;
	setAttr ".tk[336]" -type "float3" 0.0085469577 -0.0030995994 0.010536041 ;
	setAttr ".tk[337]" -type "float3" 0.0094211884 -0.0046823709 0.0095208399 ;
	setAttr ".tk[338]" -type "float3" -0.015681718 -0.0054587503 0.017723862 ;
	setAttr ".tk[339]" -type "float3" -0.015724448 -0.0044985847 0.017745916 ;
	setAttr ".tk[340]" -type "float3" -0.017565768 -0.0061653848 0.015719045 ;
	setAttr ".tk[341]" -type "float3" -0.016434001 -0.0061510634 0.016866675 ;
	setAttr ".tk[342]" -type "float3" -0.018168366 -0.0051124399 0.015166268 ;
	setAttr ".tk[343]" -type "float3" -0.016088001 -0.0037999484 0.01741679 ;
	setAttr ".tk[344]" -type "float3" -0.016823366 -0.0051326309 0.016561173 ;
	setAttr ".tk[345]" -type "float3" 0.015621433 -0.0054409527 0.017623942 ;
	setAttr ".tk[346]" -type "float3" 0.015664164 -0.0044807694 0.017645996 ;
	setAttr ".tk[347]" -type "float3" 0.017505476 -0.0061475807 0.015619097 ;
	setAttr ".tk[348]" -type "float3" 0.016373714 -0.0061332681 0.016766744 ;
	setAttr ".tk[349]" -type "float3" 0.018108068 -0.0050945939 0.015066348 ;
	setAttr ".tk[350]" -type "float3" 0.016027719 -0.0037821089 0.017316844 ;
	setAttr ".tk[351]" -type "float3" 0.016763095 -0.0051147873 0.016461259 ;
	setAttr ".tk[352]" -type "float3" -0.019638617 -0.0058517489 0.022491168 ;
	setAttr ".tk[353]" -type "float3" -0.019667251 -0.005257294 0.022506844 ;
	setAttr ".tk[354]" -type "float3" -0.020806728 -0.0062896274 0.021250289 ;
	setAttr ".tk[355]" -type "float3" -0.020100899 -0.0062951543 0.021957505 ;
	setAttr ".tk[356]" -type "float3" -0.021183174 -0.0056378366 0.020910814 ;
	setAttr ".tk[357]" -type "float3" -0.019894507 -0.0048248218 0.022304866 ;
	setAttr ".tk[358]" -type "float3" -0.020348098 -0.0056500961 0.0217731 ;
	setAttr ".tk[359]" -type "float3" 0.019569762 -0.0058360021 0.022400044 ;
	setAttr ".tk[360]" -type "float3" 0.019598398 -0.0052415589 0.022415712 ;
	setAttr ".tk[361]" -type "float3" 0.020737899 -0.0062738988 0.021159157 ;
	setAttr ".tk[362]" -type "float3" 0.020032067 -0.0062794038 0.021866377 ;
	setAttr ".tk[363]" -type "float3" 0.021114349 -0.0056221057 0.020819698 ;
	setAttr ".tk[364]" -type "float3" 0.019825688 -0.0048090741 0.02221375 ;
	setAttr ".tk[365]" -type "float3" 0.020279283 -0.0056343451 0.021681979 ;
	setAttr ".tk[366]" -type "float3" -0.02123376 -0.005907495 0.022718534 ;
	setAttr ".tk[367]" -type "float3" 0.021164937 -0.0058917901 0.022627424 ;
	setAttr ".tk[368]" -type "float3" -0.002695913 -0.00081441028 -0.0055404631 ;
	setAttr ".tk[369]" -type "float3" 0.0019428319 -0.0079868929 -0.0050023599 ;
	setAttr ".tk[370]" -type "float3" 0.0027232855 -0.00087811716 -0.0053729219 ;
	setAttr ".tk[371]" -type "float3" -0.0017935523 -0.0080370307 -0.0048705214 ;
	setAttr ".tk[372]" -type "float3" -0.0040199384 -0.005875166 -0.0068056174 ;
	setAttr ".tk[373]" -type "float3" -0.0029616123 -0.0057083759 -0.0080106156 ;
	setAttr ".tk[374]" -type "float3" 0.0040473174 -0.0059389048 -0.0066380864 ;
	setAttr ".tk[375]" -type "float3" 0.002988982 -0.0057721008 -0.0078430725 ;
	setAttr ".tk[376]" -type "float3" 0.0055629876 -0.0051809484 0.0090846531 ;
	setAttr ".tk[377]" -type "float3" 0.0066115991 -0.0042865602 0.0088240299 ;
	setAttr ".tk[378]" -type "float3" 0.0071127857 -0.0012964392 0.0092847086 ;
	setAttr ".tk[379]" -type "float3" 0.0062108184 -0.0013158217 0.0096801277 ;
	setAttr ".tk[380]" -type "float3" -0.0064990446 -0.0013471679 0.0098494422 ;
	setAttr ".tk[381]" -type "float3" -0.0058512134 -0.0052122991 0.0092539638 ;
	setAttr ".tk[382]" -type "float3" -0.0074010105 -0.0013277859 0.0094540259 ;
	setAttr ".tk[383]" -type "float3" -0.006899829 -0.0043178843 0.0089933481 ;
	setAttr ".tk[384]" -type "float3" 0.026926981 -0.0043984442 0.031648964 ;
	setAttr ".tk[385]" -type "float3" 0.025802625 -0.0058200462 0.032458972 ;
	setAttr ".tk[386]" -type "float3" 0.025340239 -0.010366913 0.032034948 ;
	setAttr ".tk[387]" -type "float3" 0.026329296 -0.010275871 0.031100899 ;
	setAttr ".tk[388]" -type "float3" -0.026436409 -0.010332573 0.031394407 ;
	setAttr ".tk[389]" -type "float3" -0.027034108 -0.0044550742 0.031942535 ;
	setAttr ".tk[390]" -type "float3" -0.025447387 -0.010423549 0.032328513 ;
	setAttr ".tk[391]" -type "float3" -0.025909742 -0.0058767055 0.032752499 ;
createNode polySplit -n "polySplit7";
	rename -uid "0925C6CC-4704-C892-2DFE-1B94527FA3DF";
	setAttr -s 2 ".e[0:1]"  0.69999999 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483099 -2147483100;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "5DFA238B-4A75-A00C-2F4D-A893C95F3E98";
	setAttr -s 2 ".e[0:1]"  0.69999999 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483439 -2147483438;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "D7F7F58B-475F-02B7-2E98-39A39FFFAA6C";
	setAttr ".dc" -type "componentList" 2 "f[108]" "f[370]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "1F73FE67-4187-9A67-E6BD-EA82171B3696";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[2]" "e[330]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7338957e-09 1.2017918 -0.12795174 ;
	setAttr ".rs" 43992;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10188976103603498 1.1869825508028655 -0.13372257839231888 ;
	setAttr ".cbx" -type "double3" 0.10188975756824359 1.216600933256784 -0.12218090634136598 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "16D55D35-40B4-3962-B704-01BC853B74A1";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[151]" -type "float3" 0 -0.032334048 0 ;
	setAttr ".tk[153]" -type "float3" 0 -0.048501074 0 ;
	setAttr ".tk[157]" -type "float3" 0 -0.006218086 0 ;
	setAttr ".tk[391]" -type "float3" 0.072129786 0.021141494 0 ;
	setAttr ".tk[392]" -type "float3" 0.072129786 0.021141494 0 ;
	setAttr ".tk[393]" -type "float3" -0.072129786 0.021141494 0 ;
	setAttr ".tk[394]" -type "float3" -0.072129786 0.021141494 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "C1FADA09-4FE3-5A9F-7C84-E6AEDD687BF2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -0.011618453 0.012577982 ;
	setAttr ".uvtk[31]" -type "float2" -0.055633463 0.035282172 ;
	setAttr ".uvtk[239]" -type "float2" 0.014840085 0.29628304 ;
	setAttr ".uvtk[248]" -type "float2" 0.0024971382 0.28096277 ;
	setAttr ".uvtk[414]" -type "float2" -0.011618453 0.012577981 ;
	setAttr ".uvtk[456]" -type "float2" -0.055633463 0.035282176 ;
	setAttr ".uvtk[674]" -type "float2" 0.014840085 0.29628304 ;
	setAttr ".uvtk[683]" -type "float2" 0.0024971382 0.28096277 ;
	setAttr ".uvtk[1051]" -type "float2" -0.005367347 0.11052635 ;
	setAttr ".uvtk[1052]" -type "float2" -0.005367347 -0.88947368 ;
	setAttr ".uvtk[1054]" -type "float2" 0.005367347 0.11052635 ;
	setAttr ".uvtk[1057]" -type "float2" 0.005367347 -0.88947368 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "2BD2D13F-477C-A678-9894-878B7752D4C4";
	setAttr ".ics" -type "componentList" 4 "vtx[2]" "vtx[177]" "vtx[395]" "vtx[397]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "AA37B9EA-470E-A5AA-8B19-BD8B32462E97";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[395:397]" -type "float3"  0 2.2351742e-08 0 0 0.097002082
		 0 0 2.2351742e-08 0;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "11874BC9-42D4-56BA-2A06-278F3C2D3132";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[85]" -type "float2" -0.021075146 -0.0013138073 ;
	setAttr ".uvtk[87]" -type "float2" -0.04039602 0.0052536842 ;
	setAttr ".uvtk[104]" -type "float2" -0.0041904235 -0.042167835 ;
	setAttr ".uvtk[165]" -type "float2" -0.042347588 0.047493484 ;
	setAttr ".uvtk[231]" -type "float2" -0.040449861 0.036796089 ;
	setAttr ".uvtk[526]" -type "float2" -0.021075146 -0.0013138073 ;
	setAttr ".uvtk[529]" -type "float2" -0.04039602 0.0052536847 ;
	setAttr ".uvtk[578]" -type "float2" -0.0041904068 -0.042167827 ;
	setAttr ".uvtk[661]" -type "float2" -0.042347558 0.047493473 ;
	setAttr ".uvtk[666]" -type "float2" -0.039466321 0.036985457 ;
	setAttr ".uvtk[1047]" -type "float2" 1.0654645 -0.39689371 ;
	setAttr ".uvtk[1049]" -type "float2" 1.0654646 -0.39689362 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "4997403B-4A74-F1AA-D804-E8A300FD8058";
	setAttr ".ics" -type "componentList" 4 "vtx[42]" "vtx[217]" "vtx[392]" "vtx[394]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "4C5A34F9-4747-EC34-B594-17AE39F30CE0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[392]" -type "float3" -0.032864481 0.092169523 0.049812883 ;
	setAttr ".tk[394]" -type "float3" 0.032864496 0.092169523 0.049812883 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "FB7EE46F-4FAF-808C-1564-75BC784EAB58";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[234]" -type "float2" 0.063335702 -0.036396578 ;
	setAttr ".uvtk[669]" -type "float2" 0.061769515 -0.036442854 ;
	setAttr ".uvtk[1046]" -type "float2" 1.0270544 0.21486966 ;
	setAttr ".uvtk[1048]" -type "float2" 1.0270544 0.21486975 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "01ECB063-45DA-0470-7917-36A408162B25";
	setAttr ".ics" -type "componentList" 3 "vtx[114]" "vtx[287]" "vtx[391:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "F55DF5BC-4E78-24E2-2DFF-16927DBA3502";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[391:392]" -type "float3"  -0.055719391 0.067538738 -6.686151e-05
		 0.055719405 0.067538738 -6.686151e-05;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "D0BCDD1D-4BF1-69DC-0D04-AC96ABC62FF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[213]" "e[550]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7338957e-09 1.3463702 -0.14031048 ;
	setAttr ".rs" 57626;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.064938494806882296 1.3444922353655486 -0.14031047861366669 ;
	setAttr ".cbx" -type "double3" 0.064938491339090909 1.3482481624514251 -0.14031047861366669 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "3B361AAE-4B5F-C899-18E5-0288576D2DF7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[1052]" -type "float2" 0.0028834695 -0.010982967 ;
	setAttr ".uvtk[1055]" -type "float2" -0.0028834692 -0.010982967 ;
	setAttr ".uvtk[1058]" -type "float2" -0.010171507 0.47691688 ;
	setAttr ".uvtk[1063]" -type "float2" 0.017024543 0.47633576 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "05B3A8C3-4A8F-4CFF-46DA-21A7B88439E5";
	setAttr ".ics" -type "componentList" 2 "vtx[391]" "vtx[393]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "A9701A96-47A6-9871-03AD-6EBE76D4618D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[392:394]" -type "float3"  0 -0.041907683 0 0.0002342019
		 -0.064263478 0.0065879077 0 -0.041907683 0;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "AB557882-4142-DD42-8D22-22A6AED06C27";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[1052]" -type "float2" 0.0056695282 -0.021594903 ;
	setAttr ".uvtk[1055]" -type "float2" -0.0056695272 -0.021594903 ;
	setAttr ".uvtk[1058]" -type "float2" -0.013038065 -0.028865799 ;
	setAttr ".uvtk[1059]" -type "float2" 0.97679043 0.44805115 ;
	setAttr ".uvtk[1062]" -type "float2" -0.97600114 0.46068418 ;
	setAttr ".uvtk[1063]" -type "float2" 0.0076255067 -0.032657068 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "D68E29D5-4E32-B12A-BC23-78A419A1BA80";
	setAttr ".ics" -type "componentList" 1 "vtx[391:393]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "859A8B9F-4DFA-3305-9E38-069EFCD5F2F1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[392:393]" -type "float3"  0.064938493 -0.018599868 0.0065879077
		 -0.064938493 -0.018599868 0.0065879077;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "9FC353C3-4972-841E-06EA-A8B9EBF311B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[209]" "e[549]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7166849e-09 1.2955739 -0.11370972 ;
	setAttr ".rs" 58586;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1617603393846716 1.2466557409197478 -0.14031047861366669 ;
	setAttr ".cbx" -type "double3" 0.16176035081804141 1.3444922353655486 -0.087108952210239579 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "7C3A7BFB-4A81-16BA-29DF-DDAAC1EE353A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[1052]" -type "float2" 0.0055420827 -0.021109471 ;
	setAttr ".uvtk[1055]" -type "float2" -0.0055420818 -0.021109471 ;
	setAttr ".uvtk[1058]" -type "float2" -0.0023146181 -0.065825775 ;
	setAttr ".uvtk[1061]" -type "float2" 0.0025303962 -0.066078484 ;
	setAttr ".uvtk[1064]" -type "float2" -0.33225095 0.59819782 ;
	setAttr ".uvtk[1069]" -type "float2" 0.33225095 0.59819776 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "4CE02531-4C24-E51A-F515-7083BC8C6982";
	setAttr ".ics" -type "componentList" 3 "vtx[391]" "vtx[393]" "vtx[395]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "FB1E854A-48BA-1735-962D-9B917E9E3E9A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[392:395]" -type "float3"  0.060505826 -0.01360281 0
		 0.064938493 -0.060507551 0.0065879077 -0.060505826 -0.01360281 0 -0.064938493 -0.060507551
		 0.0065879077;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "2D05C902-4572-A491-77AA-38B6773B0177";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -0.0078810034 0.0085318638 ;
	setAttr ".uvtk[31]" -type "float2" -0.05198098 0.032965805 ;
	setAttr ".uvtk[239]" -type "float2" 0.0095642712 0.19095114 ;
	setAttr ".uvtk[248]" -type "float2" 0.0016055942 0.18065399 ;
	setAttr ".uvtk[414]" -type "float2" -0.0078810034 0.0085318638 ;
	setAttr ".uvtk[456]" -type "float2" -0.051980976 0.032965805 ;
	setAttr ".uvtk[674]" -type "float2" 0.0095642712 0.19095114 ;
	setAttr ".uvtk[683]" -type "float2" 0.0016055942 0.18065399 ;
	setAttr ".uvtk[1051]" -type "float2" -0.0092790248 0.0017077364 ;
	setAttr ".uvtk[1053]" -type "float2" 0.0092790239 0.0017077366 ;
	setAttr ".uvtk[1065]" -type "float2" 0.0044286628 0.05602691 ;
	setAttr ".uvtk[1068]" -type "float2" -0.0044286498 0.056026656 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "A72C4D1A-4AEE-EE60-266A-21B9B95B5656";
	setAttr ".ics" -type "componentList" 3 "vtx[2]" "vtx[177]" "vtx[392:393]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "5979EACC-457E-74FA-3E3C-0B9C77D67544";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[392:393]" -type "float3"  -0.00063522905 -0.016452014
		 -0.035071954 0.00063524395 -0.016452014 -0.035071954;
createNode polyTweak -n "polyTweak16";
	rename -uid "1BC550E4-477C-B625-C45D-3A97CCF0FB56";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.035034481 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.010116546 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.0052440101 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.044901919 ;
	setAttr ".tk[12]" -type "float3" 0 0.021956136 0.011135296 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.037985127 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.014627039 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.035034481 ;
	setAttr ".tk[78]" -type "float3" 0 0 -1.3969839e-09 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.025774395 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.012206953 ;
	setAttr ".tk[115]" -type "float3" 0.015860049 0 0 ;
	setAttr ".tk[122]" -type "float3" -0.0010060561 -0.0016530779 0.015980631 ;
	setAttr ".tk[123]" -type "float3" 0.005951778 -0.0016530779 0.010119463 ;
	setAttr ".tk[126]" -type "float3" -0.0023184465 0 -0.0015638119 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.010116546 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.019801853 ;
	setAttr ".tk[155]" -type "float3" 0 5.4886321e-05 -0.055217579 ;
	setAttr ".tk[157]" -type "float3" 0 0.021956136 0.011135296 ;
	setAttr ".tk[175]" -type "float3" 0 0 -0.035034481 ;
	setAttr ".tk[180]" -type "float3" 0 0 0.010116546 ;
	setAttr ".tk[181]" -type "float3" 0 0 -0.0052440101 ;
	setAttr ".tk[184]" -type "float3" 0 0 -0.044901919 ;
	setAttr ".tk[187]" -type "float3" 0 0.021956136 0.011135296 ;
	setAttr ".tk[191]" -type "float3" 0 0 -0.037985127 ;
	setAttr ".tk[192]" -type "float3" 0 0 -0.014627039 ;
	setAttr ".tk[195]" -type "float3" 0 0 -0.035034481 ;
	setAttr ".tk[252]" -type "float3" 0 0 -1.3969839e-09 ;
	setAttr ".tk[287]" -type "float3" 0 0 -0.012206953 ;
	setAttr ".tk[288]" -type "float3" -0.015860049 0 0 ;
	setAttr ".tk[295]" -type "float3" 0.0010060561 -0.0016530779 0.015980631 ;
	setAttr ".tk[296]" -type "float3" -0.005951778 -0.0016530779 0.010119463 ;
	setAttr ".tk[299]" -type "float3" 0.0023184465 0 -0.0015638119 ;
	setAttr ".tk[391]" -type "float3" 0 0 -0.042658839 ;
createNode polySplit -n "polySplit9";
	rename -uid "CB6B118B-4D7C-0013-19A8-80B975D6A57B";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483348 -2147483313;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "E8C36296-4067-3BCC-C11C-77ACD8285475";
	setAttr -s 7 ".e[0:6]"  1 0.5 0.5 0.5 0.5 0.5 0;
	setAttr -s 7 ".d[0:6]"  -2147483639 -2147483596 -2147483597 -2147483336 -2147483257 -2147483254 
		-2147482878;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "6330EDDE-4191-1108-BC17-C48EBF041B79";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[1]" -type "float3" 0.0042540841 0 -0.0010971385 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.0055267131 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.0044042645 ;
	setAttr ".tk[42]" -type "float3" 0.0027957587 -0.0025985932 -3.5471516e-05 ;
	setAttr ".tk[48]" -type "float3" 0.0017041222 -0.0015839543 -2.1621481e-05 ;
	setAttr ".tk[75]" -type "float3" 0.009588249 -0.0089121712 -0.00012165246 ;
	setAttr ".tk[110]" -type "float3" 0.0056412541 -0.0052434881 -7.1574395e-05 ;
	setAttr ".tk[111]" -type "float3" 0.0079058306 -0.007348381 -0.00010030637 ;
	setAttr ".tk[112]" -type "float3" 0.009588249 -0.0089121712 -0.00012165246 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.012514004 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.012514004 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.014237976 ;
	setAttr ".tk[151]" -type "float3" 0 0 0.0092454171 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.0086053945 ;
	setAttr ".tk[153]" -type "float3" -2.910383e-11 0 -0.0068718847 ;
	setAttr ".tk[165]" -type "float3" 0 0 -0.0084409658 ;
	setAttr ".tk[176]" -type "float3" -0.0042540841 0 -0.0010971385 ;
	setAttr ".tk[177]" -type "float3" 0 0 0.0055267131 ;
	setAttr ".tk[182]" -type "float3" 0 0 -0.0044042645 ;
	setAttr ".tk[217]" -type "float3" -0.0024742163 -0.0022997484 -3.1391715e-05 ;
	setAttr ".tk[222]" -type "float3" -0.0013826102 -0.001285121 -1.7542021e-05 ;
	setAttr ".tk[249]" -type "float3" -0.0092667462 -0.0086133396 -0.00011757339 ;
	setAttr ".tk[284]" -type "float3" -0.0053197225 -0.0049446248 -6.7494853e-05 ;
	setAttr ".tk[285]" -type "float3" -0.0075843283 -0.0070495266 -9.6227377e-05 ;
	setAttr ".tk[286]" -type "float3" -0.0092667462 -0.0086133396 -0.00011757339 ;
	setAttr ".tk[293]" -type "float3" 0 0 -0.012514004 ;
	setAttr ".tk[294]" -type "float3" 0 0 -0.012514004 ;
	setAttr ".tk[397]" -type "float3" 0 0 -0.0066656079 ;
createNode polySplit -n "polySplit11";
	rename -uid "67E488C2-440D-DAC4-EC58-879694FF1C48";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.126384 -0.78792202 -0.080702998 
		0.109532 -0.77500898 -0.086792998 0.096070997 -0.76219702 -0.089179002 0.087825999 
		-0.74560899 -0.081961997;
	setAttr -s 6 ".e[0:5]"  1 254 254 254 254 1;
	setAttr -s 6 ".d[0:5]"  -2147483224 0 1 2 3 -2147483100;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "8B1F6414-4A72-F5E0-F912-FCB944856D4C";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.154402 -0.82714999 -0.068007998 
		-0.10357 -0.77912003 -0.080801003 -0.092490003 -0.764983 -0.085735001 -0.086096004 
		-0.74725699 -0.080283999;
	setAttr -s 6 ".e[0:5]"  0 369 369 369 369 0;
	setAttr -s 6 ".d[0:5]"  -2147483438 0 1 2 3 -2147483436;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "1939C762-4DDA-9308-DD37-82A5D7A86AD6";
	setAttr ".dc" -type "componentList" 1 "f[384]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "11945919-4275-6376-E6B2-E980ED850E06";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[222]" -type "float2" -0.003218574 -0.010636494 ;
	setAttr ".uvtk[663]" -type "float2" -0.0030947626 -0.010610065 ;
	setAttr ".uvtk[1085]" -type "float2" 0.0036846383 0.0075025805 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "2114A86F-4195-B01F-F732-8E91BA7B6BD8";
	setAttr ".ics" -type "componentList" 3 "vtx[110]" "vtx[284]" "vtx[403]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "8DF55428-4489-5851-1132-759E42F13856";
	setAttr ".uopa" yes;
	setAttr ".tk[403]" -type "float3"  0.00060833991 0.00082594156 -0.0013287887;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "0641B97C-40E5-8132-1DE4-9F8F31408AB6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[224]" -type "float2" -0.035957284 -0.020709055 ;
	setAttr ".uvtk[604]" -type "float2" -0.023816327 -0.02408177 ;
	setAttr ".uvtk[1084]" -type "float2" -0.0013093101 -0.00069282169 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "CFE57DDA-45D3-3F0A-E135-1EA7358B619B";
	setAttr ".ics" -type "componentList" 3 "vtx[112]" "vtx[286]" "vtx[402]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "983F6F29-4741-CF72-3465-F0AC71C1DF66";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[75]" -type "float3" 0.0022911483 -0.0021295981 -2.9069344e-05 ;
	setAttr ".tk[111]" -type "float3" 0.0026034634 -0.0024198906 -3.3031869e-05 ;
	setAttr ".tk[112]" -type "float3" 0.0033395512 -0.0031040763 -4.2371084e-05 ;
	setAttr ".tk[249]" -type "float3" 4.6566129e-10 -4.6566129e-10 -1.4551915e-11 ;
	setAttr ".tk[400]" -type "float3" -0.0026034634 -0.0024198906 -3.3031869e-05 ;
	setAttr ".tk[401]" -type "float3" -0.0022911483 -0.0021295976 -2.906933e-05 ;
	setAttr ".tk[402]" -type "float3" -0.0008563993 -0.00051550614 0.00010896511 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "0C78BC4E-4031-1430-5AAC-06B4785B1756";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[163]" -type "float2" -0.029100623 -0.042952131 ;
	setAttr ".uvtk[226]" -type "float2" 0.020181283 -0.03188071 ;
	setAttr ".uvtk[607]" -type "float2" -0.028863801 -0.042794406 ;
	setAttr ".uvtk[610]" -type "float2" 0.020740947 -0.031366792 ;
	setAttr ".uvtk[1083]" -type "float2" 0.00016676523 -0.0066037332 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "4E9B7C5E-4CC7-8347-D1A5-13B9A34649A8";
	setAttr ".ics" -type "componentList" 3 "vtx[75]" "vtx[249]" "vtx[401]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "6FAEC78B-495A-4100-E5B7-66B019BDA33B";
	setAttr ".uopa" yes;
	setAttr ".tk[401]" -type "float3"  0.0026240945 0.0020411611 -0.00014550239;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "EB52E9CB-4D79-BCED-B5CE-BF9F8FB2D191";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[223]" -type "float2" 0.021272251 -0.06255658 ;
	setAttr ".uvtk[609]" -type "float2" 0.0081448397 -0.036847644 ;
	setAttr ".uvtk[1082]" -type "float2" 0.0028093238 -0.0080797309 ;
	setAttr ".uvtk[1089]" -type "float2" 0.0028550578 -0.00045496764 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "32AC7CB3-437D-CD2C-34CB-C897103ECD34";
	setAttr ".ics" -type "componentList" 4 "vtx[111]" "vtx[285]" "vtx[400]" "vtx[404]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak21";
	rename -uid "406B2ABD-48D6-728D-35B8-E6986D33EF36";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[111]" -type "float3" -1.8715858e-05 0.0010406971 0.0018041134 ;
	setAttr ".tk[400]" -type "float3" 0.0031803846 0.0024499297 -5.5976212e-05 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "9D34158A-414A-4BED-87C8-F98C6987DC1D";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[44]" -type "float3" 0 0 0.0050165066 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.0050165066 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.0067689861 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.0067689861 ;
	setAttr ".tk[75]" -type "float3" 0.0084309541 -0.0072048167 -0.011414337 ;
	setAttr ".tk[110]" -type "float3" 0.0084309541 -0.0072048185 -0.011414337 ;
	setAttr ".tk[111]" -type "float3" 0.0084309522 -0.0072048148 -0.011414337 ;
	setAttr ".tk[112]" -type "float3" 0.0084309541 -0.0072048185 -0.011414337 ;
	setAttr ".tk[113]" -type "float3" 0 0.020216057 -0.0066260058 ;
	setAttr ".tk[114]" -type "float3" 0 0.020216057 -0.0066260058 ;
	setAttr ".tk[218]" -type "float3" 0 0 0.0050165066 ;
	setAttr ".tk[219]" -type "float3" 0 0 0.0050165066 ;
	setAttr ".tk[220]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[221]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[225]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[226]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[235]" -type "float3" 0 0 0.0067689861 ;
	setAttr ".tk[237]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[238]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[239]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[240]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[241]" -type "float3" 0 0 0.037424583 ;
	setAttr ".tk[242]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[244]" -type "float3" 0 0 0.019581022 ;
	setAttr ".tk[245]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[246]" -type "float3" 0 0 0.037424579 ;
	setAttr ".tk[247]" -type "float3" 0 0 0.0067689861 ;
	setAttr ".tk[249]" -type "float3" -0.0084309541 -0.0072048148 -0.011414337 ;
	setAttr ".tk[284]" -type "float3" -0.0084309541 -0.0072048185 -0.011414335 ;
	setAttr ".tk[285]" -type "float3" -0.0084309541 -0.0072048204 -0.011414337 ;
	setAttr ".tk[286]" -type "float3" -0.0084309541 -0.0072048195 -0.011414337 ;
	setAttr ".tk[287]" -type "float3" 0 0.020216057 -0.0066260058 ;
	setAttr ".tk[391]" -type "float3" 0 0 -0.014863308 ;
createNode polySplit -n "polySplit13";
	rename -uid "3183B4F1-42BB-A722-408F-988DE6A93CEC";
	setAttr -s 5 ".e[0:4]"  1 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147483282 -2147483314 -2147483328 -2147483352 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "71982287-41CA-F090-6A24-52971A3D95C2";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483311 -2147482860 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "001EC175-4331-6338-0435-798DD8F49452";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147482858 -2147482854 -2147482855;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "2D1730DB-4A03-7848-FB01-4A9B3000C219";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7338957e-09 0.9312011 -0.14764039 ;
	setAttr ".rs" 53639;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.054628217464085971 0.88439492243830253 -0.16404447446852127 ;
	setAttr ".cbx" -type "double3" 0.054628213996294583 0.97800723570887138 -0.13123629729538361 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "FB939D85-4D39-AE7D-5DB6-EDB368035741";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1291669e-08 0.93221426 -0.15555194 ;
	setAttr ".rs" 35097;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.025279549753066455 0.91051546591822197 -0.16456774364500443 ;
	setAttr ".cbx" -type "double3" 0.025279507169726934 0.95391301173273613 -0.14653614650755326 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "327211C5-4BF0-757B-693C-53BFE8DB22E1";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[407]" -type "float3" -5.8727284e-10 -0.0012284609 -0.0058601634 ;
	setAttr ".tk[408]" -type "float3" 0.024148174 -0.024094176 -0.0053292662 ;
	setAttr ".tk[409]" -type "float3" -6.3846367e-10 -0.024025902 -0.00052326219 ;
	setAttr ".tk[410]" -type "float3" -0.024148174 -0.024094176 -0.0053292643 ;
	setAttr ".tk[411]" -type "float3" -0.026748415 0.0010132416 -0.010314558 ;
	setAttr ".tk[412]" -type "float3" 0.02674843 0.0010132411 -0.010314557 ;
	setAttr ".tk[413]" -type "float3" -0.029348668 0.026120601 -0.015299845 ;
	setAttr ".tk[414]" -type "float3" -5.5988708e-10 0.021569021 -0.011197074 ;
	setAttr ".tk[415]" -type "float3" 0.029348707 0.026120601 -0.015299849 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "B40985F9-46A2-D4BA-A11B-6D8C7AD9811E";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7566379e-08 0.92288017 -0.20007892 ;
	setAttr ".rs" 35360;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.025279546027776156 0.90118137854639579 -0.20909472297220627 ;
	setAttr ".cbx" -type "double3" 0.025279510895017232 0.94457892436090996 -0.1910631258347551 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak24";
	rename -uid "99CE3765-4A32-2417-DC9B-B09752261984";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[415]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[416]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[417]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[418]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[419]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[420]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[421]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[422]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
	setAttr ".tk[423]" -type "float3" -4.5637591e-09 -0.0093341321 -0.044526972 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "83184755-4C9D-D3B5-25D2-BA8E3DAB2A41";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.2531537e-09 0.90532804 -0.28380883 ;
	setAttr ".rs" 42653;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.02527953671455041 0.88362924117151787 -0.29282461594133774 ;
	setAttr ".cbx" -type "double3" 0.025279520208242978 0.92702678698603203 -0.27479301880388657 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak25";
	rename -uid "5BE67C7F-4A30-A08A-192C-A8A3A7A42680";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[423]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[424]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[425]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[426]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[427]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[428]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[429]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[430]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
	setAttr ".tk[431]" -type "float3" -8.5818286e-09 -0.017552175 -0.083729886 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E91351DA-4E76-A949-9DDF-EC937A259357";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.0257312e-10 0.89126265 -0.35090527 ;
	setAttr ".rs" 63494;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.025279529263969813 0.86956385630671074 -0.35992105792551438 ;
	setAttr ".cbx" -type "double3" 0.025279527658823575 0.9129614021212249 -0.3418894607880632 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak26";
	rename -uid "D054FB59-45FD-B370-FC6E-1F96C1D8A905";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[431]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[432]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[433]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[434]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[435]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[436]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[437]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[438]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
	setAttr ".tk[439]" -type "float3" -6.876995e-09 -0.014065326 -0.067096427 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "486F3212-4BC7-5CE3-0ADF-4F9A0C72F4E1";
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[385:386]" "f[388:392]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.6480075e-09 0.87732029 -0.4174149 ;
	setAttr ".rs" 49189;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.025279521813389216 0.85562149542872001 -0.42643069218187729 ;
	setAttr ".cbx" -type "double3" 0.025279535109404172 0.89901904124323417 -0.40839909504442612 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "8F038D8D-46B1-46CE-3643-319AAFC47BCD";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[439]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[440]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[441]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[442]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[443]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[444]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[445]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[446]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
	setAttr ".tk[447]" -type "float3" -6.8168515e-09 -0.013942318 -0.066509642 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "6F0C39E2-4923-D9EA-675B-CDA5D2360B4B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:895]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak28";
	rename -uid "E6E0ACC8-4885-116D-22B8-5588E0DE7320";
	setAttr ".uopa" yes;
	setAttr -s 49 ".tk";
	setAttr ".tk[407]" -type "float3" 0.0073222443 -0.0086558498 0 ;
	setAttr ".tk[408]" -type "float3" 0.00083876762 -3.2388285e-05 0 ;
	setAttr ".tk[409]" -type "float3" -0.0056447103 -0.0086558498 0 ;
	setAttr ".tk[410]" -type "float3" 0.0041915393 -0.0018922671 0 ;
	setAttr ".tk[411]" -type "float3" 0.0011902503 -0.0018922671 0 ;
	setAttr ".tk[412]" -type "float3" -0.0070409891 0.0048713717 0 ;
	setAttr ".tk[413]" -type "float3" 0.00083876762 -0.015938899 0 ;
	setAttr ".tk[414]" -type "float3" 0.008718512 0.0048713717 0 ;
	setAttr ".tk[416]" -type "float3" 0 0.011932952 0 ;
	setAttr ".tk[418]" -type "float3" 0.015305044 0 0 ;
	setAttr ".tk[419]" -type "float3" -0.009923256 0 0 ;
	setAttr ".tk[421]" -type "float3" 0 -0.023699269 0 ;
	setAttr ".tk[423]" -type "float3" -0.011420223 0.0135002 0 ;
	setAttr ".tk[424]" -type "float3" -0.0013081939 0.030594828 0 ;
	setAttr ".tk[425]" -type "float3" 0.0088038417 0.0135002 0 ;
	setAttr ".tk[426]" -type "float3" 0.03263836 0.0029512895 0 ;
	setAttr ".tk[427]" -type "float3" -0.027256567 0.0029512895 0 ;
	setAttr ".tk[428]" -type "float3" 0.010981562 -0.0075976951 0 ;
	setAttr ".tk[429]" -type "float3" -0.0013081937 -0.035211705 0 ;
	setAttr ".tk[430]" -type "float3" -0.013597925 -0.0075976951 0 ;
	setAttr ".tk[431]" -type "float3" -0.020142311 0.023810845 0 ;
	setAttr ".tk[432]" -type "float3" -0.0023073142 0.044847656 0 ;
	setAttr ".tk[433]" -type "float3" 0.015527688 0.023810845 0 ;
	setAttr ".tk[434]" -type "float3" 0.04587651 0.0052052904 0 ;
	setAttr ".tk[435]" -type "float3" -0.040494725 0.0052052904 0 ;
	setAttr ".tk[436]" -type "float3" 0.019368622 -0.013400354 0 ;
	setAttr ".tk[437]" -type "float3" -0.0023073142 -0.043873891 0 ;
	setAttr ".tk[438]" -type "float3" -0.023983218 -0.013400354 0 ;
	setAttr ".tk[439]" -type "float3" -0.019815357 0.023424353 0 ;
	setAttr ".tk[440]" -type "float3" -0.002269862 0.044313375 0 ;
	setAttr ".tk[441]" -type "float3" 0.015275642 0.023424353 0 ;
	setAttr ".tk[442]" -type "float3" 0.045380265 0.0051208092 0 ;
	setAttr ".tk[443]" -type "float3" -0.039998479 0.0051208092 0 ;
	setAttr ".tk[444]" -type "float3" 0.01905423 -0.01318284 0 ;
	setAttr ".tk[445]" -type "float3" -0.002269862 -0.040692545 0 ;
	setAttr ".tk[446]" -type "float3" -0.023593916 -0.01318284 0 ;
	setAttr ".tk[447]" -type "float3" -4.727057e-09 -0.0096681202 -0.074681252 ;
	setAttr ".tk[448]" -type "float3" -0.0040269857 -0.0049077021 -0.04612023 ;
	setAttr ".tk[449]" -type "float3" -0.00046129763 0.0088453516 -0.04612023 ;
	setAttr ".tk[450]" -type "float3" 0.003104391 -0.0049077021 -0.04612023 ;
	setAttr ".tk[451]" -type "float3" 0.021417081 -0.0086274436 -0.04612023 ;
	setAttr ".tk[452]" -type "float3" -0.016035303 -0.0086274436 -0.04612023 ;
	setAttr ".tk[453]" -type "float3" 0.0038722961 -0.012347209 -0.04612023 ;
	setAttr ".tk[454]" -type "float3" -0.00046129763 -0.02774555 -0.04612023 ;
	setAttr ".tk[455]" -type "float3" -0.004794884 -0.012347209 -0.04612023 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "3FFB9332-4C61-8B4C-6173-3DB31065EC8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:895]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak29";
	rename -uid "85D941E2-4369-6ABC-E62E-A3A84B989281";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[4]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[21]" -type "float3" 0.021410454 -0.010147283 -2.4556652e-05 ;
	setAttr ".tk[42]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[48]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[111]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[114]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[179]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[196]" -type "float3" -0.02141045 -0.010147284 -2.4556652e-05 ;
	setAttr ".tk[217]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[222]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[249]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[284]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[285]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[286]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[287]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[400]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[401]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
	setAttr ".tk[402]" -type "float3" 0 9.3132257e-09 -7.2759576e-12 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "AEF207B8-49BA-FA88-F87C-9D853623BB4C";
	setAttr ".dc" -type "componentList" 1 "f[254]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "EE6D2271-4A4A-EC89-964B-EB9339C706E3";
	setAttr ".dc" -type "componentList" 1 "f[368]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "DAE9C9BA-4260-973B-6002-3D93B1CED87C";
	setAttr ".dc" -type "componentList" 1 "f[382]";
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "04E2AFCF-436F-4E6A-E8A4-A88C299EA58B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[209]" "e[546]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7166849e-09 1.3056819 -0.12312619 ;
	setAttr ".rs" 46124;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1617603393846716 1.2466557409197478 -0.15914342294722 ;
	setAttr ".cbx" -type "double3" 0.16176035081804141 1.3647082235247283 -0.087108952210239579 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "48CFB96F-4B50-F8F9-9355-CF962CC54BD7";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[42]" -type "float3" 0 -9.3132257e-10 -1.8189894e-12 ;
	setAttr ".tk[75]" -type "float3" -0.031339101 0.030333675 0.006371777 ;
	setAttr ".tk[110]" -type "float3" -0.025060402 0.02425638 0.0050952113 ;
	setAttr ".tk[111]" -type "float3" -0.026055021 0.025219141 0.0052974364 ;
	setAttr ".tk[112]" -type "float3" -0.032347161 0.031309411 0.0065767379 ;
	setAttr ".tk[217]" -type "float3" 0 -9.3132257e-10 -1.8189894e-12 ;
	setAttr ".tk[249]" -type "float3" 0.029129723 0.0281952 0.0059225764 ;
	setAttr ".tk[284]" -type "float3" 0.025054166 0.02425042 0.0050939554 ;
	setAttr ".tk[285]" -type "float3" 0.024249449 0.023471493 0.0049303332 ;
	setAttr ".tk[286]" -type "float3" 0.029129686 0.028195174 0.0059225732 ;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "CC9BB2A9-4CF4-BBF9-305B-F3B56585F87F";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[101]" -type "float2" 0.010330136 -0.067177638 ;
	setAttr ".uvtk[118]" -type "float2" 0.060075976 -0.038578443 ;
	setAttr ".uvtk[161]" -type "float2" -0.014068007 0.024231503 ;
	setAttr ".uvtk[529]" -type "float2" 0.040030677 -0.032512065 ;
	setAttr ".uvtk[581]" -type "float2" 0.012381455 -0.066479944 ;
	setAttr ".uvtk[676]" -type "float2" -0.020984638 0.035272505 ;
	setAttr ".uvtk[1158]" -type "float2" -0.38007158 -0.13932243 ;
	setAttr ".uvtk[1163]" -type "float2" 0.3802065 -0.13482413 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "59141239-4355-8F1B-6B87-339B017F909C";
	setAttr ".ics" -type "componentList" 4 "vtx[48]" "vtx[222]" "vtx[453]" "vtx[455]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak31";
	rename -uid "97A9081D-4229-36FC-E5AE-25B0E2265941";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[453]" -type "float3" 0.019504048 0.075644374 -2.1621585e-05 ;
	setAttr ".tk[454]" -type "float3" -0.0068306546 0.028928097 0.038227227 ;
	setAttr ".tk[455]" -type "float3" -0.019182526 0.075943232 -1.7538667e-05 ;
	setAttr ".tk[456]" -type "float3" 0.0068306546 0.028928097 0.038227227 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "AF880917-4A23-2653-B09A-B3A1E7DA163B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[453]" -type "float3" -0.010166434 -0.024936521 0.0090700481 ;
	setAttr ".tk[454]" -type "float3" 0.010166434 -0.024936521 0.0090700481 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "41367713-4E87-71DD-7125-E0BD4A0BD784";
	setAttr ".dc" -type "componentList" 1 "vtx[453:454]";
createNode polySplit -n "polySplit16";
	rename -uid "C6073496-4B25-42F7-DDA3-73B9335564A1";
	setAttr -s 4 ".e[0:3]"  0.2 0.40000001 0.60000002 0.80000001;
	setAttr -s 4 ".d[0:3]"  -2147482756 -2147482756 -2147482756 -2147482756;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "2387527D-449D-B2D8-AD1D-B396F2BB7543";
	setAttr -s 4 ".e[0:3]"  0.80000001 0.60000002 0.40000001 0.2;
	setAttr -s 4 ".d[0:3]"  -2147482757 -2147482757 -2147482757 -2147482757;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "2F0A7F7F-4E1C-3883-00C3-D1BC6E367441";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[85]" -type "float2" -0.0082831755 -0.0070568663 ;
	setAttr ".uvtk[87]" -type "float2" -0.025604513 0.0081897788 ;
	setAttr ".uvtk[104]" -type "float2" 0.0044070804 -0.04670715 ;
	setAttr ".uvtk[165]" -type "float2" 0.017607294 0.020659873 ;
	setAttr ".uvtk[229]" -type "float2" -0.018357292 0.040268172 ;
	setAttr ".uvtk[532]" -type "float2" -0.021063222 -0.0071685561 ;
	setAttr ".uvtk[535]" -type "float2" -0.032575406 0.0085842321 ;
	setAttr ".uvtk[584]" -type "float2" 0.0022103235 -0.055568952 ;
	setAttr ".uvtk[675]" -type "float2" 0.0015607756 0.038420703 ;
	setAttr ".uvtk[678]" -type "float2" -0.041400302 0.12487012 ;
	setAttr ".uvtk[1165]" -type "float2" 0.0022711835 1.0293667 ;
	setAttr ".uvtk[1166]" -type "float2" -0.0021610938 1.0295639 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "24E49D69-43C0-4FD8-F7B4-A783A1BC8BD8";
	setAttr ".ics" -type "componentList" 3 "vtx[42]" "vtx[217]" "vtx[456:457]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak33";
	rename -uid "DD394DBC-4E64-9E93-E195-A5B009BE7980";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[456]" -type "float3" -0.00048714876 0.033705473 0.054277912 ;
	setAttr ".tk[457]" -type "float3" 0.00074438751 0.033466458 0.054274648 ;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "CE0245CE-4A7F-03CF-3EFB-EF8F5B76AEEA";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[222]" -type "float2" 0.0020326474 0.028435709 ;
	setAttr ".uvtk[677]" -type "float2" 0.0089348331 0.028017012 ;
	setAttr ".uvtk[1163]" -type "float2" -0.048260596 0.020232812 ;
	setAttr ".uvtk[1168]" -type "float2" 0.048186172 0.017544122 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "C8D5A73B-40E8-5471-0807-EB93F4A536D0";
	setAttr ".ics" -type "componentList" 4 "vtx[110]" "vtx[284]" "vtx[454]" "vtx[457]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak34";
	rename -uid "93572D7D-4324-69F9-2EEC-2996D583893D";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[75]" -type "float3" 0.027571805 -0.013217306 -0.0055274651 ;
	setAttr ".tk[110]" -type "float3" 0.026061986 -0.010802844 -0.0054151616 ;
	setAttr ".tk[111]" -type "float3" 0.02241423 -0.011549254 -0.0044362773 ;
	setAttr ".tk[112]" -type "float3" 0.028720982 -0.01296373 -0.0058380286 ;
	setAttr ".tk[249]" -type "float3" -0.027549211 -0.013224177 -0.0055211312 ;
	setAttr ".tk[284]" -type "float3" -0.026036017 -0.010808177 -0.0054081953 ;
	setAttr ".tk[285]" -type "float3" -0.022436049 -0.011556005 -0.0044408091 ;
	setAttr ".tk[286]" -type "float3" -0.028699908 -0.012971291 -0.0058319806 ;
	setAttr ".tk[454]" -type "float3" 0.0063571259 -0.0043593049 0.0032951981 ;
	setAttr ".tk[457]" -type "float3" -0.0062087849 -0.0044674873 0.0032878518 ;
createNode polySplit -n "polySplit18";
	rename -uid "DD00A3FE-4BC1-4D42-D2EB-6E9520A1321A";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147482755;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "C9F914E8-4F69-6267-6CCB-598C6E675434";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147482752;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "2ADB710A-42FC-4B95-A9D6-C8B9D95B63F7";
	setAttr ".e[0]"  0.15876;
	setAttr ".d[0]"  -2147482754;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "77571CCD-44EE-766E-FC91-ECBF5610FC73";
	setAttr ".e[0]"  0.84123999;
	setAttr ".d[0]"  -2147482753;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "61A2020B-4E5B-1A96-F9C3-B49998371321";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[223]" -type "float2" 0.0091139749 0.00072898698 ;
	setAttr ".uvtk[623]" -type "float2" 0.0082120216 -0.0088152401 ;
	setAttr ".uvtk[1172]" -type "float2" 0.091513872 0.3114472 ;
	setAttr ".uvtk[1173]" -type "float2" -0.090168901 0.33359236 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "141F3DFE-4AF0-A858-71CC-7AB611AE0BEF";
	setAttr ".ics" -type "componentList" 3 "vtx[111]" "vtx[285]" "vtx[459:460]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak35";
	rename -uid "7B191E6B-4C9B-0162-4C97-99BBC339F3F9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[459]" -type "float3" -0.011366636 0.020520985 0.012152649 ;
	setAttr ".tk[460]" -type "float3" 0.012286276 0.020745575 0.014293313 ;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "9A35715F-4435-29E6-A421-B9A182C50AC4";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[163]" -type "float2" -0.026584119 -0.030865582 ;
	setAttr ".uvtk[226]" -type "float2" 0.021995956 -0.044704016 ;
	setAttr ".uvtk[621]" -type "float2" -0.024428811 -0.038142309 ;
	setAttr ".uvtk[624]" -type "float2" 0.025101937 -0.044241484 ;
	setAttr ".uvtk[1164]" -type "float2" 0.047537785 0.24986617 ;
	setAttr ".uvtk[1167]" -type "float2" -0.046836 0.25175989 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "184AFA1E-4A26-E01E-A929-3F844EDDA89F";
	setAttr ".ics" -type "componentList" 3 "vtx[75]" "vtx[249]" "vtx[454:455]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak36";
	rename -uid "CDD85F94-4070-4996-A9FD-BFB5E317F3F7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[454]" -type "float3" -0.0061410517 0.013558209 0.011092477 ;
	setAttr ".tk[455]" -type "float3" 0.0064383224 0.013394713 0.011503823 ;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "2CFDFCC4-4523-A079-99E0-D2BDC66924EA";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[224]" -type "float2" -0.017951341 -0.026223071 ;
	setAttr ".uvtk[618]" -type "float2" -0.024541404 -0.024088865 ;
	setAttr ".uvtk[1170]" -type "float2" 0.036506906 0.095756158 ;
	setAttr ".uvtk[1171]" -type "float2" -0.035441574 0.10079451 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "8839000C-4722-FB0C-8BE6-02B75E2B06F4";
	setAttr ".ics" -type "componentList" 3 "vtx[112]" "vtx[286]" "vtx[455:456]";
	setAttr ".ix" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.00029967153608456698 2.1159420396715789 -0.018877704844764878 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak37";
	rename -uid "ED2648FD-4147-17DC-E743-CD951D1CC47D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[455]" -type "float3" -0.0059626251 0.0069625378 0.0046018735 ;
	setAttr ".tk[456]" -type "float3" 0.0061923638 0.0068851709 0.0052092597 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyMergeVert18.out" "pCubeShape2.i";
connectAttr "polyTweakUV17.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polyMirror1.ip";
connectAttr "pCubeShape2.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeEdge3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert1.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak4.ip";
connectAttr "polyMergeVert1.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "deleteComponent4.ig";
connectAttr "polyTweak8.out" "polyExtrudeEdge5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge5.mp";
connectAttr "deleteComponent4.og" "polyTweak8.ip";
connectAttr "polyExtrudeEdge5.out" "polyTweakUV1.ip";
connectAttr "polyTweak9.out" "polyMergeVert2.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV1.out" "polyTweak9.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV2.ip";
connectAttr "polyTweak10.out" "polyMergeVert3.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV2.out" "polyTweak10.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV3.ip";
connectAttr "polyTweak11.out" "polyMergeVert4.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV3.out" "polyTweak11.ip";
connectAttr "polyMergeVert4.out" "polyExtrudeEdge6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweakUV4.ip";
connectAttr "polyTweak12.out" "polyMergeVert5.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV4.out" "polyTweak12.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV5.ip";
connectAttr "polyTweak13.out" "polyMergeVert6.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV5.out" "polyTweak13.ip";
connectAttr "polyMergeVert6.out" "polyExtrudeEdge7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweakUV6.ip";
connectAttr "polyTweak14.out" "polyMergeVert7.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV6.out" "polyTweak14.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV7.ip";
connectAttr "polyTweak15.out" "polyMergeVert8.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV7.out" "polyTweak15.ip";
connectAttr "polyMergeVert8.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweakUV8.ip";
connectAttr "polyTweak18.out" "polyMergeVert9.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV8.out" "polyTweak18.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV9.ip";
connectAttr "polyTweak19.out" "polyMergeVert10.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV9.out" "polyTweak19.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV10.ip";
connectAttr "polyTweak20.out" "polyMergeVert11.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV10.out" "polyTweak20.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV11.ip";
connectAttr "polyTweak21.out" "polyMergeVert12.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV11.out" "polyTweak21.ip";
connectAttr "polyMergeVert12.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak23.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySoftEdge1.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak28.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polyTweak29.ip";
connectAttr "polyTweak29.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "polyTweak30.out" "polyExtrudeEdge8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge8.mp";
connectAttr "deleteComponent8.og" "polyTweak30.ip";
connectAttr "polyExtrudeEdge8.out" "polyTweakUV12.ip";
connectAttr "polyTweak31.out" "polyMergeVert13.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV12.out" "polyTweak31.ip";
connectAttr "polyMergeVert13.out" "polyTweak32.ip";
connectAttr "polyTweak32.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyTweakUV13.ip";
connectAttr "polyTweak33.out" "polyMergeVert14.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV13.out" "polyTweak33.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV14.ip";
connectAttr "polyTweak34.out" "polyMergeVert15.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV14.out" "polyTweak34.ip";
connectAttr "polyMergeVert15.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyTweakUV15.ip";
connectAttr "polyTweak35.out" "polyMergeVert16.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV15.out" "polyTweak35.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV16.ip";
connectAttr "polyTweak36.out" "polyMergeVert17.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV16.out" "polyTweak36.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV17.ip";
connectAttr "polyTweak37.out" "polyMergeVert18.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV17.out" "polyTweak37.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of racoon5.ma
