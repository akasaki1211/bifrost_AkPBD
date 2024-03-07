//Maya ASCII 2024 scene
//Name: mesh_collision_sample.ma
//Last modified: Thu, Mar 07, 2024 10:53:38 PM
//Codeset: 932
requires maya "2024";
requires -nodeType "bifrostGraphShape" -nodeType "bifrostGeoToMaya" -dataType "bifData"
		 "bifrostGraph" "2.7.1.1-202310160905-e41ddfc";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "8E247FC6-4986-2FC1-7CB3-178AC9C0C208";
createNode transform -s -n "persp";
	rename -uid "76C1DC54-4D88-1BE1-E127-7DB5F73F539B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.007382584240098 9.2154619235735051 18.743591573528729 ;
	setAttr ".r" -type "double3" -16.538352729702876 -33.8000000000036 9.568634550538367e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3BDAD4A8-4B49-F66D-8DAD-969F0D135A62";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 23.423131781440336;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 9.8083411296493921 3.4958811066481079 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "226835B3-4107-5067-810E-3486B5AD8A9C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14386725298834691 1000.1 0.22236316813955659 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AE65CFC4-47D3-4E0D-E4D3-F98260599E8E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 18.842412245783066;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "07B0EA00-44BF-3C0D-30DC-C39A930490AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.064493047023613803 0.45145132916529324 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "77A862B9-4E54-7972-089D-E7A19B41311A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 5.3411968944101575;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D25BE763-4007-EBFE-FBC4-B08F67D22B90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "05D85DEA-4F5E-11DB-F659-7E95BBE1D7AA";
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
createNode transform -n "mesh_collision";
	rename -uid "EA1BFBE5-4260-0050-D68F-5F8CB3201AA9";
createNode bifrostGraphShape -n "mesh_collisionShape" -p "mesh_collision";
	rename -uid "D9755B48-4D6C-63B3-6C89-6C9C761359B9";
	addAttr -r false -ci true -k true -sn "deform_mesh" -ln "deform_mesh" -dt "bifData" 
		-dt "vectorArray" -dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -r false -ci true -k true -sn "collision_mesh" -ln "collision_mesh" -dt "bifData" 
		-dt "vectorArray" -dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -w false -ci true -sn "Core__Graph__terminal__final" -ln "Core__Graph__terminal__final" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__proxy" -ln "Core__Graph__terminal__proxy" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__diagnostic" -ln "Core__Graph__terminal__diagnostic" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "out_geometry" -ln "out_geometry" -dt "bifData";
	addAttr -r false -ci true -k true -sn "bulge_distance" -ln "bulge_distance" -at "float";
	addAttr -r false -ci true -k true -sn "bulge_volume" -ln "bulge_volume" -at "float";
	addAttr -r false -ci true -k true -sn "push_multiply" -ln "push_multiply" -at "float";
	addAttr -r false -ci true -k true -sn "damping" -ln "damping" -at "float";
	addAttr -r false -ci true -k true -sn "elasticity" -ln "elasticity" -at "float";
	addAttr -r false -ci true -k true -sn "mass" -ln "mass" -at "float";
	addAttr -r false -ci true -k true -sn "use_gravity" -ln "use_gravity" -min 0 -max 
		1 -at "bool";
	addAttr -r false -ci true -k true -sn "stiffness" -ln "stiffness" -at "float";
	addAttr -w false -ci true -m -sn "output_velocity" -ln "output_velocity" -at "float3" 
		-nc 3;
	addAttr -w false -ci true -sn "output_velocityx" -ln "output_velocityx" -at "float" 
		-p "output_velocity";
	addAttr -w false -ci true -sn "output_velocityy" -ln "output_velocityy" -at "float" 
		-p "output_velocity";
	addAttr -w false -ci true -sn "output_velocityz" -ln "output_velocityz" -at "float" 
		-p "output_velocity";
	addAttr -r false -ci true -k true -sn "start_frame" -ln "start_frame" -at "float";
	addAttr -r false -ci true -k true -sn "JobPorts__time" -ln "JobPorts__time" -at "time";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"namespaces\": [],\n    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"mesh_collisionShape\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"input\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-796.901 -0.0258208\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"deform_mesh\"\n                                                },\n                                                {\n                                                    \"metaName\": \"collision_mesh\"\n                                                },\n                                                {\n                                                    \"metaName\": \"damping\"\n                                                },\n                                                {\n                                                    \"metaName\": \"elasticity\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"mass\"\n                                                },\n                                                {\n                                                    \"metaName\": \"use_gravity\"\n                                                },\n                                                {\n                                                    \"metaName\": \"stiffness\"\n                                                },\n                                                {\n                                                    \"metaName\": \"start_frame\"\n                                                },\n                                                {\n                                                    \"metaName\": \"push_multiply\"\n                                                },\n                                                {\n                                                    \"metaName\": \"bulge_distance\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"bulge_volume\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"35.000000\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"output\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"557.428 -215.592\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"out_geometry\"\n                                                },\n                                                {\n                                                    \"metaName\": \"output_velocity\"\n                                                }\n                                            ]\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"36.000000\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,AkPBD::Core,update_velocity\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,AkPBD::Core,keep_position\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,AkPBD::Core,verlet\"\n"
		+ "                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Core::Iterators,for_each\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Core::FCurve,evaluate_fcurve\"\n                },\n                {\n                    \"metaName\": \"internal\",\n                    \"metaValue\": \"true\"\n                },\n                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"-801 -529 1602 1058\"\n                }\n            ],\n            \"ports\": [\n                {\n                    \"portName\": \"deform_mesh\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Object\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/pSphere1/pSphereShape1\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"collision_mesh\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Object\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/pTorus1/pTorusShape1\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"out_geometry\",\n"
		+ "                    \"portDirection\": \"output\",\n                    \"portType\": \"Object\"\n                },\n                {\n                    \"portName\": \"damping\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"elasticity\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"mass\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"use_gravity\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"bool\"\n                },\n                {\n                    \"portName\": \"stiffness\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"start_frame\",\n                    \"portDirection\": \"input\",\n"
		+ "                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"push_multiply\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"bulge_distance\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"bulge_volume\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"output_velocity\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"array<Math::float3>\"\n                }\n            ],\n            \"compounds\": [\n                {\n                    \"name\": \"for_each\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"icon\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"<NATIVE>../icons/LoopForEach.svg\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"max_iterations\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"current_index\"\n                                                        },\n"
		+ "                                                        {\n                                                            \"metaName\": \"point_position\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-576 -61\"\n                                                }\n                                            ]\n                                        }\n"
		+ "                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"351 -61\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-801 -529 1602 1058\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"BifrostGraph,Core::Constants,float\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Iterators,for_each\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::FCurve,evaluate_fcurve\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Geometry::Common,sample_interpreted_auto_port_as_vector\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Math,multiply\"\n"
		+ "                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"max_iterations\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\",\n                            \"portIterationLimit\": \"true\"\n                        },\n                        {\n                            \"portName\": \"current_index\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\",\n                            \"portIterationCounter\": \"true\"\n                        },\n                        {\n                            \"portName\": \"point_position\",\n                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"output\",\n                            \"portDirection\": \"output\",\n                            \"portIterationTarget\": \"true\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n"
		+ "                        {\n                            \"nodeName\": \"value\",\n                            \"valueType\": \"Math::float3\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-97.5 -31\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"value.output\",\n                            \"target\": \".output\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"value.value\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n"
		+ "                            }\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ],\n                    \"forEachCompound\": {\n                        \"ports\": []\n                    }\n                },\n                {\n                    \"name\": \"pbd\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-430.475 -33.2887\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"collision_mesh\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"point_position\"\n"
		+ "                                                        },\n                                                        {\n                                                            \"metaName\": \"point_initial_position\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"point_velocity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"point_initial_velocity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"point_normal\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"point_count\"\n"
		+ "                                                        },\n                                                        {\n                                                            \"metaName\": \"damping\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"elasticity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"mass\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"use_gravity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"stiffness\"\n                                                        },\n"
		+ "                                                        {\n                                                            \"metaName\": \"start_frame\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"push_multiply\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"bulge_distance\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"bulge_volume\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"35.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1539.06 -2.73888\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output_position\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"output_velocity\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"36.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Collision,mesh_collision\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Collision,mesh_collision_with_bulge\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Core,reset\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Core,update_velocity\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Core,keep_position\"\n                        },\n                        {\n                            \"metaName\": \"backdrop\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"If no bulge is needed\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"592.908 612.227 388.831 307.476\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-902.629 -659.259 2665.81 1760.57\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"collision_mesh\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Object\"\n                        },\n"
		+ "                        {\n                            \"portName\": \"point_position\",\n                            \"portDirection\": \"input\",\n                            \"linkedFeedbackPort\": \"output_position\"\n                        },\n                        {\n                            \"portName\": \"point_initial_position\",\n                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"point_velocity\",\n                            \"portDirection\": \"input\",\n                            \"linkedFeedbackPort\": \"output_velocity\"\n                        },\n                        {\n                            \"portName\": \"point_initial_velocity\",\n                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"point_normal\",\n                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"point_count\",\n"
		+ "                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"damping\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"elasticity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"mass\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"use_gravity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"bool\"\n                        },\n                        {\n                            \"portName\": \"stiffness\",\n                            \"portDirection\": \"input\",\n"
		+ "                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"start_frame\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"push_multiply\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"bulge_distance\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"bulge_volume\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"output_position\",\n                            \"portDirection\": \"output\"\n"
		+ "                        },\n                        {\n                            \"portName\": \"output_velocity\",\n                            \"portDirection\": \"output\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"keep_position\",\n                            \"nodeType\": \"AkPBD::Core::keep_position\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"333.493 -169.495\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"31.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"update_velocity\",\n                            \"nodeType\": \"AkPBD::Core::update_velocity\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"953.192 -50.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"32.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"verlet\",\n                            \"nodeType\": \"AkPBD::Core::verlet\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-32.464 -327.345\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"reset\",\n                            \"nodeType\": \"AkPBD::Core::reset\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1255.1 -5.81608\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n"
		+ "                        },\n                        {\n                            \"nodeName\": \"mesh_collision_with_bulge\",\n                            \"nodeType\": \"AkPBD::Collision::mesh_collision_with_bulge\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"660.275 268.592\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n"
		+ "                        {\n                            \"nodeName\": \"mesh_collision\",\n                            \"nodeType\": \"AkPBD::Collision::mesh_collision\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"669.413 701.443\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n"
		+ "                        {\n                            \"source\": \"reset.output_position\",\n                            \"target\": \".output_position\"\n                        },\n                        {\n                            \"source\": \"reset.output_velocity\",\n                            \"target\": \".output_velocity\"\n                        },\n                        {\n                            \"source\": \".point_position\",\n                            \"target\": \"verlet.position\"\n                        },\n                        {\n                            \"source\": \".point_velocity\",\n                            \"target\": \"verlet.velocity\"\n                        },\n                        {\n                            \"source\": \".point_initial_position\",\n                            \"target\": \"verlet.initial_position\"\n                        },\n                        {\n                            \"source\": \".damping\",\n                            \"target\": \"verlet.damping\"\n                        },\n                        {\n"
		+ "                            \"source\": \".elasticity\",\n                            \"target\": \"verlet.elasticity\"\n                        },\n                        {\n                            \"source\": \".mass\",\n                            \"target\": \"verlet.mass\"\n                        },\n                        {\n                            \"source\": \".use_gravity\",\n                            \"target\": \"verlet.use_gravity\"\n                        },\n                        {\n                            \"source\": \".stiffness\",\n                            \"target\": \"keep_position.stiffness\"\n                        },\n                        {\n                            \"source\": \"verlet.updated_position\",\n                            \"target\": \"keep_position.position\"\n                        },\n                        {\n                            \"source\": \".point_position\",\n                            \"target\": \"keep_position.prev_position\"\n                        },\n                        {\n                            \"source\": \".point_position\",\n"
		+ "                            \"target\": \"update_velocity.prev_position\"\n                        },\n                        {\n                            \"source\": \"update_velocity.velocity\",\n                            \"target\": \"reset.velocity\"\n                        },\n                        {\n                            \"source\": \".point_initial_position\",\n                            \"target\": \"reset.reset_position\"\n                        },\n                        {\n                            \"source\": \".point_initial_velocity\",\n                            \"target\": \"reset.reset_velocity\"\n                        },\n                        {\n                            \"source\": \".start_frame\",\n                            \"target\": \"reset.start_frame\"\n                        },\n                        {\n                            \"source\": \".collision_mesh\",\n                            \"target\": \"mesh_collision_with_bulge.collision_mesh\"\n                        },\n                        {\n                            \"source\": \"keep_position.updated_position\",\n"
		+ "                            \"target\": \"mesh_collision_with_bulge.point_position\"\n                        },\n                        {\n                            \"source\": \".point_normal\",\n                            \"target\": \"mesh_collision_with_bulge.point_normal\"\n                        },\n                        {\n                            \"source\": \".point_count\",\n                            \"target\": \"mesh_collision_with_bulge.point_count\"\n                        },\n                        {\n                            \"source\": \".push_multiply\",\n                            \"target\": \"mesh_collision_with_bulge.push_multiply\"\n                        },\n                        {\n                            \"source\": \".bulge_volume\",\n                            \"target\": \"mesh_collision_with_bulge.bulge_volume\"\n                        },\n                        {\n                            \"source\": \".bulge_distance\",\n                            \"target\": \"mesh_collision_with_bulge.bulge_distance\"\n                        },\n"
		+ "                        {\n                            \"source\": \"mesh_collision_with_bulge.output\",\n                            \"target\": \"update_velocity.position\"\n                        },\n                        {\n                            \"source\": \"mesh_collision_with_bulge.output\",\n                            \"target\": \"reset.position\"\n                        },\n                        {\n                            \"source\": \".collision_mesh\",\n                            \"target\": \"mesh_collision.collision_mesh\"\n                        },\n                        {\n                            \"source\": \"keep_position.updated_position\",\n                            \"target\": \"mesh_collision.point_position\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"keep_position.prev_position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n"
		+ "                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"keep_position.position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"keep_position.stiffness\",\n                            \"valueType\": \"float\",\n                            \"value\": \"0f\"\n                        },\n                        {\n                            \"valueName\": \"update_velocity.position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n"
		+ "                            }\n                        },\n                        {\n                            \"valueName\": \"update_velocity.prev_position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"verlet.position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"verlet.velocity\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n"
		+ "                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"verlet.damping\",\n                            \"valueType\": \"float\",\n                            \"value\": \"0f\"\n                        },\n                        {\n                            \"valueName\": \"verlet.mass\",\n                            \"valueType\": \"float\",\n                            \"value\": \"0f\"\n                        },\n                        {\n                            \"valueName\": \"verlet.use_gravity\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"false\"\n                        },\n                        {\n                            \"valueName\": \"reset.position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n"
		+ "                            }\n                        },\n                        {\n                            \"valueName\": \"reset.velocity\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"get_point_position\",\n                    \"nodeType\": \"Geometry::Properties::get_point_position\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-550.061 -352.186\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"37.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"set_point_position\",\n                    \"nodeType\": \"Geometry::Properties::set_point_position\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"324.398 -384.87\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"31.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_point_normal\",\n                    \"nodeType\": \"Geometry::Properties::get_point_normal\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-415.259 325.02\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"32.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_point_count\",\n                    \"nodeType\": \"Geometry::Properties::get_point_count\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-505.334 -156.72\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"33.000000\"\n                        }\n                    ]\n                },\n                {\n"
		+ "                    \"nodeName\": \"for_each\",\n                    \"nodeType\": \"for_each\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-238.1 -501.694\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"34.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"pbd\",\n                    \"nodeType\": \"pbd\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"105.987 -224.116\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"38.000000\"\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \".deform_mesh\",\n                    \"target\": \"get_point_position.geometry\"\n                },\n                {\n                    \"source\": \"set_point_position.out_geometry\",\n                    \"target\": \".out_geometry\"\n                },\n                {\n                    \"source\": \".deform_mesh\",\n                    \"target\": \"set_point_position.geometry\"\n                },\n                {\n"
		+ "                    \"source\": \".deform_mesh\",\n                    \"target\": \"get_point_normal.geometry\"\n                },\n                {\n                    \"source\": \".deform_mesh\",\n                    \"target\": \"get_point_count.geometry\"\n                },\n                {\n                    \"source\": \"get_point_count.count\",\n                    \"target\": \"for_each.max_iterations\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"for_each.point_position\"\n                },\n                {\n                    \"source\": \".collision_mesh\",\n                    \"target\": \"pbd.collision_mesh\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"pbd.point_position\"\n                },\n                {\n                    \"source\": \"get_point_normal.point_normal\",\n                    \"target\": \"pbd.point_normal\"\n                },\n                {\n"
		+ "                    \"source\": \"get_point_count.count\",\n                    \"target\": \"pbd.point_count\"\n                },\n                {\n                    \"source\": \".push_multiply\",\n                    \"target\": \"pbd.push_multiply\"\n                },\n                {\n                    \"source\": \".bulge_distance\",\n                    \"target\": \"pbd.bulge_distance\"\n                },\n                {\n                    \"source\": \".bulge_volume\",\n                    \"target\": \"pbd.bulge_volume\"\n                },\n                {\n                    \"source\": \"pbd.output_position\",\n                    \"target\": \"set_point_position.positions\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"pbd.point_initial_position\"\n                },\n                {\n                    \"source\": \"for_each.output\",\n                    \"target\": \"pbd.point_velocity\"\n                },\n                {\n                    \"source\": \"for_each.output\",\n"
		+ "                    \"target\": \"pbd.point_initial_velocity\"\n                },\n                {\n                    \"source\": \".damping\",\n                    \"target\": \"pbd.damping\"\n                },\n                {\n                    \"source\": \".elasticity\",\n                    \"target\": \"pbd.elasticity\"\n                },\n                {\n                    \"source\": \".mass\",\n                    \"target\": \"pbd.mass\"\n                },\n                {\n                    \"source\": \".use_gravity\",\n                    \"target\": \"pbd.use_gravity\"\n                },\n                {\n                    \"source\": \".stiffness\",\n                    \"target\": \"pbd.stiffness\"\n                },\n                {\n                    \"source\": \"pbd.output_velocity\",\n                    \"target\": \".output_velocity\"\n                },\n                {\n                    \"source\": \".start_frame\",\n                    \"target\": \"pbd.start_frame\"\n                }\n            ],\n            \"values\": [\n                {\n"
		+ "                    \"valueName\": \"for_each.max_iterations\",\n                    \"valueType\": \"long\",\n                    \"value\": \"10\"\n                },\n                {\n                    \"valueName\": \"pbd.collision_mesh\",\n                    \"valueType\": \"Object\",\n                    \"value\": {}\n                },\n                {\n                    \"valueName\": \"pbd.point_count\",\n                    \"valueType\": \"uint\",\n                    \"value\": \"0U\"\n                },\n                {\n                    \"valueName\": \"pbd.damping\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.elasticity\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.mass\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.use_gravity\",\n"
		+ "                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"pbd.stiffness\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.start_frame\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.push_multiply\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.bulge_distance\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.bulge_volume\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                }\n            ],\n            \"reservedNodeNames\": [\n                {\n                    \"name\": \"output\"\n"
		+ "                },\n                {\n                    \"name\": \"input\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr ".dpv" no;
	setAttr ".dgv" no;
	setAttr ".dov" no;
	setAttr ".dfr" no;
	setAttr ".dor" no;
	setAttr -k on ".deform_mesh";
	setAttr -k on ".collision_mesh";
	setAttr -k on ".bulge_distance" 4;
	setAttr -k on ".bulge_volume" 0.40000000596046448;
	setAttr -k on ".push_multiply" 1;
	setAttr -k on ".damping" 0.20000000298023224;
	setAttr -k on ".elasticity" 100;
	setAttr -k on ".mass" 1;
	setAttr -k on ".stiffness" 0.60000002384185791;
	setAttr -k on ".JobPorts__time";
createNode transform -n "collision_mesh";
	rename -uid "2C924119-4F60-A397-D980-3787FD8F286B";
	setAttr ".t" -type "double3" -0.4963667736562245 10.456534447437164 0.013424629658637333 ;
	setAttr ".r" -type "double3" 0 0 5.4695653478400965 ;
	setAttr ".s" -type "double3" 2.9337164908075648 7.4273059560358465 2.9337164908075648 ;
createNode mesh -n "collision_meshShape" -p "collision_mesh";
	rename -uid "0C8F5695-4DA0-4513-6659-36B3D59E2A34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 555 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.55218005 0.10406999 0.5 0.082456321
		 0.44782001 0.10406999 0.42620632 0.15625 0.44782001 0.20843001 0.5 0.23004368 0.55218005
		 0.20843001 0.57379365 0.15625 0.61048543 0.04576458 0.375 0.3125 0.625 0.3125 0.5
		 1.4901161e-08 0.40625 0.3125 0.38951457 0.04576458 0.4375 0.3125 0.34375 0.15625
		 0.46875 0.3125 0.38951457 0.26673543 0.5 0.3125 0.5 0.3125 0.53125 0.3125 0.61048543
		 0.26673543 0.5625 0.3125 0.65625 0.15625 0.59375 0.3125 0.375 0.34375 0.625 0.34375
		 0.40625 0.34375 0.4375 0.34375 0.46875 0.34375 0.5 0.34375 0.53125 0.34375 0.5625
		 0.34375 0.59375 0.34375 0.375 0.375 0.625 0.375 0.40625 0.375 0.4375 0.375 0.46875
		 0.375 0.5 0.375 0.53125 0.375 0.5625 0.375 0.59375 0.375 0.375 0.40625 0.625 0.40625
		 0.40625 0.40625 0.4375 0.40625 0.46875 0.40625 0.5 0.40625 0.53125 0.40625 0.5625
		 0.40625 0.59375 0.40625 0.375 0.4375 0.625 0.4375 0.40625 0.4375 0.4375 0.4375 0.46875
		 0.4375 0.5 0.4375 0.53125 0.4375 0.5625 0.4375 0.59375 0.4375 0.375 0.46875 0.625
		 0.46875 0.40625 0.46875 0.4375 0.46875 0.46875 0.46875 0.5 0.46875 0.53125 0.46875
		 0.5625 0.46875 0.59375 0.46875 0.375 0.5 0.625 0.5 0.40625 0.5 0.4375 0.5 0.46875
		 0.5 0.5 0.5 0.53125 0.5 0.5625 0.5 0.59375 0.5 0.375 0.53125 0.625 0.53125 0.40625
		 0.53125 0.4375 0.53125 0.46875 0.53125 0.5 0.53125 0.53125 0.53125 0.5625 0.53125
		 0.59375 0.53125 0.375 0.5625 0.625 0.5625 0.40625 0.5625 0.4375 0.5625 0.46875 0.5625
		 0.5 0.5625 0.53125 0.5625 0.5625 0.5625 0.59375 0.5625 0.375 0.59375 0.625 0.59375
		 0.40625 0.59375 0.4375 0.59375 0.46875 0.59375 0.5 0.59375 0.53125 0.59375 0.5625
		 0.59375 0.59375 0.59375 0.375 0.625 0.625 0.625 0.40625 0.625 0.4375 0.625 0.46875
		 0.625 0.5 0.625 0.53125 0.625 0.5625 0.625 0.59375 0.625 0.375 0.65625 0.625 0.65625
		 0.40625 0.65625 0.4375 0.65625 0.46875 0.65625 0.5 0.65625 0.53125 0.65625 0.5625
		 0.65625 0.59375 0.65625 0.375 0.6875 0.61048543 0.95423543 0.625 0.6875 0.40625 0.6875
		 0.5 1 0.4375 0.6875 0.38951457 0.95423543 0.46875 0.6875 0.34375 0.84375 0.5 0.6875
		 0.38951457 0.73326457 0.53125 0.6875 0.5 0.6875 0.5625 0.6875 0.61048543 0.73326457
		 0.59375 0.6875 0.65625 0.84375 0.55218005 0.89593005 0.5 0.91754365 0.44782001 0.89593005
		 0.42620632 0.84375 0.44781998 0.79157001 0.5 0.76995635 0.55218005 0.79156995 0.57379365
		 0.84375 0.5 0.15625 0.5 0.84375 0.54143202 0.05622422 0.45856798 0.05622422 0.3999742
		 0.11481796 0.39997423 0.19768204 0.45856795 0.25627577 0.54143202 0.25627577 0.60002577
		 0.19768204 0.60002577 0.11481796 0.390625 0.328125 0.421875 0.328125 0.453125 0.328125
		 0.484375 0.328125 0.515625 0.328125 0.546875 0.328125 0.578125 0.328125 0.609375
		 0.328125 0.390625 0.359375 0.421875 0.359375 0.453125 0.359375 0.484375 0.359375
		 0.515625 0.359375 0.546875 0.359375 0.578125 0.359375 0.609375 0.359375 0.390625
		 0.390625 0.421875 0.390625 0.453125 0.390625 0.484375 0.390625 0.515625 0.390625
		 0.546875 0.390625 0.578125 0.390625 0.609375 0.390625 0.390625 0.421875 0.421875
		 0.421875 0.453125 0.421875 0.484375 0.421875 0.515625 0.421875 0.546875 0.421875
		 0.578125 0.421875 0.609375 0.421875 0.390625 0.453125 0.421875 0.453125 0.453125
		 0.453125 0.484375 0.453125 0.515625 0.453125 0.546875 0.453125 0.578125 0.453125
		 0.609375 0.453125 0.390625 0.484375 0.421875 0.484375 0.453125 0.484375 0.484375
		 0.484375 0.515625 0.484375 0.546875 0.484375 0.578125 0.484375 0.609375 0.484375
		 0.390625 0.515625 0.421875 0.515625 0.453125 0.515625 0.484375 0.515625 0.515625
		 0.515625 0.546875 0.515625 0.578125 0.515625 0.609375 0.515625 0.390625 0.546875
		 0.421875 0.546875 0.453125 0.546875 0.484375 0.546875 0.515625 0.546875 0.546875
		 0.546875 0.578125 0.546875 0.609375 0.546875 0.390625 0.578125 0.421875 0.578125
		 0.453125 0.578125 0.484375 0.578125 0.515625 0.578125 0.546875 0.578125 0.578125
		 0.578125 0.609375 0.578125 0.390625 0.609375 0.421875 0.609375 0.453125 0.609375
		 0.484375 0.609375 0.515625 0.609375 0.546875 0.609375 0.578125 0.609375 0.609375
		 0.609375 0.390625 0.640625 0.421875 0.640625 0.453125 0.640625 0.484375 0.640625
		 0.515625 0.640625 0.546875 0.640625 0.578125 0.640625 0.609375 0.640625 0.390625
		 0.671875 0.421875 0.671875 0.453125 0.671875;
	setAttr ".uvst[0].uvsp[250:499]" 0.484375 0.671875 0.515625 0.671875 0.546875
		 0.671875 0.578125 0.671875 0.609375 0.671875 0.54143202 0.94377583 0.45856798 0.94377577
		 0.39997423 0.88518208 0.39997423 0.80231798 0.45856798 0.74372417 0.54143202 0.74372423
		 0.60002577 0.80231792 0.60002577 0.88518202 0.51841426 0.1117941 0.4815858 0.1117941
		 0.45554411 0.13783577 0.45554411 0.17466424 0.4815858 0.20070592 0.51841426 0.20070592
		 0.54445595 0.17466424 0.54445595 0.13783577 0.51841426 0.88820595 0.4815858 0.88820595
		 0.45554411 0.86216426 0.45554411 0.82533574 0.4815858 0.79929411 0.51841426 0.79929411
		 0.54445595 0.82533574 0.54445595 0.86216426 0.52877223 0.086787656 0.5 0.047643363
		 0.55524272 0.022882298 0.390625 0.3125 0.57679647 0.079453513 0.47122777 0.086787656
		 0.4232035 0.079453513 0.44475728 0.022882298 0.421875 0.3125 0.43053764 0.12747777
		 0.39139336 0.15625 0.36663228 0.10100729 0.453125 0.3125 0.43053767 0.18502225 0.4232035
		 0.23304649 0.36663228 0.21149272 0.484375 0.3125 0.47122777 0.22571236 0.5 0.26485664
		 0.44475728 0.28961772 0.515625 0.3125 0.52877223 0.22571236 0.57679647 0.23304649
		 0.55524272 0.28961772 0.546875 0.3125 0.56946236 0.18502225 0.60860664 0.15625 0.63336772
		 0.21149272 0.578125 0.3125 0.56946236 0.12747777 0.63336772 0.10100729 0.609375 0.3125
		 0.40625 0.328125 0.390625 0.34375 0.375 0.328125 0.625 0.328125 0.4375 0.328125 0.421875
		 0.34375 0.46875 0.328125 0.453125 0.34375 0.5 0.328125 0.484375 0.34375 0.53125 0.328125
		 0.515625 0.34375 0.5625 0.328125 0.546875 0.34375 0.59375 0.328125 0.578125 0.34375
		 0.609375 0.34375 0.40625 0.359375 0.390625 0.375 0.375 0.359375 0.625 0.359375 0.4375
		 0.359375 0.421875 0.375 0.46875 0.359375 0.453125 0.375 0.5 0.359375 0.484375 0.375
		 0.53125 0.359375 0.515625 0.375 0.5625 0.359375 0.546875 0.375 0.59375 0.359375 0.578125
		 0.375 0.609375 0.375 0.40625 0.390625 0.390625 0.40625 0.375 0.390625 0.625 0.390625
		 0.4375 0.390625 0.421875 0.40625 0.46875 0.390625 0.453125 0.40625 0.5 0.390625 0.484375
		 0.40625 0.53125 0.390625 0.515625 0.40625 0.5625 0.390625 0.546875 0.40625 0.59375
		 0.390625 0.578125 0.40625 0.609375 0.40625 0.40625 0.421875 0.390625 0.4375 0.375
		 0.421875 0.625 0.421875 0.4375 0.421875 0.421875 0.4375 0.46875 0.421875 0.453125
		 0.4375 0.5 0.421875 0.484375 0.4375 0.53125 0.421875 0.515625 0.4375 0.5625 0.421875
		 0.546875 0.4375 0.59375 0.421875 0.578125 0.4375 0.609375 0.4375 0.40625 0.453125
		 0.390625 0.46875 0.375 0.453125 0.625 0.453125 0.4375 0.453125 0.421875 0.46875 0.46875
		 0.453125 0.453125 0.46875 0.5 0.453125 0.484375 0.46875 0.53125 0.453125 0.515625
		 0.46875 0.5625 0.453125 0.546875 0.46875 0.59375 0.453125 0.578125 0.46875 0.609375
		 0.46875 0.40625 0.484375 0.390625 0.5 0.375 0.484375 0.625 0.484375 0.4375 0.484375
		 0.421875 0.5 0.46875 0.484375 0.453125 0.5 0.5 0.484375 0.484375 0.5 0.53125 0.484375
		 0.515625 0.5 0.5625 0.484375 0.546875 0.5 0.59375 0.484375 0.578125 0.5 0.609375
		 0.5 0.40625 0.515625 0.390625 0.53125 0.375 0.515625 0.625 0.515625 0.4375 0.515625
		 0.421875 0.53125 0.46875 0.515625 0.453125 0.53125 0.5 0.515625 0.484375 0.53125
		 0.53125 0.515625 0.515625 0.53125 0.5625 0.515625 0.546875 0.53125 0.59375 0.515625
		 0.578125 0.53125 0.609375 0.53125 0.40625 0.546875 0.390625 0.5625 0.375 0.546875
		 0.625 0.546875 0.4375 0.546875 0.421875 0.5625 0.46875 0.546875 0.453125 0.5625 0.5
		 0.546875 0.484375 0.5625 0.53125 0.546875 0.515625 0.5625 0.5625 0.546875 0.546875
		 0.5625 0.59375 0.546875 0.578125 0.5625 0.609375 0.5625 0.40625 0.578125 0.390625
		 0.59375 0.375 0.578125 0.625 0.578125 0.4375 0.578125 0.421875 0.59375 0.46875 0.578125
		 0.453125 0.59375 0.5 0.578125 0.484375 0.59375 0.53125 0.578125 0.515625 0.59375
		 0.5625 0.578125 0.546875 0.59375 0.59375 0.578125 0.578125 0.59375 0.609375 0.59375
		 0.40625 0.609375 0.390625 0.625 0.375 0.609375 0.625 0.609375 0.4375 0.609375 0.421875
		 0.625 0.46875 0.609375 0.453125 0.625 0.5 0.609375 0.484375 0.625 0.53125 0.609375
		 0.515625 0.625 0.5625 0.609375 0.546875 0.625 0.59375 0.609375 0.578125 0.625 0.609375
		 0.625 0.40625 0.640625 0.390625 0.65625 0.375 0.640625 0.625 0.640625 0.4375 0.640625
		 0.421875 0.65625 0.46875 0.640625 0.453125 0.65625 0.5 0.640625 0.484375 0.65625
		 0.53125 0.640625 0.515625 0.65625 0.5625 0.640625 0.546875 0.65625 0.59375 0.640625
		 0.578125 0.65625 0.609375 0.65625 0.40625 0.671875 0.390625 0.6875;
	setAttr ".uvst[0].uvsp[500:554]" 0.55524272 0.97711772 0.375 0.671875 0.625
		 0.671875 0.4375 0.671875 0.421875 0.6875 0.44475728 0.97711772 0.46875 0.671875 0.453125
		 0.6875 0.36663228 0.89899272 0.5 0.671875 0.484375 0.6875 0.36663228 0.78850728 0.53125
		 0.671875 0.515625 0.6875 0.44475728 0.71038228 0.5625 0.671875 0.546875 0.6875 0.55524272
		 0.71038228 0.59375 0.671875 0.578125 0.6875 0.63336772 0.78850728 0.609375 0.6875
		 0.63336772 0.89899272 0.5 0.9523567 0.52877223 0.91321242 0.57679647 0.92054653 0.4232035
		 0.92054647 0.47122777 0.91321242 0.39139336 0.84375 0.43053767 0.87252229 0.4232035
		 0.76695353 0.43053767 0.81497771 0.5 0.7351433 0.47122777 0.77428758 0.57679647 0.76695353
		 0.52877223 0.77428758 0.60860664 0.84375 0.56946236 0.81497771 0.56946236 0.87252229
		 0.52952826 0.1267218 0.5 0.11449081 0.4704718 0.1267218 0.45824081 0.15625 0.4704718
		 0.18577823 0.5 0.19800919 0.52952826 0.18577823 0.54175925 0.15625 0.5 0.88550925
		 0.52952826 0.87327826 0.4704718 0.87327826 0.45824081 0.84375 0.4704718 0.81422174
		 0.5 0.80199075 0.52952826 0.8142218 0.54175925 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 498 ".vt";
	setAttr ".vt[0:165]"  0.33395204 -1 -0.33395201 1.8626451e-09 -1 -0.47227952
		 -0.33395204 -1 -0.33395201 -0.47227952 -1 -1.8626451e-09 -0.33395201 -1 0.33395204
		 2.7939677e-09 -1 0.47227955 0.33395204 -1 0.33395207 0.47227958 -1 5.5879354e-09
		 0.6143719 -0.97916663 -0.6143719 0 -0.97916663 -0.86885315 -0.6143719 -0.97916663 -0.6143719
		 -0.86885315 -0.97916663 0 -0.6143719 -0.97916663 0.6143719 9.3132257e-10 -0.97916663 0.86885315
		 0.61437196 -0.97916663 0.61437196 0.86885321 -0.97916663 9.3132257e-10 0.65533006 -0.83333337 -0.65533
		 0 -0.83333337 -0.92677665 -0.65533006 -0.83333337 -0.65533006 -0.92677665 -0.83333337 0
		 -0.65533006 -0.83333337 0.65533006 9.3132257e-10 -0.83333337 0.92677671 0.65533006 -0.83333337 0.65533006
		 0.92677677 -0.83333337 9.3132257e-10 0.65533006 -0.66666663 -0.65533 0 -0.66666663 -0.92677665
		 -0.65533006 -0.66666663 -0.65533006 -0.92677665 -0.66666663 0 -0.65533006 -0.66666663 0.65533006
		 9.3132257e-10 -0.66666663 0.92677671 0.65533006 -0.66666663 0.65533006 0.92677677 -0.66666663 9.3132257e-10
		 0.65533006 -0.49999997 -0.65533 0 -0.49999997 -0.92677665 -0.65533006 -0.49999997 -0.65533006
		 -0.92677665 -0.49999997 0 -0.65533006 -0.49999997 0.65533006 9.3132257e-10 -0.49999997 0.92677671
		 0.65533006 -0.49999997 0.65533006 0.92677677 -0.49999997 9.3132257e-10 0.65533006 -0.33333325 -0.65533
		 0 -0.33333325 -0.92677665 -0.65533006 -0.33333325 -0.65533006 -0.92677665 -0.33333325 0
		 -0.65533006 -0.33333325 0.65533006 9.3132257e-10 -0.33333325 0.92677671 0.65533006 -0.33333325 0.65533006
		 0.92677677 -0.33333325 9.3132257e-10 0.65533006 -0.16666658 -0.65533 0 -0.16666658 -0.92677665
		 -0.65533006 -0.16666658 -0.65533006 -0.92677665 -0.16666658 0 -0.65533006 -0.16666658 0.65533006
		 9.3132257e-10 -0.16666658 0.92677671 0.65533006 -0.16666658 0.65533006 0.92677677 -0.16666658 9.3132257e-10
		 0.65533006 8.9406967e-08 -0.65533 0 8.7777153e-08 -0.92677665 -0.65533006 8.7777153e-08 -0.65533006
		 -0.92677665 8.7777153e-08 0 -0.65533006 8.7777153e-08 0.65533006 9.3132257e-10 8.7777153e-08 0.92677671
		 0.65533006 8.7777153e-08 0.65533006 0.92677677 8.7777153e-08 9.3132257e-10 0.65533006 0.16666676 -0.65533
		 0 0.16666673 -0.92677665 -0.65533006 0.16666673 -0.65533006 -0.92677665 0.16666673 0
		 -0.65533006 0.16666673 0.65533006 9.3132257e-10 0.16666673 0.92677671 0.65533006 0.16666673 0.65533006
		 0.92677677 0.16666673 9.3132257e-10 0.65533006 0.3333334 -0.65533 0 0.33333343 -0.92677665
		 -0.65533006 0.33333343 -0.65533006 -0.92677665 0.33333343 0 -0.65533006 0.33333343 0.65533006
		 9.3132257e-10 0.33333343 0.92677671 0.65533006 0.33333343 0.65533006 0.92677677 0.33333343 9.3132257e-10
		 0.65533006 0.50000012 -0.65533 0 0.50000012 -0.92677665 -0.65533006 0.50000012 -0.65533006
		 -0.92677665 0.50000012 0 -0.65533006 0.50000012 0.65533006 9.3132257e-10 0.50000012 0.92677671
		 0.65533006 0.50000012 0.65533006 0.92677677 0.50000012 9.3132257e-10 0.65533006 0.66666675 -0.65533
		 0 0.66666675 -0.92677665 -0.65533006 0.66666675 -0.65533006 -0.92677665 0.66666675 0
		 -0.65533006 0.66666675 0.65533006 9.3132257e-10 0.66666675 0.92677671 0.65533006 0.66666675 0.65533006
		 0.92677677 0.66666675 9.3132257e-10 0.65533006 0.83333349 -0.65533 0 0.83333343 -0.92677665
		 -0.65533006 0.83333343 -0.65533006 -0.92677665 0.83333343 0 -0.65533006 0.83333343 0.65533006
		 9.3132257e-10 0.83333343 0.92677671 0.65533006 0.83333343 0.65533006 0.92677677 0.83333343 9.3132257e-10
		 0.6143719 0.97916669 -0.61437184 0 0.97916669 -0.86885309 -0.6143719 0.97916669 -0.6143719
		 -0.86885309 0.97916669 0 -0.6143719 0.97916669 0.6143719 4.6566129e-10 0.97916669 0.86885315
		 0.6143719 0.97916669 0.6143719 0.86885321 0.97916669 4.6566129e-10 0.33395204 1 -0.33395201
		 3.7252903e-09 1 -0.47227952 -0.33395204 1 -0.33395204 -0.47227952 1 -3.7252903e-09
		 -0.33395204 1 0.33395204 3.7252903e-09 1 0.47227952 0.33395204 1 0.33395204 0.47227955 1 3.7252903e-09
		 2.7939677e-09 -1.000000119209 2.7939677e-09 3.7252903e-09 1.000000119209 2.7939677e-09
		 0 0.083333433 -0.92677653 0.35355335 0.16666676 -0.8535533 0.65533006 0.083333433 -0.65533006
		 -0.65533006 0.083333433 -0.65533006 -0.35355335 0.16666676 -0.8535533 -0.92677653 0.083333433 0
		 -0.8535533 0.16666676 -0.35355335 -0.65533006 0.083333433 0.65533006 -0.8535533 0.16666676 0.35355335
		 7.4505806e-09 0.083333433 0.92677659 -0.35355335 0.16666676 0.8535533 0.65533006 0.083333433 0.65533006
		 0.35355335 0.16666676 0.8535533 0.92677665 0.083333433 7.4505806e-09 0.85355335 0.16666676 0.35355335
		 0.85355335 0.16666676 -0.35355335 0 0.25000009 -0.92677653 0.35355335 0.33333343 -0.8535533
		 0.65533006 0.25000009 -0.65533006 -0.65533006 0.25000009 -0.65533006 -0.35355335 0.33333343 -0.8535533
		 -0.92677653 0.25000009 0 -0.8535533 0.33333343 -0.35355335 -0.65533006 0.25000009 0.65533006
		 -0.8535533 0.33333343 0.35355335 7.4505806e-09 0.25000009 0.92677659 -0.35355335 0.33333343 0.8535533
		 0.65533006 0.25000009 0.65533006 0.35355335 0.33333343 0.8535533 0.92677665 0.25000009 7.4505806e-09
		 0.85355335 0.33333343 0.35355335 0.85355335 0.33333343 -0.35355335 0 0.41666675 -0.92677653
		 0.35355335 0.50000012 -0.8535533 0.65533006 0.41666675 -0.65533006 -0.65533006 0.41666675 -0.65533006
		 -0.35355335 0.50000012 -0.8535533 -0.92677653 0.41666675 0 -0.8535533 0.50000012 -0.35355335
		 -0.65533006 0.41666675 0.65533006 -0.8535533 0.50000012 0.35355335 7.4505806e-09 0.41666675 0.92677659
		 -0.35355335 0.50000012 0.8535533 0.65533006 0.41666675 0.65533006;
	setAttr ".vt[166:331]" 0.35355335 0.50000012 0.8535533 0.92677665 0.41666675 7.4505806e-09
		 0.85355335 0.50000012 0.35355335 0.85355335 0.50000012 -0.35355335 0 0.58333349 -0.92677653
		 0.35355335 0.66666687 -0.8535533 0.65533006 0.58333349 -0.65533006 -0.65533006 0.58333349 -0.65533006
		 -0.35355335 0.66666687 -0.8535533 -0.92677653 0.58333349 0 -0.8535533 0.66666687 -0.35355335
		 -0.65533006 0.58333349 0.65533006 -0.8535533 0.66666687 0.35355335 7.4505806e-09 0.58333349 0.92677659
		 -0.35355335 0.66666687 0.8535533 0.65533006 0.58333349 0.65533006 0.35355335 0.66666687 0.8535533
		 0.92677665 0.58333349 7.4505806e-09 0.85355335 0.66666687 0.35355335 0.85355335 0.66666687 -0.35355335
		 0 0.75000012 -0.92677653 0.35355335 0.83333349 -0.8535533 0.65533006 0.75000012 -0.65533006
		 -0.65533006 0.75000012 -0.65533006 -0.35355335 0.83333349 -0.8535533 -0.92677653 0.75000012 0
		 -0.8535533 0.83333349 -0.35355335 -0.65533006 0.75000012 0.65533006 -0.8535533 0.83333349 0.35355335
		 7.4505806e-09 0.75000012 0.92677659 -0.35355335 0.83333349 0.8535533 0.65533006 0.75000012 0.65533006
		 0.35355335 0.83333349 0.8535533 0.92677665 0.75000012 7.4505806e-09 0.85355335 0.83333349 0.35355335
		 0.85355335 0.83333349 -0.35355335 0 0.91666675 -0.92677653 0.33145627 0.97916675 -0.80020624
		 0.65533006 0.91666675 -0.65533006 -0.65533006 0.91666675 -0.65533006 -0.33145627 0.97916675 -0.80020624
		 -0.92677653 0.91666675 0 -0.80020624 0.97916675 -0.33145627 -0.65533006 0.91666675 0.65533006
		 -0.80020624 0.97916675 0.33145627 7.4505806e-09 0.91666675 0.92677659 -0.33145627 0.97916675 0.80020624
		 0.65533006 0.91666675 0.65533006 0.33145627 0.97916675 0.80020624 0.92677665 0.91666675 7.4505806e-09
		 0.8002063 0.97916675 0.33145627 0.8002063 0.97916675 -0.33145627 3.7252903e-09 1 -0.69508243
		 0.18414238 1 -0.44455901 0.49149755 1 -0.49149755 -0.49149755 1 -0.49149755 -0.18414238 1 -0.44455901
		 -0.69508243 1 -3.7252903e-09 -0.44455901 1 -0.18414238 -0.49149755 1 0.49149755 -0.44455901 1 0.18414238
		 1.8626451e-09 1 0.69508249 -0.18414238 1 0.44455904 0.49149755 1 0.49149755 0.1841424 1 0.44455904
		 0.69508255 1 3.7252903e-09 0.44455904 1 0.1841424 0.44455904 1 -0.18414238 0.18898058 -1 -0.18898058
		 0 -1 -0.26725888 -0.18898058 -1 -0.18898058 -0.26725888 -1 0 -0.18898058 -1 0.18898058
		 1.8626451e-09 -1 0.26725888 0.18898059 -1 0.18898058 0.26725891 -1 1.8626451e-09
		 0 1 -0.26725888 0.18898058 1 -0.18898058 -0.18898058 1 -0.18898058 -0.26725888 1 0
		 -0.18898058 1 0.18898058 1.8626451e-09 1 0.26725888 0.18898059 1 0.18898058 0.26725891 1 1.8626451e-09
		 0.18414238 -1 -0.44455901 3.7252903e-09 -1 -0.69508243 0.33145627 -0.97916663 -0.80020624
		 0.49149755 -1 -0.49149755 -0.18414238 -1 -0.44455901 -0.49149755 -1 -0.49149755 -0.33145627 -0.97916663 -0.80020624
		 -0.44455901 -1 -0.18414238 -0.69508243 -1 -3.7252903e-09 -0.80020624 -0.97916663 -0.33145627
		 -0.44455901 -1 0.18414238 -0.49149755 -1 0.49149755 -0.80020624 -0.97916663 0.33145627
		 -0.18414238 -1 0.44455904 3.7252903e-09 -1 0.69508249 -0.33145627 -0.97916663 0.80020624
		 0.1841424 -1 0.44455904 0.49149755 -1 0.49149755 0.33145627 -0.97916663 0.80020624
		 0.44455904 -1 0.1841424 0.69508255 -1 3.7252903e-09 0.8002063 -0.97916663 0.33145627
		 0.44455904 -1 -0.18414238 0.8002063 -0.97916663 -0.33145627 0 -0.91666663 -0.92677653
		 0.35355335 -0.83333337 -0.8535533 0.65533006 -0.91666663 -0.65533006 -0.65533006 -0.91666663 -0.65533006
		 -0.35355335 -0.83333337 -0.8535533 -0.92677653 -0.91666663 0 -0.8535533 -0.83333337 -0.35355335
		 -0.65533006 -0.91666663 0.65533006 -0.8535533 -0.83333337 0.35355335 7.4505806e-09 -0.91666663 0.92677659
		 -0.35355335 -0.83333337 0.8535533 0.65533006 -0.91666663 0.65533006 0.35355335 -0.83333337 0.8535533
		 0.92677665 -0.91666663 7.4505806e-09 0.85355335 -0.83333337 0.35355335 0.85355335 -0.83333337 -0.35355335
		 0 -0.75 -0.92677653 0.35355335 -0.66666663 -0.8535533 0.65533006 -0.75 -0.65533006
		 -0.65533006 -0.75 -0.65533006 -0.35355335 -0.66666663 -0.8535533 -0.92677653 -0.75 0
		 -0.8535533 -0.66666663 -0.35355335 -0.65533006 -0.75 0.65533006 -0.8535533 -0.66666663 0.35355335
		 7.4505806e-09 -0.75 0.92677659 -0.35355335 -0.66666663 0.8535533 0.65533006 -0.75 0.65533006
		 0.35355335 -0.66666663 0.8535533 0.92677665 -0.75 7.4505806e-09 0.85355335 -0.66666663 0.35355335
		 0.85355335 -0.66666663 -0.35355335 0 -0.58333325 -0.92677653 0.35355335 -0.49999988 -0.8535533
		 0.65533006 -0.58333325 -0.65533006 -0.65533006 -0.58333325 -0.65533006 -0.35355335 -0.49999988 -0.8535533
		 -0.92677653 -0.58333325 0 -0.8535533 -0.49999988 -0.35355335 -0.65533006 -0.58333325 0.65533006
		 -0.8535533 -0.49999988 0.35355335 7.4505806e-09 -0.58333325 0.92677659 -0.35355335 -0.49999988 0.8535533
		 0.65533006 -0.58333325 0.65533006 0.35355335 -0.49999988 0.8535533 0.92677665 -0.58333325 7.4505806e-09
		 0.85355335 -0.49999988 0.35355335 0.85355335 -0.49999988 -0.35355335 0 -0.41666657 -0.92677653
		 0.35355335 -0.33333325 -0.8535533 0.65533006 -0.41666657 -0.65533006 -0.65533006 -0.41666657 -0.65533006
		 -0.35355335 -0.33333325 -0.8535533 -0.92677653 -0.41666657 0 -0.8535533 -0.33333325 -0.35355335
		 -0.65533006 -0.41666657 0.65533006 -0.8535533 -0.33333325 0.35355335 7.4505806e-09 -0.41666657 0.92677659;
	setAttr ".vt[332:497]" -0.35355335 -0.33333325 0.8535533 0.65533006 -0.41666657 0.65533006
		 0.35355335 -0.33333325 0.8535533 0.92677665 -0.41666657 7.4505806e-09 0.85355335 -0.33333325 0.35355335
		 0.85355335 -0.33333325 -0.35355335 0 -0.24999991 -0.92677653 0.35355335 -0.1666666 -0.8535533
		 0.65533006 -0.24999991 -0.65533006 -0.65533006 -0.24999991 -0.65533006 -0.35355335 -0.1666666 -0.8535533
		 -0.92677653 -0.24999991 0 -0.8535533 -0.1666666 -0.35355335 -0.65533006 -0.24999991 0.65533006
		 -0.8535533 -0.1666666 0.35355335 7.4505806e-09 -0.24999991 0.92677659 -0.35355335 -0.1666666 0.8535533
		 0.65533006 -0.24999991 0.65533006 0.35355335 -0.1666666 0.8535533 0.92677665 -0.24999991 7.4505806e-09
		 0.85355335 -0.1666666 0.35355335 0.85355335 -0.1666666 -0.35355335 0 -0.083333246 -0.92677653
		 0.35355335 8.9406967e-08 -0.8535533 0.65533006 -0.083333246 -0.65533006 -0.65533006 -0.083333246 -0.65533006
		 -0.35355335 8.9406967e-08 -0.8535533 -0.92677653 -0.083333246 0 -0.8535533 8.9406967e-08 -0.35355335
		 -0.65533006 -0.083333246 0.65533006 -0.8535533 8.9406967e-08 0.35355335 7.4505806e-09 -0.083333246 0.92677659
		 -0.35355335 8.9406967e-08 0.8535533 0.65533006 -0.083333246 0.65533006 0.35355335 8.9406967e-08 0.8535533
		 0.92677665 -0.083333246 7.4505806e-09 0.85355335 8.9406967e-08 0.35355335 0.85355335 8.9406967e-08 -0.35355335
		 0.26516503 -1 -0.64016497 -0.26516503 -1 -0.64016497 -0.64016497 -1 -0.26516503 -0.64016497 -1 0.26516503
		 -0.26516503 -1 0.64016497 0.26516503 -1 0.64016503 0.64016503 -1 0.26516503 0.64016503 -1 -0.26516503
		 0.35355335 -0.91666663 -0.8535533 -0.35355335 -0.91666663 -0.8535533 -0.8535533 -0.91666663 -0.35355335
		 -0.8535533 -0.91666663 0.35355335 -0.35355335 -0.91666663 0.8535533 0.35355338 -0.91666663 0.85355335
		 0.85355341 -0.91666663 0.35355338 0.85355335 -0.91666663 -0.35355335 0.35355335 -0.75 -0.8535533
		 -0.35355335 -0.75 -0.8535533 -0.8535533 -0.75 -0.35355335 -0.8535533 -0.75 0.35355335
		 -0.35355335 -0.75 0.8535533 0.35355338 -0.75 0.85355335 0.85355341 -0.75 0.35355338
		 0.85355335 -0.75 -0.35355335 0.35355335 -0.58333331 -0.8535533 -0.35355335 -0.58333331 -0.8535533
		 -0.8535533 -0.58333331 -0.35355335 -0.8535533 -0.58333331 0.35355335 -0.35355335 -0.58333331 0.8535533
		 0.35355338 -0.58333331 0.85355335 0.85355341 -0.58333331 0.35355338 0.85355335 -0.58333331 -0.35355335
		 0.35355335 -0.4166666 -0.8535533 -0.35355335 -0.4166666 -0.8535533 -0.8535533 -0.4166666 -0.35355335
		 -0.8535533 -0.4166666 0.35355335 -0.35355335 -0.4166666 0.8535533 0.35355338 -0.4166666 0.85355335
		 0.85355341 -0.4166666 0.35355338 0.85355335 -0.4166666 -0.35355335 0.35355335 -0.24999991 -0.8535533
		 -0.35355335 -0.24999991 -0.8535533 -0.8535533 -0.24999991 -0.35355335 -0.8535533 -0.24999991 0.35355335
		 -0.35355335 -0.24999991 0.8535533 0.35355338 -0.24999991 0.85355335 0.85355341 -0.24999991 0.35355338
		 0.85355335 -0.24999991 -0.35355335 0.35355335 -0.083333246 -0.8535533 -0.35355335 -0.083333246 -0.8535533
		 -0.8535533 -0.083333246 -0.35355335 -0.8535533 -0.083333246 0.35355335 -0.35355335 -0.083333246 0.8535533
		 0.35355338 -0.083333246 0.85355335 0.85355341 -0.083333246 0.35355338 0.85355335 -0.083333246 -0.35355335
		 0.35355335 0.083333425 -0.8535533 -0.35355335 0.083333425 -0.8535533 -0.8535533 0.083333425 -0.35355335
		 -0.8535533 0.083333425 0.35355335 -0.35355335 0.083333425 0.8535533 0.35355338 0.083333425 0.85355335
		 0.85355341 0.083333425 0.35355338 0.85355335 0.083333425 -0.35355335 0.35355335 0.25000012 -0.8535533
		 -0.35355335 0.25000012 -0.8535533 -0.8535533 0.25000012 -0.35355335 -0.8535533 0.25000012 0.35355335
		 -0.35355335 0.25000012 0.8535533 0.35355338 0.25000012 0.85355335 0.85355341 0.25000012 0.35355338
		 0.85355335 0.25000012 -0.35355335 0.35355335 0.41666678 -0.8535533 -0.35355335 0.41666678 -0.8535533
		 -0.8535533 0.41666678 -0.35355335 -0.8535533 0.41666678 0.35355335 -0.35355335 0.41666678 0.8535533
		 0.35355338 0.41666678 0.85355335 0.85355341 0.41666678 0.35355338 0.85355335 0.41666678 -0.35355335
		 0.35355335 0.58333343 -0.8535533 -0.35355335 0.58333343 -0.8535533 -0.8535533 0.58333343 -0.35355335
		 -0.8535533 0.58333343 0.35355335 -0.35355335 0.58333343 0.8535533 0.35355338 0.58333343 0.85355335
		 0.85355341 0.58333343 0.35355338 0.85355335 0.58333343 -0.35355335 0.35355335 0.75000012 -0.8535533
		 -0.35355335 0.75000012 -0.8535533 -0.8535533 0.75000012 -0.35355335 -0.8535533 0.75000012 0.35355335
		 -0.35355335 0.75000012 0.8535533 0.35355338 0.75000012 0.85355335 0.85355341 0.75000012 0.35355338
		 0.85355335 0.75000012 -0.35355335 0.35355335 0.91666675 -0.8535533 -0.35355335 0.91666675 -0.8535533
		 -0.8535533 0.91666675 -0.35355335 -0.8535533 0.91666675 0.35355335 -0.35355335 0.91666675 0.8535533
		 0.35355338 0.91666675 0.85355335 0.85355341 0.91666675 0.35355338 0.85355335 0.91666675 -0.35355335
		 0.26516503 1 -0.64016497 -0.26516503 1 -0.64016497 -0.64016497 1 -0.26516503 -0.64016497 1 0.26516503
		 -0.26516503 1 0.64016497 0.26516503 1 0.64016503 0.64016503 1 0.26516503 0.64016503 1 -0.26516503
		 0.11785112 -1 -0.28451777 -0.11785112 -1 -0.28451777 -0.28451777 -1 -0.11785112 -0.28451777 -1 0.11785112
		 -0.11785112 -1 0.28451777 0.11785113 -1 0.28451779 0.28451779 -1 0.11785113 0.28451779 -1 -0.11785112
		 0.11785112 1 -0.28451777 -0.11785112 1 -0.28451777 -0.28451777 1 -0.11785112 -0.28451777 1 0.11785112
		 -0.11785112 1 0.28451777 0.11785113 1 0.28451779 0.28451779 1 0.11785113 0.28451779 1 -0.11785112;
	setAttr -s 992 ".ed";
	setAttr ".ed[0:165]"  0 250 1 250 1 1 1 254 1 254 2 1 2 257 1 257 3 1 3 260 1
		 260 4 1 4 263 1 263 5 1 5 266 1 266 6 1 6 269 1 269 7 1 7 272 1 272 0 1 8 252 1 252 9 1
		 9 256 1 256 10 1 10 259 1 259 11 1 11 262 1 262 12 1 12 265 1 265 13 1 13 268 1 268 14 1
		 14 271 1 271 15 1 15 273 1 273 8 1 16 275 1 275 17 1 17 278 1 278 18 1 18 280 1 280 19 1
		 19 282 1 282 20 1 20 284 1 284 21 1 21 286 1 286 22 1 22 288 1 288 23 1 23 289 1
		 289 16 1 24 291 1 291 25 1 25 294 1 294 26 1 26 296 1 296 27 1 27 298 1 298 28 1
		 28 300 1 300 29 1 29 302 1 302 30 1 30 304 1 304 31 1 31 305 1 305 24 1 32 307 1
		 307 33 1 33 310 1 310 34 1 34 312 1 312 35 1 35 314 1 314 36 1 36 316 1 316 37 1
		 37 318 1 318 38 1 38 320 1 320 39 1 39 321 1 321 32 1 40 323 1 323 41 1 41 326 1
		 326 42 1 42 328 1 328 43 1 43 330 1 330 44 1 44 332 1 332 45 1 45 334 1 334 46 1
		 46 336 1 336 47 1 47 337 1 337 40 1 48 339 1 339 49 1 49 342 1 342 50 1 50 344 1
		 344 51 1 51 346 1 346 52 1 52 348 1 348 53 1 53 350 1 350 54 1 54 352 1 352 55 1
		 55 353 1 353 48 1 56 355 1 355 57 1 57 358 1 358 58 1 58 360 1 360 59 1 59 362 1
		 362 60 1 60 364 1 364 61 1 61 366 1 366 62 1 62 368 1 368 63 1 63 369 1 369 56 1
		 64 123 1 123 65 1 65 126 1 126 66 1 66 128 1 128 67 1 67 130 1 130 68 1 68 132 1
		 132 69 1 69 134 1 134 70 1 70 136 1 136 71 1 71 137 1 137 64 1 72 139 1 139 73 1
		 73 142 1 142 74 1 74 144 1 144 75 1 75 146 1 146 76 1 76 148 1 148 77 1 77 150 1
		 150 78 1 78 152 1 152 79 1 79 153 1 153 72 1 80 155 1 155 81 1 81 158 1 158 82 1
		 82 160 1 160 83 1;
	setAttr ".ed[166:331]" 83 162 1 162 84 1 84 164 1 164 85 1 85 166 1 166 86 1
		 86 168 1 168 87 1 87 169 1 169 80 1 88 171 1 171 89 1 89 174 1 174 90 1 90 176 1
		 176 91 1 91 178 1 178 92 1 92 180 1 180 93 1 93 182 1 182 94 1 94 184 1 184 95 1
		 95 185 1 185 88 1 96 187 1 187 97 1 97 190 1 190 98 1 98 192 1 192 99 1 99 194 1
		 194 100 1 100 196 1 196 101 1 101 198 1 198 102 1 102 200 1 200 103 1 103 201 1 201 96 1
		 104 203 1 203 105 1 105 206 1 206 106 1 106 208 1 208 107 1 107 210 1 210 108 1 108 212 1
		 212 109 1 109 214 1 214 110 1 110 216 1 216 111 1 111 217 1 217 104 1 112 219 1 219 113 1
		 113 222 1 222 114 1 114 224 1 224 115 1 115 226 1 226 116 1 116 228 1 228 117 1 117 230 1
		 230 118 1 118 232 1 232 119 1 119 233 1 233 112 1 0 253 1 253 8 1 1 251 1 251 9 1
		 2 255 1 255 10 1 3 258 1 258 11 1 4 261 1 261 12 1 5 264 1 264 13 1 6 267 1 267 14 1
		 7 270 1 270 15 1 8 276 1 276 16 1 9 274 1 274 17 1 10 277 1 277 18 1 11 279 1 279 19 1
		 12 281 1 281 20 1 13 283 1 283 21 1 14 285 1 285 22 1 15 287 1 287 23 1 16 292 1
		 292 24 1 17 290 1 290 25 1 18 293 1 293 26 1 19 295 1 295 27 1 20 297 1 297 28 1
		 21 299 1 299 29 1 22 301 1 301 30 1 23 303 1 303 31 1 24 308 1 308 32 1 25 306 1
		 306 33 1 26 309 1 309 34 1 27 311 1 311 35 1 28 313 1 313 36 1 29 315 1 315 37 1
		 30 317 1 317 38 1 31 319 1 319 39 1 32 324 1 324 40 1 33 322 1 322 41 1 34 325 1
		 325 42 1 35 327 1 327 43 1 36 329 1 329 44 1 37 331 1 331 45 1 38 333 1 333 46 1
		 39 335 1 335 47 1 40 340 1 340 48 1 41 338 1 338 49 1 42 341 1 341 50 1 43 343 1
		 343 51 1 44 345 1 345 52 1 45 347 1 347 53 1;
	setAttr ".ed[332:497]" 46 349 1 349 54 1 47 351 1 351 55 1 48 356 1 356 56 1
		 49 354 1 354 57 1 50 357 1 357 58 1 51 359 1 359 59 1 52 361 1 361 60 1 53 363 1
		 363 61 1 54 365 1 365 62 1 55 367 1 367 63 1 56 124 1 124 64 1 57 122 1 122 65 1
		 58 125 1 125 66 1 59 127 1 127 67 1 60 129 1 129 68 1 61 131 1 131 69 1 62 133 1
		 133 70 1 63 135 1 135 71 1 64 140 1 140 72 1 65 138 1 138 73 1 66 141 1 141 74 1
		 67 143 1 143 75 1 68 145 1 145 76 1 69 147 1 147 77 1 70 149 1 149 78 1 71 151 1
		 151 79 1 72 156 1 156 80 1 73 154 1 154 81 1 74 157 1 157 82 1 75 159 1 159 83 1
		 76 161 1 161 84 1 77 163 1 163 85 1 78 165 1 165 86 1 79 167 1 167 87 1 80 172 1
		 172 88 1 81 170 1 170 89 1 82 173 1 173 90 1 83 175 1 175 91 1 84 177 1 177 92 1
		 85 179 1 179 93 1 86 181 1 181 94 1 87 183 1 183 95 1 88 188 1 188 96 1 89 186 1
		 186 97 1 90 189 1 189 98 1 91 191 1 191 99 1 92 193 1 193 100 1 93 195 1 195 101 1
		 94 197 1 197 102 1 95 199 1 199 103 1 96 204 1 204 104 1 97 202 1 202 105 1 98 205 1
		 205 106 1 99 207 1 207 107 1 100 209 1 209 108 1 101 211 1 211 109 1 102 213 1 213 110 1
		 103 215 1 215 111 1 104 220 1 220 112 1 105 218 1 218 113 1 106 221 1 221 114 1 107 223 1
		 223 115 1 108 225 1 225 116 1 109 227 1 227 117 1 110 229 1 229 118 1 111 231 1 231 119 1
		 120 234 1 234 0 1 120 235 1 235 1 1 120 236 1 236 2 1 120 237 1 237 3 1 120 238 1
		 238 4 1 120 239 1 239 5 1 120 240 1 240 6 1 120 241 1 241 7 1 112 243 1 243 121 1
		 113 242 1 242 121 1 114 244 1 244 121 1 115 245 1 245 121 1 116 246 1 246 121 1 117 247 1
		 247 121 1 118 248 1 248 121 1 119 249 1 249 121 1 250 370 1 370 253 1;
	setAttr ".ed[498:663]" 251 370 1 252 370 1 254 371 1 371 251 1 255 371 1 256 371 1
		 257 372 1 372 255 1 258 372 1 259 372 1 260 373 1 373 258 1 261 373 1 262 373 1 263 374 1
		 374 261 1 264 374 1 265 374 1 266 375 1 375 264 1 267 375 1 268 375 1 269 376 1 376 267 1
		 270 376 1 271 376 1 272 377 1 377 270 1 253 377 1 273 377 1 252 378 1 378 276 1 274 378 1
		 275 378 1 256 379 1 379 274 1 277 379 1 278 379 1 259 380 1 380 277 1 279 380 1 280 380 1
		 262 381 1 381 279 1 281 381 1 282 381 1 265 382 1 382 281 1 283 382 1 284 382 1 268 383 1
		 383 283 1 285 383 1 286 383 1 271 384 1 384 285 1 287 384 1 288 384 1 273 385 1 385 287 1
		 276 385 1 289 385 1 275 386 1 386 292 1 290 386 1 291 386 1 278 387 1 387 290 1 293 387 1
		 294 387 1 280 388 1 388 293 1 295 388 1 296 388 1 282 389 1 389 295 1 297 389 1 298 389 1
		 284 390 1 390 297 1 299 390 1 300 390 1 286 391 1 391 299 1 301 391 1 302 391 1 288 392 1
		 392 301 1 303 392 1 304 392 1 289 393 1 393 303 1 292 393 1 305 393 1 291 394 1 394 308 1
		 306 394 1 307 394 1 294 395 1 395 306 1 309 395 1 310 395 1 296 396 1 396 309 1 311 396 1
		 312 396 1 298 397 1 397 311 1 313 397 1 314 397 1 300 398 1 398 313 1 315 398 1 316 398 1
		 302 399 1 399 315 1 317 399 1 318 399 1 304 400 1 400 317 1 319 400 1 320 400 1 305 401 1
		 401 319 1 308 401 1 321 401 1 307 402 1 402 324 1 322 402 1 323 402 1 310 403 1 403 322 1
		 325 403 1 326 403 1 312 404 1 404 325 1 327 404 1 328 404 1 314 405 1 405 327 1 329 405 1
		 330 405 1 316 406 1 406 329 1 331 406 1 332 406 1 318 407 1 407 331 1 333 407 1 334 407 1
		 320 408 1 408 333 1 335 408 1 336 408 1 321 409 1 409 335 1 324 409 1 337 409 1 323 410 1
		 410 340 1 338 410 1 339 410 1 326 411 1 411 338 1 341 411 1 342 411 1;
	setAttr ".ed[664:829]" 328 412 1 412 341 1 343 412 1 344 412 1 330 413 1 413 343 1
		 345 413 1 346 413 1 332 414 1 414 345 1 347 414 1 348 414 1 334 415 1 415 347 1 349 415 1
		 350 415 1 336 416 1 416 349 1 351 416 1 352 416 1 337 417 1 417 351 1 340 417 1 353 417 1
		 339 418 1 418 356 1 354 418 1 355 418 1 342 419 1 419 354 1 357 419 1 358 419 1 344 420 1
		 420 357 1 359 420 1 360 420 1 346 421 1 421 359 1 361 421 1 362 421 1 348 422 1 422 361 1
		 363 422 1 364 422 1 350 423 1 423 363 1 365 423 1 366 423 1 352 424 1 424 365 1 367 424 1
		 368 424 1 353 425 1 425 367 1 356 425 1 369 425 1 355 426 1 426 124 1 122 426 1 123 426 1
		 358 427 1 427 122 1 125 427 1 126 427 1 360 428 1 428 125 1 127 428 1 128 428 1 362 429 1
		 429 127 1 129 429 1 130 429 1 364 430 1 430 129 1 131 430 1 132 430 1 366 431 1 431 131 1
		 133 431 1 134 431 1 368 432 1 432 133 1 135 432 1 136 432 1 369 433 1 433 135 1 124 433 1
		 137 433 1 123 434 1 434 140 1 138 434 1 139 434 1 126 435 1 435 138 1 141 435 1 142 435 1
		 128 436 1 436 141 1 143 436 1 144 436 1 130 437 1 437 143 1 145 437 1 146 437 1 132 438 1
		 438 145 1 147 438 1 148 438 1 134 439 1 439 147 1 149 439 1 150 439 1 136 440 1 440 149 1
		 151 440 1 152 440 1 137 441 1 441 151 1 140 441 1 153 441 1 139 442 1 442 156 1 154 442 1
		 155 442 1 142 443 1 443 154 1 157 443 1 158 443 1 144 444 1 444 157 1 159 444 1 160 444 1
		 146 445 1 445 159 1 161 445 1 162 445 1 148 446 1 446 161 1 163 446 1 164 446 1 150 447 1
		 447 163 1 165 447 1 166 447 1 152 448 1 448 165 1 167 448 1 168 448 1 153 449 1 449 167 1
		 156 449 1 169 449 1 155 450 1 450 172 1 170 450 1 171 450 1 158 451 1 451 170 1 173 451 1
		 174 451 1 160 452 1 452 173 1 175 452 1 176 452 1 162 453 1 453 175 1;
	setAttr ".ed[830:991]" 177 453 1 178 453 1 164 454 1 454 177 1 179 454 1 180 454 1
		 166 455 1 455 179 1 181 455 1 182 455 1 168 456 1 456 181 1 183 456 1 184 456 1 169 457 1
		 457 183 1 172 457 1 185 457 1 171 458 1 458 188 1 186 458 1 187 458 1 174 459 1 459 186 1
		 189 459 1 190 459 1 176 460 1 460 189 1 191 460 1 192 460 1 178 461 1 461 191 1 193 461 1
		 194 461 1 180 462 1 462 193 1 195 462 1 196 462 1 182 463 1 463 195 1 197 463 1 198 463 1
		 184 464 1 464 197 1 199 464 1 200 464 1 185 465 1 465 199 1 188 465 1 201 465 1 187 466 1
		 466 204 1 202 466 1 203 466 1 190 467 1 467 202 1 205 467 1 206 467 1 192 468 1 468 205 1
		 207 468 1 208 468 1 194 469 1 469 207 1 209 469 1 210 469 1 196 470 1 470 209 1 211 470 1
		 212 470 1 198 471 1 471 211 1 213 471 1 214 471 1 200 472 1 472 213 1 215 472 1 216 472 1
		 201 473 1 473 215 1 204 473 1 217 473 1 203 474 1 474 220 1 218 474 1 219 474 1 206 475 1
		 475 218 1 221 475 1 222 475 1 208 476 1 476 221 1 223 476 1 224 476 1 210 477 1 477 223 1
		 225 477 1 226 477 1 212 478 1 478 225 1 227 478 1 228 478 1 214 479 1 479 227 1 229 479 1
		 230 479 1 216 480 1 480 229 1 231 480 1 232 480 1 217 481 1 481 231 1 220 481 1 233 481 1
		 250 482 1 482 235 1 234 482 1 254 483 1 483 236 1 235 483 1 257 484 1 484 237 1 236 484 1
		 260 485 1 485 238 1 237 485 1 263 486 1 486 239 1 238 486 1 266 487 1 487 240 1 239 487 1
		 269 488 1 488 241 1 240 488 1 272 489 1 489 234 1 241 489 1 219 490 1 490 243 1 242 490 1
		 222 491 1 491 242 1 244 491 1 224 492 1 492 244 1 245 492 1 226 493 1 493 245 1 246 493 1
		 228 494 1 494 246 1 247 494 1 230 495 1 495 247 1 248 495 1 232 496 1 496 248 1 249 496 1
		 233 497 1 497 249 1 243 497 1;
	setAttr -s 496 -ch 1984 ".fc[0:495]" -type "polyFaces" 
		f 4 0 496 497 -241
		mu 0 4 0 279 151 283
		f 4 1 242 498 -497
		mu 0 4 279 1 280 151
		f 4 -499 243 -18 499
		mu 0 4 151 280 11 281
		f 4 -498 -500 -17 -242
		mu 0 4 283 151 281 8
		f 4 2 500 501 -243
		mu 0 4 1 284 152 280
		f 4 3 244 502 -501
		mu 0 4 284 2 285 152
		f 4 -503 245 -20 503
		mu 0 4 152 285 13 286
		f 4 -502 -504 -19 -244
		mu 0 4 280 152 286 11
		f 4 4 504 505 -245
		mu 0 4 2 288 153 285
		f 4 5 246 506 -505
		mu 0 4 288 3 289 153
		f 4 -507 247 -22 507
		mu 0 4 153 289 15 290
		f 4 -506 -508 -21 -246
		mu 0 4 285 153 290 13
		f 4 6 508 509 -247
		mu 0 4 3 292 154 289
		f 4 7 248 510 -509
		mu 0 4 292 4 293 154
		f 4 -511 249 -24 511
		mu 0 4 154 293 17 294
		f 4 -510 -512 -23 -248
		mu 0 4 289 154 294 15
		f 4 8 512 513 -249
		mu 0 4 4 296 155 293
		f 4 9 250 514 -513
		mu 0 4 296 5 297 155
		f 4 -515 251 -26 515
		mu 0 4 155 297 19 298
		f 4 -514 -516 -25 -250
		mu 0 4 293 155 298 17
		f 4 10 516 517 -251
		mu 0 4 5 300 156 297
		f 4 11 252 518 -517
		mu 0 4 300 6 301 156
		f 4 -519 253 -28 519
		mu 0 4 156 301 21 302
		f 4 -518 -520 -27 -252
		mu 0 4 297 156 302 19
		f 4 12 520 521 -253
		mu 0 4 6 304 157 301
		f 4 13 254 522 -521
		mu 0 4 304 7 305 157
		f 4 -523 255 -30 523
		mu 0 4 157 305 23 306
		f 4 -522 -524 -29 -254
		mu 0 4 301 157 306 21
		f 4 14 524 525 -255
		mu 0 4 7 308 158 305
		f 4 15 240 526 -525
		mu 0 4 308 0 283 158
		f 4 -527 241 -32 527
		mu 0 4 158 283 8 309
		f 4 -526 -528 -31 -256
		mu 0 4 305 158 309 23
		f 4 16 528 529 -257
		mu 0 4 9 282 159 313
		f 4 17 258 530 -529
		mu 0 4 282 12 311 159
		f 4 -531 259 -34 531
		mu 0 4 159 311 27 312
		f 4 -530 -532 -33 -258
		mu 0 4 313 159 312 25
		f 4 18 532 533 -259
		mu 0 4 12 287 160 311
		f 4 19 260 534 -533
		mu 0 4 287 14 315 160
		f 4 -535 261 -36 535
		mu 0 4 160 315 28 316
		f 4 -534 -536 -35 -260
		mu 0 4 311 160 316 27
		f 4 20 536 537 -261
		mu 0 4 14 291 161 315
		f 4 21 262 538 -537
		mu 0 4 291 16 317 161
		f 4 -539 263 -38 539
		mu 0 4 161 317 29 318
		f 4 -538 -540 -37 -262
		mu 0 4 315 161 318 28
		f 4 22 540 541 -263
		mu 0 4 16 295 162 317
		f 4 23 264 542 -541
		mu 0 4 295 18 319 162
		f 4 -543 265 -40 543
		mu 0 4 162 319 30 320
		f 4 -542 -544 -39 -264
		mu 0 4 317 162 320 29
		f 4 24 544 545 -265
		mu 0 4 18 299 163 319
		f 4 25 266 546 -545
		mu 0 4 299 20 321 163
		f 4 -547 267 -42 547
		mu 0 4 163 321 31 322
		f 4 -546 -548 -41 -266
		mu 0 4 319 163 322 30
		f 4 26 548 549 -267
		mu 0 4 20 303 164 321
		f 4 27 268 550 -549
		mu 0 4 303 22 323 164
		f 4 -551 269 -44 551
		mu 0 4 164 323 32 324
		f 4 -550 -552 -43 -268
		mu 0 4 321 164 324 31
		f 4 28 552 553 -269
		mu 0 4 22 307 165 323
		f 4 29 270 554 -553
		mu 0 4 307 24 325 165
		f 4 -555 271 -46 555
		mu 0 4 165 325 33 326
		f 4 -554 -556 -45 -270
		mu 0 4 323 165 326 32
		f 4 30 556 557 -271
		mu 0 4 24 310 166 325
		f 4 31 256 558 -557
		mu 0 4 310 10 314 166
		f 4 -559 257 -48 559
		mu 0 4 166 314 26 327
		f 4 -558 -560 -47 -272
		mu 0 4 325 166 327 33
		f 4 32 560 561 -273
		mu 0 4 25 312 167 330
		f 4 33 274 562 -561
		mu 0 4 312 27 328 167
		f 4 -563 275 -50 563
		mu 0 4 167 328 36 329
		f 4 -562 -564 -49 -274
		mu 0 4 330 167 329 34
		f 4 34 564 565 -275
		mu 0 4 27 316 168 328
		f 4 35 276 566 -565
		mu 0 4 316 28 332 168
		f 4 -567 277 -52 567
		mu 0 4 168 332 37 333
		f 4 -566 -568 -51 -276
		mu 0 4 328 168 333 36
		f 4 36 568 569 -277
		mu 0 4 28 318 169 332
		f 4 37 278 570 -569
		mu 0 4 318 29 334 169
		f 4 -571 279 -54 571
		mu 0 4 169 334 38 335
		f 4 -570 -572 -53 -278
		mu 0 4 332 169 335 37
		f 4 38 572 573 -279
		mu 0 4 29 320 170 334
		f 4 39 280 574 -573
		mu 0 4 320 30 336 170
		f 4 -575 281 -56 575
		mu 0 4 170 336 39 337
		f 4 -574 -576 -55 -280
		mu 0 4 334 170 337 38
		f 4 40 576 577 -281
		mu 0 4 30 322 171 336
		f 4 41 282 578 -577
		mu 0 4 322 31 338 171
		f 4 -579 283 -58 579
		mu 0 4 171 338 40 339
		f 4 -578 -580 -57 -282
		mu 0 4 336 171 339 39
		f 4 42 580 581 -283
		mu 0 4 31 324 172 338
		f 4 43 284 582 -581
		mu 0 4 324 32 340 172
		f 4 -583 285 -60 583
		mu 0 4 172 340 41 341
		f 4 -582 -584 -59 -284
		mu 0 4 338 172 341 40
		f 4 44 584 585 -285
		mu 0 4 32 326 173 340
		f 4 45 286 586 -585
		mu 0 4 326 33 342 173
		f 4 -587 287 -62 587
		mu 0 4 173 342 42 343
		f 4 -586 -588 -61 -286
		mu 0 4 340 173 343 41
		f 4 46 588 589 -287
		mu 0 4 33 327 174 342
		f 4 47 272 590 -589
		mu 0 4 327 26 331 174
		f 4 -591 273 -64 591
		mu 0 4 174 331 35 344
		f 4 -590 -592 -63 -288
		mu 0 4 342 174 344 42
		f 4 48 592 593 -289
		mu 0 4 34 329 175 347
		f 4 49 290 594 -593
		mu 0 4 329 36 345 175
		f 4 -595 291 -66 595
		mu 0 4 175 345 45 346
		f 4 -594 -596 -65 -290
		mu 0 4 347 175 346 43
		f 4 50 596 597 -291
		mu 0 4 36 333 176 345
		f 4 51 292 598 -597
		mu 0 4 333 37 349 176
		f 4 -599 293 -68 599
		mu 0 4 176 349 46 350
		f 4 -598 -600 -67 -292
		mu 0 4 345 176 350 45
		f 4 52 600 601 -293
		mu 0 4 37 335 177 349
		f 4 53 294 602 -601
		mu 0 4 335 38 351 177
		f 4 -603 295 -70 603
		mu 0 4 177 351 47 352
		f 4 -602 -604 -69 -294
		mu 0 4 349 177 352 46
		f 4 54 604 605 -295
		mu 0 4 38 337 178 351
		f 4 55 296 606 -605
		mu 0 4 337 39 353 178
		f 4 -607 297 -72 607
		mu 0 4 178 353 48 354
		f 4 -606 -608 -71 -296
		mu 0 4 351 178 354 47
		f 4 56 608 609 -297
		mu 0 4 39 339 179 353
		f 4 57 298 610 -609
		mu 0 4 339 40 355 179
		f 4 -611 299 -74 611
		mu 0 4 179 355 49 356
		f 4 -610 -612 -73 -298
		mu 0 4 353 179 356 48
		f 4 58 612 613 -299
		mu 0 4 40 341 180 355
		f 4 59 300 614 -613
		mu 0 4 341 41 357 180
		f 4 -615 301 -76 615
		mu 0 4 180 357 50 358
		f 4 -614 -616 -75 -300
		mu 0 4 355 180 358 49
		f 4 60 616 617 -301
		mu 0 4 41 343 181 357
		f 4 61 302 618 -617
		mu 0 4 343 42 359 181
		f 4 -619 303 -78 619
		mu 0 4 181 359 51 360
		f 4 -618 -620 -77 -302
		mu 0 4 357 181 360 50
		f 4 62 620 621 -303
		mu 0 4 42 344 182 359
		f 4 63 288 622 -621
		mu 0 4 344 35 348 182
		f 4 -623 289 -80 623
		mu 0 4 182 348 44 361
		f 4 -622 -624 -79 -304
		mu 0 4 359 182 361 51
		f 4 64 624 625 -305
		mu 0 4 43 346 183 364
		f 4 65 306 626 -625
		mu 0 4 346 45 362 183
		f 4 -627 307 -82 627
		mu 0 4 183 362 54 363
		f 4 -626 -628 -81 -306
		mu 0 4 364 183 363 52
		f 4 66 628 629 -307
		mu 0 4 45 350 184 362
		f 4 67 308 630 -629
		mu 0 4 350 46 366 184
		f 4 -631 309 -84 631
		mu 0 4 184 366 55 367
		f 4 -630 -632 -83 -308
		mu 0 4 362 184 367 54
		f 4 68 632 633 -309
		mu 0 4 46 352 185 366
		f 4 69 310 634 -633
		mu 0 4 352 47 368 185
		f 4 -635 311 -86 635
		mu 0 4 185 368 56 369
		f 4 -634 -636 -85 -310
		mu 0 4 366 185 369 55
		f 4 70 636 637 -311
		mu 0 4 47 354 186 368
		f 4 71 312 638 -637
		mu 0 4 354 48 370 186
		f 4 -639 313 -88 639
		mu 0 4 186 370 57 371
		f 4 -638 -640 -87 -312
		mu 0 4 368 186 371 56
		f 4 72 640 641 -313
		mu 0 4 48 356 187 370
		f 4 73 314 642 -641
		mu 0 4 356 49 372 187
		f 4 -643 315 -90 643
		mu 0 4 187 372 58 373
		f 4 -642 -644 -89 -314
		mu 0 4 370 187 373 57
		f 4 74 644 645 -315
		mu 0 4 49 358 188 372
		f 4 75 316 646 -645
		mu 0 4 358 50 374 188
		f 4 -647 317 -92 647
		mu 0 4 188 374 59 375
		f 4 -646 -648 -91 -316
		mu 0 4 372 188 375 58
		f 4 76 648 649 -317
		mu 0 4 50 360 189 374
		f 4 77 318 650 -649
		mu 0 4 360 51 376 189
		f 4 -651 319 -94 651
		mu 0 4 189 376 60 377
		f 4 -650 -652 -93 -318
		mu 0 4 374 189 377 59
		f 4 78 652 653 -319
		mu 0 4 51 361 190 376
		f 4 79 304 654 -653
		mu 0 4 361 44 365 190
		f 4 -655 305 -96 655
		mu 0 4 190 365 53 378
		f 4 -654 -656 -95 -320
		mu 0 4 376 190 378 60
		f 4 80 656 657 -321
		mu 0 4 52 363 191 381
		f 4 81 322 658 -657
		mu 0 4 363 54 379 191
		f 4 -659 323 -98 659
		mu 0 4 191 379 63 380
		f 4 -658 -660 -97 -322
		mu 0 4 381 191 380 61
		f 4 82 660 661 -323
		mu 0 4 54 367 192 379
		f 4 83 324 662 -661
		mu 0 4 367 55 383 192
		f 4 -663 325 -100 663
		mu 0 4 192 383 64 384
		f 4 -662 -664 -99 -324
		mu 0 4 379 192 384 63
		f 4 84 664 665 -325
		mu 0 4 55 369 193 383
		f 4 85 326 666 -665
		mu 0 4 369 56 385 193
		f 4 -667 327 -102 667
		mu 0 4 193 385 65 386
		f 4 -666 -668 -101 -326
		mu 0 4 383 193 386 64
		f 4 86 668 669 -327
		mu 0 4 56 371 194 385
		f 4 87 328 670 -669
		mu 0 4 371 57 387 194
		f 4 -671 329 -104 671
		mu 0 4 194 387 66 388
		f 4 -670 -672 -103 -328
		mu 0 4 385 194 388 65
		f 4 88 672 673 -329
		mu 0 4 57 373 195 387
		f 4 89 330 674 -673
		mu 0 4 373 58 389 195
		f 4 -675 331 -106 675
		mu 0 4 195 389 67 390
		f 4 -674 -676 -105 -330
		mu 0 4 387 195 390 66
		f 4 90 676 677 -331
		mu 0 4 58 375 196 389
		f 4 91 332 678 -677
		mu 0 4 375 59 391 196
		f 4 -679 333 -108 679
		mu 0 4 196 391 68 392
		f 4 -678 -680 -107 -332
		mu 0 4 389 196 392 67
		f 4 92 680 681 -333
		mu 0 4 59 377 197 391
		f 4 93 334 682 -681
		mu 0 4 377 60 393 197
		f 4 -683 335 -110 683
		mu 0 4 197 393 69 394
		f 4 -682 -684 -109 -334
		mu 0 4 391 197 394 68
		f 4 94 684 685 -335
		mu 0 4 60 378 198 393
		f 4 95 320 686 -685
		mu 0 4 378 53 382 198
		f 4 -687 321 -112 687
		mu 0 4 198 382 62 395
		f 4 -686 -688 -111 -336
		mu 0 4 393 198 395 69
		f 4 96 688 689 -337
		mu 0 4 61 380 199 398
		f 4 97 338 690 -689
		mu 0 4 380 63 396 199
		f 4 -691 339 -114 691
		mu 0 4 199 396 72 397
		f 4 -690 -692 -113 -338
		mu 0 4 398 199 397 70
		f 4 98 692 693 -339
		mu 0 4 63 384 200 396
		f 4 99 340 694 -693
		mu 0 4 384 64 400 200
		f 4 -695 341 -116 695
		mu 0 4 200 400 73 401
		f 4 -694 -696 -115 -340
		mu 0 4 396 200 401 72
		f 4 100 696 697 -341
		mu 0 4 64 386 201 400
		f 4 101 342 698 -697
		mu 0 4 386 65 402 201
		f 4 -699 343 -118 699
		mu 0 4 201 402 74 403
		f 4 -698 -700 -117 -342
		mu 0 4 400 201 403 73
		f 4 102 700 701 -343
		mu 0 4 65 388 202 402
		f 4 103 344 702 -701
		mu 0 4 388 66 404 202
		f 4 -703 345 -120 703
		mu 0 4 202 404 75 405
		f 4 -702 -704 -119 -344
		mu 0 4 402 202 405 74
		f 4 104 704 705 -345
		mu 0 4 66 390 203 404
		f 4 105 346 706 -705
		mu 0 4 390 67 406 203
		f 4 -707 347 -122 707
		mu 0 4 203 406 76 407
		f 4 -706 -708 -121 -346
		mu 0 4 404 203 407 75
		f 4 106 708 709 -347
		mu 0 4 67 392 204 406
		f 4 107 348 710 -709
		mu 0 4 392 68 408 204
		f 4 -711 349 -124 711
		mu 0 4 204 408 77 409
		f 4 -710 -712 -123 -348
		mu 0 4 406 204 409 76
		f 4 108 712 713 -349
		mu 0 4 68 394 205 408
		f 4 109 350 714 -713
		mu 0 4 394 69 410 205
		f 4 -715 351 -126 715
		mu 0 4 205 410 78 411
		f 4 -714 -716 -125 -350
		mu 0 4 408 205 411 77
		f 4 110 716 717 -351
		mu 0 4 69 395 206 410
		f 4 111 336 718 -717
		mu 0 4 395 62 399 206
		f 4 -719 337 -128 719
		mu 0 4 206 399 71 412
		f 4 -718 -720 -127 -352
		mu 0 4 410 206 412 78
		f 4 112 720 721 -353
		mu 0 4 70 397 207 415
		f 4 113 354 722 -721
		mu 0 4 397 72 413 207
		f 4 -723 355 -130 723
		mu 0 4 207 413 81 414
		f 4 -722 -724 -129 -354
		mu 0 4 415 207 414 79
		f 4 114 724 725 -355
		mu 0 4 72 401 208 413
		f 4 115 356 726 -725
		mu 0 4 401 73 417 208
		f 4 -727 357 -132 727
		mu 0 4 208 417 82 418
		f 4 -726 -728 -131 -356
		mu 0 4 413 208 418 81
		f 4 116 728 729 -357
		mu 0 4 73 403 209 417
		f 4 117 358 730 -729
		mu 0 4 403 74 419 209
		f 4 -731 359 -134 731
		mu 0 4 209 419 83 420
		f 4 -730 -732 -133 -358
		mu 0 4 417 209 420 82
		f 4 118 732 733 -359
		mu 0 4 74 405 210 419
		f 4 119 360 734 -733
		mu 0 4 405 75 421 210
		f 4 -735 361 -136 735
		mu 0 4 210 421 84 422
		f 4 -734 -736 -135 -360
		mu 0 4 419 210 422 83
		f 4 120 736 737 -361
		mu 0 4 75 407 211 421
		f 4 121 362 738 -737
		mu 0 4 407 76 423 211
		f 4 -739 363 -138 739
		mu 0 4 211 423 85 424
		f 4 -738 -740 -137 -362
		mu 0 4 421 211 424 84
		f 4 122 740 741 -363
		mu 0 4 76 409 212 423
		f 4 123 364 742 -741
		mu 0 4 409 77 425 212
		f 4 -743 365 -140 743
		mu 0 4 212 425 86 426
		f 4 -742 -744 -139 -364
		mu 0 4 423 212 426 85
		f 4 124 744 745 -365
		mu 0 4 77 411 213 425
		f 4 125 366 746 -745
		mu 0 4 411 78 427 213
		f 4 -747 367 -142 747
		mu 0 4 213 427 87 428
		f 4 -746 -748 -141 -366
		mu 0 4 425 213 428 86
		f 4 126 748 749 -367
		mu 0 4 78 412 214 427
		f 4 127 352 750 -749
		mu 0 4 412 71 416 214
		f 4 -751 353 -144 751
		mu 0 4 214 416 80 429
		f 4 -750 -752 -143 -368
		mu 0 4 427 214 429 87
		f 4 128 752 753 -369
		mu 0 4 79 414 215 432
		f 4 129 370 754 -753
		mu 0 4 414 81 430 215
		f 4 -755 371 -146 755
		mu 0 4 215 430 90 431
		f 4 -754 -756 -145 -370
		mu 0 4 432 215 431 88
		f 4 130 756 757 -371
		mu 0 4 81 418 216 430
		f 4 131 372 758 -757
		mu 0 4 418 82 434 216
		f 4 -759 373 -148 759
		mu 0 4 216 434 91 435
		f 4 -758 -760 -147 -372
		mu 0 4 430 216 435 90
		f 4 132 760 761 -373
		mu 0 4 82 420 217 434
		f 4 133 374 762 -761
		mu 0 4 420 83 436 217
		f 4 -763 375 -150 763
		mu 0 4 217 436 92 437
		f 4 -762 -764 -149 -374
		mu 0 4 434 217 437 91
		f 4 134 764 765 -375
		mu 0 4 83 422 218 436
		f 4 135 376 766 -765
		mu 0 4 422 84 438 218
		f 4 -767 377 -152 767
		mu 0 4 218 438 93 439
		f 4 -766 -768 -151 -376
		mu 0 4 436 218 439 92
		f 4 136 768 769 -377
		mu 0 4 84 424 219 438
		f 4 137 378 770 -769
		mu 0 4 424 85 440 219
		f 4 -771 379 -154 771
		mu 0 4 219 440 94 441
		f 4 -770 -772 -153 -378
		mu 0 4 438 219 441 93
		f 4 138 772 773 -379
		mu 0 4 85 426 220 440
		f 4 139 380 774 -773
		mu 0 4 426 86 442 220
		f 4 -775 381 -156 775
		mu 0 4 220 442 95 443
		f 4 -774 -776 -155 -380
		mu 0 4 440 220 443 94
		f 4 140 776 777 -381
		mu 0 4 86 428 221 442
		f 4 141 382 778 -777
		mu 0 4 428 87 444 221
		f 4 -779 383 -158 779
		mu 0 4 221 444 96 445
		f 4 -778 -780 -157 -382
		mu 0 4 442 221 445 95
		f 4 142 780 781 -383
		mu 0 4 87 429 222 444
		f 4 143 368 782 -781
		mu 0 4 429 80 433 222
		f 4 -783 369 -160 783
		mu 0 4 222 433 89 446
		f 4 -782 -784 -159 -384
		mu 0 4 444 222 446 96
		f 4 144 784 785 -385
		mu 0 4 88 431 223 449
		f 4 145 386 786 -785
		mu 0 4 431 90 447 223
		f 4 -787 387 -162 787
		mu 0 4 223 447 99 448
		f 4 -786 -788 -161 -386
		mu 0 4 449 223 448 97
		f 4 146 788 789 -387
		mu 0 4 90 435 224 447
		f 4 147 388 790 -789
		mu 0 4 435 91 451 224
		f 4 -791 389 -164 791
		mu 0 4 224 451 100 452
		f 4 -790 -792 -163 -388
		mu 0 4 447 224 452 99
		f 4 148 792 793 -389
		mu 0 4 91 437 225 451
		f 4 149 390 794 -793
		mu 0 4 437 92 453 225
		f 4 -795 391 -166 795
		mu 0 4 225 453 101 454
		f 4 -794 -796 -165 -390
		mu 0 4 451 225 454 100
		f 4 150 796 797 -391
		mu 0 4 92 439 226 453
		f 4 151 392 798 -797
		mu 0 4 439 93 455 226
		f 4 -799 393 -168 799
		mu 0 4 226 455 102 456
		f 4 -798 -800 -167 -392
		mu 0 4 453 226 456 101
		f 4 152 800 801 -393
		mu 0 4 93 441 227 455
		f 4 153 394 802 -801
		mu 0 4 441 94 457 227
		f 4 -803 395 -170 803
		mu 0 4 227 457 103 458
		f 4 -802 -804 -169 -394
		mu 0 4 455 227 458 102
		f 4 154 804 805 -395
		mu 0 4 94 443 228 457
		f 4 155 396 806 -805
		mu 0 4 443 95 459 228
		f 4 -807 397 -172 807
		mu 0 4 228 459 104 460
		f 4 -806 -808 -171 -396
		mu 0 4 457 228 460 103
		f 4 156 808 809 -397
		mu 0 4 95 445 229 459
		f 4 157 398 810 -809
		mu 0 4 445 96 461 229
		f 4 -811 399 -174 811
		mu 0 4 229 461 105 462
		f 4 -810 -812 -173 -398
		mu 0 4 459 229 462 104
		f 4 158 812 813 -399
		mu 0 4 96 446 230 461
		f 4 159 384 814 -813
		mu 0 4 446 89 450 230
		f 4 -815 385 -176 815
		mu 0 4 230 450 98 463
		f 4 -814 -816 -175 -400
		mu 0 4 461 230 463 105
		f 4 160 816 817 -401
		mu 0 4 97 448 231 466
		f 4 161 402 818 -817
		mu 0 4 448 99 464 231
		f 4 -819 403 -178 819
		mu 0 4 231 464 108 465
		f 4 -818 -820 -177 -402
		mu 0 4 466 231 465 106
		f 4 162 820 821 -403
		mu 0 4 99 452 232 464
		f 4 163 404 822 -821
		mu 0 4 452 100 468 232
		f 4 -823 405 -180 823
		mu 0 4 232 468 109 469
		f 4 -822 -824 -179 -404
		mu 0 4 464 232 469 108
		f 4 164 824 825 -405
		mu 0 4 100 454 233 468
		f 4 165 406 826 -825
		mu 0 4 454 101 470 233
		f 4 -827 407 -182 827
		mu 0 4 233 470 110 471
		f 4 -826 -828 -181 -406
		mu 0 4 468 233 471 109
		f 4 166 828 829 -407
		mu 0 4 101 456 234 470
		f 4 167 408 830 -829
		mu 0 4 456 102 472 234
		f 4 -831 409 -184 831
		mu 0 4 234 472 111 473
		f 4 -830 -832 -183 -408
		mu 0 4 470 234 473 110
		f 4 168 832 833 -409
		mu 0 4 102 458 235 472
		f 4 169 410 834 -833
		mu 0 4 458 103 474 235
		f 4 -835 411 -186 835
		mu 0 4 235 474 112 475
		f 4 -834 -836 -185 -410
		mu 0 4 472 235 475 111
		f 4 170 836 837 -411
		mu 0 4 103 460 236 474
		f 4 171 412 838 -837
		mu 0 4 460 104 476 236
		f 4 -839 413 -188 839
		mu 0 4 236 476 113 477
		f 4 -838 -840 -187 -412
		mu 0 4 474 236 477 112
		f 4 172 840 841 -413
		mu 0 4 104 462 237 476
		f 4 173 414 842 -841
		mu 0 4 462 105 478 237
		f 4 -843 415 -190 843
		mu 0 4 237 478 114 479
		f 4 -842 -844 -189 -414
		mu 0 4 476 237 479 113
		f 4 174 844 845 -415
		mu 0 4 105 463 238 478
		f 4 175 400 846 -845
		mu 0 4 463 98 467 238
		f 4 -847 401 -192 847
		mu 0 4 238 467 107 480
		f 4 -846 -848 -191 -416
		mu 0 4 478 238 480 114
		f 4 176 848 849 -417
		mu 0 4 106 465 239 483
		f 4 177 418 850 -849
		mu 0 4 465 108 481 239
		f 4 -851 419 -194 851
		mu 0 4 239 481 117 482
		f 4 -850 -852 -193 -418
		mu 0 4 483 239 482 115
		f 4 178 852 853 -419
		mu 0 4 108 469 240 481
		f 4 179 420 854 -853
		mu 0 4 469 109 485 240
		f 4 -855 421 -196 855
		mu 0 4 240 485 118 486
		f 4 -854 -856 -195 -420
		mu 0 4 481 240 486 117
		f 4 180 856 857 -421
		mu 0 4 109 471 241 485
		f 4 181 422 858 -857
		mu 0 4 471 110 487 241
		f 4 -859 423 -198 859
		mu 0 4 241 487 119 488
		f 4 -858 -860 -197 -422
		mu 0 4 485 241 488 118
		f 4 182 860 861 -423
		mu 0 4 110 473 242 487
		f 4 183 424 862 -861
		mu 0 4 473 111 489 242
		f 4 -863 425 -200 863
		mu 0 4 242 489 120 490
		f 4 -862 -864 -199 -424
		mu 0 4 487 242 490 119
		f 4 184 864 865 -425
		mu 0 4 111 475 243 489
		f 4 185 426 866 -865
		mu 0 4 475 112 491 243
		f 4 -867 427 -202 867
		mu 0 4 243 491 121 492
		f 4 -866 -868 -201 -426
		mu 0 4 489 243 492 120
		f 4 186 868 869 -427
		mu 0 4 112 477 244 491
		f 4 187 428 870 -869
		mu 0 4 477 113 493 244
		f 4 -871 429 -204 871
		mu 0 4 244 493 122 494
		f 4 -870 -872 -203 -428
		mu 0 4 491 244 494 121
		f 4 188 872 873 -429
		mu 0 4 113 479 245 493
		f 4 189 430 874 -873
		mu 0 4 479 114 495 245
		f 4 -875 431 -206 875
		mu 0 4 245 495 123 496
		f 4 -874 -876 -205 -430
		mu 0 4 493 245 496 122
		f 4 190 876 877 -431
		mu 0 4 114 480 246 495
		f 4 191 416 878 -877
		mu 0 4 480 107 484 246
		f 4 -879 417 -208 879
		mu 0 4 246 484 116 497
		f 4 -878 -880 -207 -432
		mu 0 4 495 246 497 123
		f 4 192 880 881 -433
		mu 0 4 115 482 247 501
		f 4 193 434 882 -881
		mu 0 4 482 117 498 247
		f 4 -883 435 -210 883
		mu 0 4 247 498 127 499
		f 4 -882 -884 -209 -434
		mu 0 4 501 247 499 124
		f 4 194 884 885 -435
		mu 0 4 117 486 248 498
		f 4 195 436 886 -885
		mu 0 4 486 118 503 248
		f 4 -887 437 -212 887
		mu 0 4 248 503 129 504
		f 4 -886 -888 -211 -436
		mu 0 4 498 248 504 127
		f 4 196 888 889 -437
		mu 0 4 118 488 249 503
		f 4 197 438 890 -889
		mu 0 4 488 119 506 249
		f 4 -891 439 -214 891
		mu 0 4 249 506 131 507
		f 4 -890 -892 -213 -438
		mu 0 4 503 249 507 129
		f 4 198 892 893 -439
		mu 0 4 119 490 250 506
		f 4 199 440 894 -893
		mu 0 4 490 120 509 250
		f 4 -895 441 -216 895
		mu 0 4 250 509 133 510
		f 4 -894 -896 -215 -440
		mu 0 4 506 250 510 131
		f 4 200 896 897 -441
		mu 0 4 120 492 251 509
		f 4 201 442 898 -897
		mu 0 4 492 121 512 251
		f 4 -899 443 -218 899
		mu 0 4 251 512 135 513
		f 4 -898 -900 -217 -442
		mu 0 4 509 251 513 133
		f 4 202 900 901 -443
		mu 0 4 121 494 252 512
		f 4 203 444 902 -901
		mu 0 4 494 122 515 252
		f 4 -903 445 -220 903
		mu 0 4 252 515 137 516
		f 4 -902 -904 -219 -444
		mu 0 4 512 252 516 135
		f 4 204 904 905 -445
		mu 0 4 122 496 253 515
		f 4 205 446 906 -905
		mu 0 4 496 123 518 253
		f 4 -907 447 -222 907
		mu 0 4 253 518 139 519
		f 4 -906 -908 -221 -446
		mu 0 4 515 253 519 137
		f 4 206 908 909 -447
		mu 0 4 123 497 254 518
		f 4 207 432 910 -909
		mu 0 4 497 116 502 254
		f 4 -911 433 -224 911
		mu 0 4 254 502 126 521
		f 4 -910 -912 -223 -448
		mu 0 4 518 254 521 139
		f 4 208 912 913 -449
		mu 0 4 125 500 255 525
		f 4 209 450 914 -913
		mu 0 4 500 128 523 255
		f 4 -915 451 -226 915
		mu 0 4 255 523 142 524
		f 4 -914 -916 -225 -450
		mu 0 4 525 255 524 141
		f 4 210 916 917 -451
		mu 0 4 128 505 256 523
		f 4 211 452 918 -917
		mu 0 4 505 130 526 256
		f 4 -919 453 -228 919
		mu 0 4 256 526 143 527
		f 4 -918 -920 -227 -452
		mu 0 4 523 256 527 142
		f 4 212 920 921 -453
		mu 0 4 130 508 257 526
		f 4 213 454 922 -921
		mu 0 4 508 132 528 257
		f 4 -923 455 -230 923
		mu 0 4 257 528 144 529
		f 4 -922 -924 -229 -454
		mu 0 4 526 257 529 143
		f 4 214 924 925 -455
		mu 0 4 132 511 258 528
		f 4 215 456 926 -925
		mu 0 4 511 134 530 258
		f 4 -927 457 -232 927
		mu 0 4 258 530 145 531
		f 4 -926 -928 -231 -456
		mu 0 4 528 258 531 144
		f 4 216 928 929 -457
		mu 0 4 134 514 259 530
		f 4 217 458 930 -929
		mu 0 4 514 136 532 259
		f 4 -931 459 -234 931
		mu 0 4 259 532 146 533
		f 4 -930 -932 -233 -458
		mu 0 4 530 259 533 145
		f 4 218 932 933 -459
		mu 0 4 136 517 260 532
		f 4 219 460 934 -933
		mu 0 4 517 138 534 260
		f 4 -935 461 -236 935
		mu 0 4 260 534 147 535
		f 4 -934 -936 -235 -460
		mu 0 4 532 260 535 146
		f 4 220 936 937 -461
		mu 0 4 138 520 261 534
		f 4 221 462 938 -937
		mu 0 4 520 140 536 261
		f 4 -939 463 -238 939
		mu 0 4 261 536 148 537
		f 4 -938 -940 -237 -462
		mu 0 4 534 261 537 147
		f 4 222 940 941 -463
		mu 0 4 140 522 262 536
		f 4 223 448 942 -941
		mu 0 4 522 125 525 262
		f 4 -943 449 -240 943
		mu 0 4 262 525 141 538
		f 4 -942 -944 -239 -464
		mu 0 4 536 262 538 148
		f 4 -2 944 945 467
		mu 0 4 1 279 263 540
		f 4 -466 946 -945 -1
		mu 0 4 0 539 263 279
		f 4 466 -946 -947 -465
		mu 0 4 149 540 263 539
		f 4 -4 947 948 469
		mu 0 4 2 284 264 541
		f 4 -468 949 -948 -3
		mu 0 4 1 540 264 284
		f 4 468 -949 -950 -467
		mu 0 4 149 541 264 540
		f 4 -6 950 951 471
		mu 0 4 3 288 265 542
		f 4 -470 952 -951 -5
		mu 0 4 2 541 265 288
		f 4 470 -952 -953 -469
		mu 0 4 149 542 265 541
		f 4 -8 953 954 473
		mu 0 4 4 292 266 543
		f 4 -472 955 -954 -7
		mu 0 4 3 542 266 292
		f 4 472 -955 -956 -471
		mu 0 4 149 543 266 542
		f 4 -10 956 957 475
		mu 0 4 5 296 267 544
		f 4 -474 958 -957 -9
		mu 0 4 4 543 267 296
		f 4 474 -958 -959 -473
		mu 0 4 149 544 267 543
		f 4 -12 959 960 477
		mu 0 4 6 300 268 545
		f 4 -476 961 -960 -11
		mu 0 4 5 544 268 300
		f 4 476 -961 -962 -475
		mu 0 4 149 545 268 544
		f 4 -14 962 963 479
		mu 0 4 7 304 269 546
		f 4 -478 964 -963 -13
		mu 0 4 6 545 269 304
		f 4 478 -964 -965 -477
		mu 0 4 149 546 269 545
		f 4 -16 965 966 465
		mu 0 4 0 308 270 539
		f 4 -480 967 -966 -15
		mu 0 4 7 546 270 308
		f 4 464 -967 -968 -479
		mu 0 4 149 539 270 546
		f 4 224 968 969 -481
		mu 0 4 141 524 271 548
		f 4 482 970 -969 225
		mu 0 4 142 547 271 524
		f 4 -482 -970 -971 483
		mu 0 4 150 548 271 547
		f 4 226 971 972 -483
		mu 0 4 142 527 272 547
		f 4 484 973 -972 227
		mu 0 4 143 549 272 527
		f 4 -484 -973 -974 485
		mu 0 4 150 547 272 549
		f 4 228 974 975 -485
		mu 0 4 143 529 273 549
		f 4 486 976 -975 229
		mu 0 4 144 550 273 529
		f 4 -486 -976 -977 487
		mu 0 4 150 549 273 550
		f 4 230 977 978 -487
		mu 0 4 144 531 274 550
		f 4 488 979 -978 231
		mu 0 4 145 551 274 531
		f 4 -488 -979 -980 489
		mu 0 4 150 550 274 551
		f 4 232 980 981 -489
		mu 0 4 145 533 275 551
		f 4 490 982 -981 233
		mu 0 4 146 552 275 533
		f 4 -490 -982 -983 491
		mu 0 4 150 551 275 552
		f 4 234 983 984 -491
		mu 0 4 146 535 276 552
		f 4 492 985 -984 235
		mu 0 4 147 553 276 535
		f 4 -492 -985 -986 493
		mu 0 4 150 552 276 553
		f 4 236 986 987 -493
		mu 0 4 147 537 277 553
		f 4 494 988 -987 237
		mu 0 4 148 554 277 537
		f 4 -494 -988 -989 495
		mu 0 4 150 553 277 554
		f 4 238 989 990 -495
		mu 0 4 148 538 278 554
		f 4 480 991 -990 239
		mu 0 4 141 548 278 538
		f 4 -496 -991 -992 481
		mu 0 4 150 554 278 548;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "input";
	rename -uid "39AC81EF-4149-898D-5A2C-A5AEBD601955";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5653960429803009 1.5653960429803009 1.5653960429803009 ;
createNode mesh -n "inputShape" -p "input";
	rename -uid "277DD603-451F-9DFD-2C2B-C8AD2577F2B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1364 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.41666666 0 0.45833331
		 0 0.49999997 0 0.54166663 0 0.58333331 0 0.625 0 0.375 0.125 0.41666666 0.125 0.45833331
		 0.125 0.49999997 0.125 0.54166663 0.125 0.58333331 0.125 0.625 0.125 0.375 0.25 0.41666666
		 0.25 0.45833331 0.25 0.49999997 0.25 0.54166663 0.25 0.58333331 0.25 0.625 0.25 0.375
		 0.28125 0.41666666 0.28125 0.45833331 0.28125 0.49999997 0.28125 0.54166663 0.28125
		 0.58333331 0.28125 0.625 0.28125 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125
		 0.49999997 0.3125 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.34375
		 0.41666666 0.34375 0.45833331 0.34375 0.49999997 0.34375 0.54166663 0.34375 0.58333331
		 0.34375 0.625 0.34375 0.375 0.375 0.41666666 0.375 0.45833331 0.375 0.49999997 0.375
		 0.54166663 0.375 0.58333331 0.375 0.625 0.375 0.375 0.875 0.41666666 0.875 0.45833331
		 0.875 0.49999997 0.875 0.54166663 0.875 0.58333331 0.875 0.625 0.875 0.375 0.90625
		 0.41666666 0.90625 0.45833331 0.90625 0.49999997 0.90625 0.54166663 0.90625 0.58333331
		 0.90625 0.625 0.90625 0.375 0.9375 0.41666666 0.9375 0.45833331 0.9375 0.49999997
		 0.9375 0.54166663 0.9375 0.58333331 0.9375 0.625 0.9375 0.375 0.96875 0.41666666
		 0.96875 0.45833331 0.96875 0.49999997 0.96875 0.54166663 0.96875 0.58333331 0.96875
		 0.625 0.96875 0.375 1 0.41666666 1 0.45833331 1 0.49999997 1 0.54166663 1 0.58333331
		 1 0.625 1 0.75 0 0.71875 0 0.6875 0 0.65625 0 0.75 0.125 0.71875 0.125 0.6875 0.125
		 0.65625 0.125 0.75 0.25 0.71875 0.25 0.6875 0.25 0.65625 0.25 0.25 0 0.28125 0 0.3125
		 0 0.34375 0 0.25 0.125 0.28125 0.125 0.3125 0.125 0.34375 0.125 0.25 0.25 0.28125
		 0.25 0.3125 0.25 0.34375 0.25 0.4375 0 0.4375 1 0.4375 0.125 0.4375 0.25 0.4375 0.28125
		 0.4375 0.3125 0.4375 0.34375 0.4375 0.375 0.4375 0.875 0.4375 0.90625 0.4375 0.9375
		 0.4375 0.96875 0.52083331 0 0.52083331 1 0.52083331 0.125 0.52083331 0.25 0.52083331
		 0.28125 0.52083331 0.3125 0.52083331 0.34375 0.52083331 0.375 0.52083331 0.875 0.52083331
		 0.90625 0.52083331 0.9375 0.52083331 0.96875 0.5625 0 0.5625 1 0.5625 0.125 0.5625
		 0.25 0.5625 0.28125 0.5625 0.3125 0.5625 0.34375 0.5625 0.375 0.5625 0.875 0.5625
		 0.90625 0.5625 0.9375 0.5625 0.96875 0.36875001 0.25 0.375 0.25624999 0.36875001
		 0.125 0.36875001 0 0.375 0.99374998 0.41666669 0.99374998 0.4375 0.99374998 0.45833331
		 0.99374998 0.49999997 0.99374998 0.52083331 0.99374998 0.54166663 0.99374998 0.5625
		 0.99374998 0.58333331 0.99374998 0.625 0.99374998 0.63125002 0 0.63125002 0.125 0.625
		 0.25624999 0.63125002 0.25 0.58333331 0.25624999 0.5625 0.25624999 0.54166663 0.25624999
		 0.52083331 0.25624999 0.49999997 0.25624999 0.45833331 0.25624999 0.4375 0.25624999
		 0.41666669 0.25624999 0.375 0 0.41666666 0 0.375 0.125 0.4375 0 0.45833331 0 0.49999997
		 0 0.52083331 0 0.54166663 0 0.5625 0 0.58333331 0 0.625 0 0.625 0.125 0.41666666
		 0.25 0.375 0.25 0.4375 0.25 0.49999997 0.25 0.45833331 0.25 0.52083331 0.25 0.5625
		 0.25 0.54166663 0.25 0.625 0.25 0.58333331 0.25 0.375 0 0.41666666 0 0.41666666 0.125
		 0.375 0.125 0.4375 0 0.4375 0.125 0.45833331 0 0.49999997 0 0.49999997 0.125 0.45833331
		 0.125 0.52083331 0 0.52083331 0.125 0.54166663 0 0.5625 0 0.5625 0.125 0.54166663
		 0.125 0.58333331 0 0.625 0 0.625 0.125 0.58333331 0.125 0.41666666 0.25 0.375 0.25
		 0.4375 0.25 0.49999997 0.25 0.45833331 0.25 0.52083331 0.25 0.5625 0.25 0.54166663
		 0.25 0.625 0.25 0.58333331 0.25 0.375 0.25 0.41666666 0.25 0.41666669 0.25624999
		 0.375 0.25624999 0.4375 0.25 0.4375 0.25624999 0.45833331 0.25 0.49999997 0.25 0.49999997
		 0.25624999 0.45833331 0.25624999 0.52083331 0.25 0.52083331 0.25624999 0.54166663
		 0.25 0.5625 0.25 0.5625 0.25624999 0.54166663 0.25624999 0.58333331 0.25 0.625 0.25
		 0.625 0.25624999 0.58333331 0.25624999 0.375 0.28125 0.41666666 0.28125 0.41666666
		 0.3125 0.375 0.3125 0.4375 0.28125 0.4375 0.3125 0.45833331 0.28125 0.49999997 0.28125;
	setAttr ".uvst[0].uvsp[250:499]" 0.49999997 0.3125 0.45833331 0.3125 0.52083331
		 0.28125 0.52083331 0.3125 0.54166663 0.28125 0.5625 0.28125 0.5625 0.3125 0.54166663
		 0.3125 0.58333331 0.28125 0.625 0.28125 0.625 0.3125 0.58333331 0.3125 0.41666666
		 0.34375 0.375 0.34375 0.4375 0.34375 0.49999997 0.34375 0.45833331 0.34375 0.52083331
		 0.34375 0.5625 0.34375 0.54166663 0.34375 0.625 0.34375 0.58333331 0.34375 0.41666666
		 0.375 0.375 0.375 0.4375 0.375 0.49999997 0.375 0.45833331 0.375 0.52083331 0.375
		 0.5625 0.375 0.54166663 0.375 0.625 0.375 0.58333331 0.375 0.375 0.875 0.41666666
		 0.875 0.41666666 0.90625 0.375 0.90625 0.4375 0.875 0.4375 0.90625 0.45833331 0.875
		 0.49999997 0.875 0.49999997 0.90625 0.45833331 0.90625 0.52083331 0.875 0.52083331
		 0.90625 0.54166663 0.875 0.5625 0.875 0.5625 0.90625 0.54166663 0.90625 0.58333331
		 0.875 0.625 0.875 0.625 0.90625 0.58333331 0.90625 0.41666666 0.9375 0.375 0.9375
		 0.4375 0.9375 0.49999997 0.9375 0.45833331 0.9375 0.52083331 0.9375 0.5625 0.9375
		 0.54166663 0.9375 0.625 0.9375 0.58333331 0.9375 0.41666666 0.96875 0.375 0.96875
		 0.4375 0.96875 0.49999997 0.96875 0.45833331 0.96875 0.52083331 0.96875 0.5625 0.96875
		 0.54166663 0.96875 0.625 0.96875 0.58333331 0.96875 0.375 0.99374998 0.41666669 0.99374998
		 0.41666666 1 0.375 1 0.4375 0.99374998 0.4375 1 0.45833331 0.99374998 0.49999997
		 0.99374998 0.49999997 1 0.45833331 1 0.52083331 0.99374998 0.52083331 1 0.54166663
		 0.99374998 0.5625 0.99374998 0.5625 1 0.54166663 1 0.58333331 0.99374998 0.625 0.99374998
		 0.625 1 0.58333331 1 0.71875 0 0.75 0 0.75 0.125 0.71875 0.125 0.6875 0 0.6875 0.125
		 0.65625 0 0.65625 0.125 0.625 0 0.63125002 0 0.63125002 0.125 0.625 0.125 0.75 0.25
		 0.71875 0.25 0.6875 0.25 0.65625 0.25 0.63125002 0.25 0.25 0 0.28125 0 0.28125 0.125
		 0.25 0.125 0.3125 0 0.3125 0.125 0.34375 0 0.34375 0.125 0.36875001 0.125 0.36875001
		 0 0.375 0 0.375 0.125 0.28125 0.25 0.25 0.25 0.3125 0.25 0.34375 0.25 0.36875001
		 0.25 0.41666666 0 0.4375 0 0.45833331 0 0.49999997 0 0.52083331 0 0.54166663 0 0.5625
		 0 0.58333331 0 0.58333331 0.25 0.625 0.25 0.5625 0.25 0.54166663 0.25 0.52083331
		 0.25 0.49999997 0.25 0.45833331 0.25 0.4375 0.25 0.41666666 0.25 0.375 0.25 0.625
		 0.125 0.58333331 0 0.625 0 0.54166663 0 0.5625 0 0.52083331 0 0.45833331 0 0.49999997
		 0 0.4375 0 0.375 0.125 0.375 0 0.41666666 0 0.41666669 0.26875001 0.4375 0.26875001
		 0.45833331 0.26875001 0.49999997 0.26875001 0.52083331 0.26875001 0.54166663 0.26875001
		 0.5625 0.26875001 0.58333331 0.26875001 0.64375001 0.25 0.625 0.26875001 0.64375001
		 0.125 0.64375001 0 0.625 0.98124999 0.58333331 0.98124999 0.5625 0.98124999 0.54166663
		 0.98124999 0.52083331 0.98124999 0.49999997 0.98124999 0.45833331 0.98124999 0.4375
		 0.98124999 0.41666669 0.98124999 0.375 0.98124999 0.35624999 0 0.375 0.26875001 0.35624999
		 0.25 0.35624999 0.125 0.57291663 1 0.57291663 0 0.57291663 0.99374998 0.57291663
		 0.96875 0.57291663 0.9375 0.57291663 0.90625 0.57291663 0.34375 0.57291663 0.3125
		 0.57291663 0.28125 0.57291663 0.25 0.57291663 0.25624999 0.57291663 0.25 0.57291663
		 0.125 0.57291663 0 0.53125 1 0.53125 0 0.53125 0.99374998 0.53125 0.96875 0.53125
		 0.9375 0.53125 0.90625 0.53125 0.34375 0.53125 0.3125 0.53125 0.28125 0.53125 0.25
		 0.53125 0.25624999 0.53125 0.25 0.53125 0.125 0.53125 0 0.44791666 1 0.44791666 0
		 0.44791666 0.99374998 0.44791666 0.96875 0.44791666 0.9375 0.44791666 0.90625 0.44791666
		 0.34375 0.44791666 0.3125 0.44791666 0.28125 0.44791666 0.25 0.44791666 0.25624999
		 0.44791666 0.25 0.44791666 0.125 0.44791666 0 0.375 0.1875 0.36875001 0.1875 0.34375
		 0.1875 0.3125 0.1875 0.28125 0.1875 0.37187499 0.125 0.375 0.0625 0.36875001 0.0625
		 0.328125 0.125 0.34375 0.0625 0.296875 0.125 0.3125 0.0625 0.265625 0.125 0.28125
		 0.0625 0.625 0.1875 0.63125002 0.1875 0.65625 0.1875 0.6875 0.1875 0.71875 0.1875
		 0.625 0.0625 0.62812501 0.125 0.63125002 0.0625 0.65625 0.0625 0.671875 0.125 0.6875
		 0.0625 0.703125 0.125;
	setAttr ".uvst[0].uvsp[500:749]" 0.71875 0.0625 0.734375 0.125 0.58333331 0.99687499
		 0.60416663 1 0.60416663 0 0.62812501 0 0.625 0.99687499 0.60416663 0.99374998 0.54166663
		 0.99687499 0.55208331 1 0.55208331 0 0.5625 0.99687499 0.55208331 0.99374998 0.51041663
		 1 0.51041663 0 0.52083331 0.99687499 0.51041663 0.99374998 0.45833331 0.99687499
		 0.47916663 1 0.47916663 0 0.49999997 0.99687499 0.47916663 0.99374998 0.42708331
		 1 0.42708331 0 0.4375 0.99687499 0.42708334 0.99374998 0.375 0.99687499 0.37187499
		 0 0.39583331 1 0.39583331 0 0.41666669 0.99687499 0.39583334 0.99374998 0.58333331
		 0.953125 0.60416663 0.96875 0.671875 0 0.625 0.953125 0.54166663 0.953125 0.55208331
		 0.96875 0.5625 0.953125 0.51041663 0.96875 0.52083331 0.953125 0.45833331 0.953125
		 0.47916663 0.96875 0.49999997 0.953125 0.42708331 0.96875 0.4375 0.953125 0.375 0.953125
		 0.328125 0 0.39583331 0.96875 0.41666666 0.953125 0.58333331 0.921875 0.60416663
		 0.9375 0.703125 0 0.625 0.921875 0.54166663 0.921875 0.55208331 0.9375 0.5625 0.921875
		 0.51041663 0.9375 0.52083331 0.921875 0.45833331 0.921875 0.47916663 0.9375 0.49999997
		 0.921875 0.42708331 0.9375 0.4375 0.921875 0.375 0.921875 0.296875 0 0.39583331 0.9375
		 0.41666666 0.921875 0.58333331 0.890625 0.60416663 0.90625 0.734375 0 0.625 0.890625
		 0.54166663 0.890625 0.55208331 0.90625 0.5625 0.890625 0.51041663 0.90625 0.52083331
		 0.890625 0.45833331 0.890625 0.47916663 0.90625 0.49999997 0.890625 0.42708331 0.90625
		 0.4375 0.890625 0.375 0.890625 0.265625 0 0.39583331 0.90625 0.41666666 0.890625
		 0.58333331 0.359375 0.734375 0.25 0.625 0.359375 0.54166663 0.359375 0.5625 0.359375
		 0.52083331 0.359375 0.45833331 0.359375 0.49999997 0.359375 0.4375 0.359375 0.375
		 0.359375 0.265625 0.25 0.41666666 0.359375 0.58333331 0.328125 0.60416663 0.34375
		 0.703125 0.25 0.625 0.328125 0.54166663 0.328125 0.55208331 0.34375 0.5625 0.328125
		 0.51041663 0.34375 0.52083331 0.328125 0.45833331 0.328125 0.47916663 0.34375 0.49999997
		 0.328125 0.42708331 0.34375 0.4375 0.328125 0.375 0.328125 0.296875 0.25 0.39583331
		 0.34375 0.41666666 0.328125 0.58333331 0.296875 0.60416663 0.3125 0.671875 0.25 0.625
		 0.296875 0.60416663 0.28125 0.54166663 0.296875 0.55208331 0.3125 0.5625 0.296875
		 0.55208331 0.28125 0.51041663 0.3125 0.52083331 0.296875 0.51041663 0.28125 0.45833331
		 0.296875 0.47916663 0.3125 0.49999997 0.296875 0.47916663 0.28125 0.42708331 0.3125
		 0.4375 0.296875 0.42708331 0.28125 0.375 0.296875 0.328125 0.25 0.39583331 0.3125
		 0.41666666 0.296875 0.39583331 0.28125 0.58333331 0.25312501 0.60416663 0.25624999
		 0.62812501 0.25 0.625 0.25312501 0.60416663 0.25 0.54166663 0.25312501 0.55208331
		 0.25624999 0.5625 0.25312501 0.55208331 0.25 0.51041663 0.25624999 0.52083331 0.25312501
		 0.51041663 0.25 0.45833331 0.25312501 0.47916663 0.25624999 0.49999997 0.25312501
		 0.47916663 0.25 0.42708334 0.25624999 0.4375 0.25312501 0.42708331 0.25 0.375 0.25312501
		 0.37187499 0.25 0.39583334 0.25624999 0.41666669 0.25312501 0.39583331 0.25 0.58333331
		 0.1875 0.60416663 0.25 0.625 0.1875 0.54166663 0.1875 0.55208331 0.25 0.5625 0.1875
		 0.51041663 0.25 0.52083331 0.1875 0.45833331 0.1875 0.47916663 0.25 0.49999997 0.1875
		 0.42708331 0.25 0.4375 0.1875 0.375 0.1875 0.39583331 0.25 0.41666666 0.1875 0.58333331
		 0.0625 0.60416663 0.125 0.625 0.0625 0.60416663 0 0.54166663 0.0625 0.55208331 0.125
		 0.5625 0.0625 0.55208331 0 0.51041663 0.125 0.52083331 0.0625 0.51041663 0 0.45833331
		 0.0625 0.47916663 0.125 0.49999997 0.0625 0.47916663 0 0.42708331 0.125 0.4375 0.0625
		 0.42708331 0 0.375 0.0625 0.39583331 0.125 0.41666666 0.0625 0.39583331 0 0.57291663
		 0.25 0.57291663 0.125 0.57291663 0 0.53125 0.25 0.53125 0.125 0.53125 0 0.44791666
		 0.25 0.44791666 0.125 0.44791666 0 0.58333331 0.1875 0.60416663 0.25 0.58333331 0.25
		 0.625 0.1875 0.625 0.25 0.54166663 0.1875 0.55208331 0.25 0.54166663 0.25 0.5625
		 0.1875 0.5625 0.25 0.51041663 0.25 0.52083331 0.1875 0.52083331 0.25 0.45833331 0.1875
		 0.47916663 0.25 0.45833331 0.25 0.49999997 0.1875 0.49999997 0.25 0.42708331 0.25
		 0.4375 0.1875 0.4375 0.25 0.375 0.1875 0.39583331 0.25 0.375 0.25 0.41666666 0.1875
		 0.41666666 0.25 0.58333331 0.0625 0.60416663 0.125 0.625 0.0625 0.625 0.125 0.60416663
		 0 0.625 0 0.58333331 0 0.54166663 0.0625 0.55208331 0.125 0.5625 0.0625 0.55208331
		 0 0.5625 0 0.54166663 0;
	setAttr ".uvst[0].uvsp[750:999]" 0.51041663 0.125 0.52083331 0.0625 0.51041663
		 0 0.52083331 0 0.45833331 0.0625 0.47916663 0.125 0.49999997 0.0625 0.47916663 0
		 0.49999997 0 0.45833331 0 0.42708331 0.125 0.4375 0.0625 0.42708331 0 0.4375 0 0.375
		 0.0625 0.39583331 0.125 0.375 0.125 0.41666666 0.0625 0.39583331 0 0.41666666 0 0.375
		 0 0.39583334 0.25624999 0.42708334 0.25624999 0.44791666 0.25624999 0.47916663 0.25624999
		 0.51041663 0.25624999 0.53125 0.25624999 0.55208331 0.25624999 0.57291663 0.25624999
		 0.60416663 0.25624999 0.63125002 0.1875 0.63125002 0.0625 0.60416663 0.99374998 0.57291663
		 0.99374998 0.55208331 0.99374998 0.53125 0.99374998 0.51041663 0.99374998 0.47916663
		 0.99374998 0.44791666 0.99374998 0.42708334 0.99374998 0.39583334 0.99374998 0.36875001
		 0.0625 0.36875001 0.1875 0.41666669 0.26875001 0.4375 0.26875001 0.45833331 0.26875001
		 0.49999997 0.26875001 0.52083331 0.26875001 0.54166663 0.26875001 0.5625 0.26875001
		 0.58333331 0.26875001 0.625 0.26875001 0.64375001 0.25 0.62812501 0.125 0.625 0.99687499
		 0.62812501 0 0.58333331 0.99687499 0.5625 0.99687499 0.54166663 0.99687499 0.52083331
		 0.99687499 0.49999997 0.99687499 0.45833331 0.99687499 0.4375 0.99687499 0.41666669
		 0.99687499 0.37187499 0 0.375 0.99687499 0.37187499 0.125 0.35624999 0.25 0.375 0.26875001
		 0.5625 0.98124999 0.5625 0.953125 0.5625 0.921875 0.5625 0.890625 0.5625 0.359375
		 0.5625 0.328125 0.5625 0.296875 0.5625 0.25312501 0.57291663 0.96875 0.57291663 0.9375
		 0.57291663 0.90625 0.57291663 0.875 0.57291663 0.875 0.57291663 0.375 0.57291663
		 0.375 0.57291663 0.34375 0.57291663 0.3125 0.57291663 0.28125 0.57291663 0.25 0.57291663
		 0 0.57291663 1 0.52083331 0.98124999 0.52083331 0.953125 0.52083331 0.921875 0.52083331
		 0.890625 0.52083331 0.359375 0.52083331 0.328125 0.52083331 0.296875 0.52083331 0.25312501
		 0.53125 0.96875 0.53125 0.9375 0.53125 0.90625 0.53125 0.875 0.53125 0.875 0.53125
		 0.375 0.53125 0.375 0.53125 0.34375 0.53125 0.3125 0.53125 0.28125 0.53125 0.25 0.53125
		 0 0.53125 1 0.4375 0.98124999 0.4375 0.953125 0.4375 0.921875 0.4375 0.890625 0.4375
		 0.359375 0.4375 0.328125 0.4375 0.296875 0.4375 0.25312501 0.44791666 0.96875 0.44791666
		 0.9375 0.44791666 0.90625 0.44791666 0.875 0.44791666 0.875 0.44791666 0.375 0.44791666
		 0.375 0.44791666 0.34375 0.44791666 0.3125 0.44791666 0.28125 0.44791666 0.25 0.44791666
		 0 0.44791666 1 0.34375 0.1875 0.3125 0.1875 0.28125 0.1875 0.25 0.1875 0.25 0.1875
		 0.34375 0.0625 0.3125 0.0625 0.28125 0.0625 0.25 0.0625 0.25 0.0625 0.35624999 0.125
		 0.328125 0.125 0.296875 0.125 0.265625 0.125 0.65625 0.1875 0.6875 0.1875 0.71875
		 0.1875 0.75 0.1875 0.75 0.1875 0.65625 0.0625 0.6875 0.0625 0.71875 0.0625 0.75 0.0625
		 0.75 0.0625 0.64375001 0.125 0.671875 0.125 0.703125 0.125 0.734375 0.125 0.625 0.98124999
		 0.64375001 0 0.58333331 0.98124999 0.54166663 0.98124999 0.49999997 0.98124999 0.45833331
		 0.98124999 0.41666669 0.98124999 0.35624999 0 0.375 0.98124999 0.625 0.953125 0.671875
		 0 0.58333331 0.953125 0.54166663 0.953125 0.49999997 0.953125 0.45833331 0.953125
		 0.41666666 0.953125 0.328125 0 0.375 0.953125 0.625 0.921875 0.703125 0 0.58333331
		 0.921875 0.54166663 0.921875 0.49999997 0.921875 0.45833331 0.921875 0.41666666 0.921875
		 0.296875 0 0.375 0.921875 0.625 0.890625 0.734375 0 0.58333331 0.890625 0.54166663
		 0.890625 0.49999997 0.890625 0.45833331 0.890625 0.41666666 0.890625 0.265625 0 0.375
		 0.890625 0.625 0.359375 0.734375 0.25 0.58333331 0.359375 0.54166663 0.359375 0.49999997
		 0.359375 0.45833331 0.359375 0.41666666 0.359375 0.265625 0.25 0.375 0.359375 0.625
		 0.328125 0.703125 0.25 0.58333331 0.328125 0.54166663 0.328125 0.49999997 0.328125
		 0.45833331 0.328125 0.41666666 0.328125 0.296875 0.25 0.375 0.328125 0.625 0.296875
		 0.671875 0.25 0.58333331 0.296875 0.54166663 0.296875 0.49999997 0.296875 0.45833331
		 0.296875 0.41666666 0.296875 0.328125 0.25 0.375 0.296875 0.625 0.25312501 0.62812501
		 0.25 0.58333331 0.25312501 0.54166663 0.25312501 0.49999997 0.25312501 0.45833331
		 0.25312501 0.41666669 0.25312501 0.37187499 0.25 0.375 0.25312501 0.625 0.1875 0.375
		 0.1875 0.625 0.0625 0.375 0.0625 0.60416663 0.96875 0.55208331 0.96875 0.51041663
		 0.96875 0.47916663 0.96875 0.42708331 0.96875 0.39583331 0.96875 0.60416663 0.9375
		 0.55208331 0.9375 0.51041663 0.9375 0.47916663 0.9375 0.42708331 0.9375 0.39583331
		 0.9375 0.60416663 0.90625 0.55208331 0.90625;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.51041663 0.90625 0.47916663 0.90625 0.42708331
		 0.90625 0.39583331 0.90625 0.60416663 0.875 0.60416663 0.875 0.55208331 0.875 0.55208331
		 0.875 0.51041663 0.875 0.51041663 0.875 0.47916663 0.875 0.47916663 0.875 0.42708331
		 0.875 0.42708331 0.875 0.39583331 0.875 0.39583331 0.875 0.60416663 0.375 0.60416663
		 0.375 0.55208331 0.375 0.55208331 0.375 0.51041663 0.375 0.51041663 0.375 0.47916663
		 0.375 0.47916663 0.375 0.42708331 0.375 0.42708331 0.375 0.39583331 0.375 0.39583331
		 0.375 0.60416663 0.34375 0.55208331 0.34375 0.51041663 0.34375 0.47916663 0.34375
		 0.42708331 0.34375 0.39583331 0.34375 0.60416663 0.3125 0.55208331 0.3125 0.51041663
		 0.3125 0.47916663 0.3125 0.42708331 0.3125 0.39583331 0.3125 0.60416663 0.28125 0.55208331
		 0.28125 0.51041663 0.28125 0.47916663 0.28125 0.42708331 0.28125 0.39583331 0.28125
		 0.60416663 0.25 0.55208331 0.25 0.51041663 0.25 0.47916663 0.25 0.42708331 0.25 0.39583331
		 0.25 0.60416663 0 0.60416663 1 0.55208331 0 0.55208331 1 0.51041663 0 0.51041663
		 1 0.47916663 0 0.47916663 1 0.42708331 0 0.42708331 1 0.39583331 0 0.39583331 1 0.57291663
		 0.25 0.57291663 0 0.53125 0.25 0.53125 0 0.44791666 0.25 0.44791666 0 0.60416663
		 0.25 0.625 0.1875 0.55208331 0.25 0.51041663 0.25 0.47916663 0.25 0.42708331 0.25
		 0.375 0.1875 0.39583331 0.25 0.625 0.0625 0.60416663 0 0.55208331 0 0.51041663 0
		 0.47916663 0 0.42708331 0 0.375 0.0625 0.39583331 0 0.39583334 0.26875001 0.42708334
		 0.26875001 0.44791666 0.26875001 0.47916663 0.26875001 0.51041663 0.26875001 0.53125
		 0.26875001 0.55208331 0.26875001 0.57291663 0.26875001 0.60416663 0.26875001 0.64375001
		 0.1875 0.64375001 0.0625 0.60416663 0.98124999 0.57291663 0.98124999 0.55208331 0.98124999
		 0.53125 0.98124999 0.51041663 0.98124999 0.47916663 0.98124999 0.44791666 0.98124999
		 0.42708334 0.98124999 0.39583334 0.98124999 0.35624999 0.0625 0.35624999 0.1875 0.57291663
		 0.99687499 0.57291663 0.953125 0.57291663 0.921875 0.57291663 0.890625 0.57291663
		 0.359375 0.57291663 0.328125 0.57291663 0.296875 0.57291663 0.25312501 0.57291663
		 0.1875 0.57291663 0.0625 0.53125 0.99687499 0.53125 0.953125 0.53125 0.921875 0.53125
		 0.890625 0.53125 0.359375 0.53125 0.328125 0.53125 0.296875 0.53125 0.25312501 0.53125
		 0.1875 0.53125 0.0625 0.44791666 0.99687499 0.44791666 0.953125 0.44791666 0.921875
		 0.44791666 0.890625 0.44791666 0.359375 0.44791666 0.328125 0.44791666 0.296875 0.44791666
		 0.25312501 0.44791666 0.1875 0.44791666 0.0625 0.37187499 0.1875 0.328125 0.1875
		 0.296875 0.1875 0.265625 0.1875 0.37187499 0.0625 0.328125 0.0625 0.296875 0.0625
		 0.265625 0.0625 0.62812501 0.1875 0.671875 0.1875 0.703125 0.1875 0.734375 0.1875
		 0.62812501 0.0625 0.671875 0.0625 0.703125 0.0625 0.734375 0.0625 0.60416663 0.99687499
		 0.55208331 0.99687499 0.51041663 0.99687499 0.47916663 0.99687499 0.42708334 0.99687499
		 0.39583334 0.99687499 0.60416663 0.953125 0.55208331 0.953125 0.51041663 0.953125
		 0.47916663 0.953125 0.42708331 0.953125 0.39583331 0.953125 0.60416663 0.921875 0.55208331
		 0.921875 0.51041663 0.921875 0.47916663 0.921875 0.42708331 0.921875 0.39583331 0.921875
		 0.60416663 0.890625 0.55208331 0.890625 0.51041663 0.890625 0.47916663 0.890625 0.42708331
		 0.890625 0.39583331 0.890625 0.60416663 0.359375 0.55208331 0.359375 0.51041663 0.359375
		 0.47916663 0.359375 0.42708331 0.359375 0.39583331 0.359375 0.60416663 0.328125 0.55208331
		 0.328125 0.51041663 0.328125 0.47916663 0.328125 0.42708331 0.328125 0.39583331 0.328125
		 0.60416663 0.296875 0.55208331 0.296875 0.51041663 0.296875 0.47916663 0.296875 0.42708331
		 0.296875 0.39583331 0.296875 0.60416663 0.25312501 0.55208331 0.25312501 0.51041663
		 0.25312501 0.47916663 0.25312501 0.42708334 0.25312501 0.39583334 0.25312501 0.60416663
		 0.1875 0.55208331 0.1875 0.51041663 0.1875 0.47916663 0.1875 0.42708331 0.1875 0.39583331
		 0.1875 0.60416663 0.0625 0.55208331 0.0625 0.51041663 0.0625 0.47916663 0.0625 0.42708331
		 0.0625 0.39583331 0.0625 0.57291663 0.25 0.57291663 0 0.53125 0.25 0.53125 0 0.44791666
		 0.25 0.44791666 0 0.60416663 0.25 0.625 0.1875 0.55208331 0.25 0.51041663 0.25 0.47916663
		 0.25 0.42708331 0.25 0.375 0.1875 0.39583331 0.25 0.625 0.0625 0.60416663 0 0.55208331
		 0 0.51041663 0 0.47916663 0 0.42708331 0 0.375 0.0625 0.39583331 0 0.39583331 0.26875001
		 0.42708331 0.26875001 0.44791666 0.26875001 0.47916663 0.26875001 0.51041663 0.26875001
		 0.53125 0.26875001 0.55208331 0.26875001 0.57291663 0.26875001 0.60416663 0.26875001
		 0.64375001 0.1875 0.64375001 0.0625 0.60416663 0.98124999 0.57291663 0.98124999 0.55208331
		 0.98124999;
	setAttr ".uvst[0].uvsp[1250:1363]" 0.53125 0.98124999 0.51041663 0.98124999 0.47916663
		 0.98124999 0.44791666 0.98124999 0.42708331 0.98124999 0.39583331 0.98124999 0.35624999
		 0.0625 0.35624999 0.1875 0.57291663 0.99687499 0.57291663 0.953125 0.57291663 0.921875
		 0.57291663 0.890625 0.57291663 0.359375 0.57291663 0.328125 0.57291663 0.296875 0.57291663
		 0.25312501 0.57291663 0.1875 0.57291663 0.0625 0.53125 0.99687499 0.53125 0.953125
		 0.53125 0.921875 0.53125 0.890625 0.53125 0.359375 0.53125 0.328125 0.53125 0.296875
		 0.53125 0.25312501 0.53125 0.1875 0.53125 0.0625 0.44791666 0.99687499 0.44791666
		 0.953125 0.44791666 0.921875 0.44791666 0.890625 0.44791666 0.359375 0.44791666 0.328125
		 0.44791666 0.296875 0.44791666 0.25312501 0.44791666 0.1875 0.44791666 0.0625 0.37187499
		 0.1875 0.328125 0.1875 0.296875 0.1875 0.265625 0.1875 0.37187499 0.0625 0.328125
		 0.0625 0.296875 0.0625 0.265625 0.0625 0.62812501 0.1875 0.671875 0.1875 0.703125
		 0.1875 0.734375 0.1875 0.62812501 0.0625 0.671875 0.0625 0.703125 0.0625 0.734375
		 0.0625 0.60416663 0.99687499 0.55208331 0.99687499 0.51041663 0.99687499 0.47916663
		 0.99687499 0.42708331 0.99687499 0.39583331 0.99687499 0.60416663 0.953125 0.55208331
		 0.953125 0.51041663 0.953125 0.47916663 0.953125 0.42708331 0.953125 0.39583331 0.953125
		 0.60416663 0.921875 0.55208331 0.921875 0.51041663 0.921875 0.47916663 0.921875 0.42708331
		 0.921875 0.39583331 0.921875 0.60416663 0.890625 0.55208331 0.890625 0.51041663 0.890625
		 0.47916663 0.890625 0.42708331 0.890625 0.39583331 0.890625 0.60416663 0.359375 0.55208331
		 0.359375 0.51041663 0.359375 0.47916663 0.359375 0.42708331 0.359375 0.39583331 0.359375
		 0.60416663 0.328125 0.55208331 0.328125 0.51041663 0.328125 0.47916663 0.328125 0.42708331
		 0.328125 0.39583331 0.328125 0.60416663 0.296875 0.55208331 0.296875 0.51041663 0.296875
		 0.47916663 0.296875 0.42708331 0.296875 0.39583331 0.296875 0.60416663 0.25312501
		 0.55208331 0.25312501 0.51041663 0.25312501 0.47916663 0.25312501 0.42708331 0.25312501
		 0.39583331 0.25312501 0.60416663 0.1875 0.55208331 0.1875 0.51041663 0.1875 0.47916663
		 0.1875 0.42708331 0.1875 0.39583331 0.1875 0.60416663 0.0625 0.55208331 0.0625 0.51041663
		 0.0625 0.47916663 0.0625 0.42708331 0.0625 0.39583331 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1202 ".vt";
	setAttr ".vt[0:165]"  -2.28611755 -0.42013526 4.068087578 -1.86818063 -0.5180589 4.06796217
		 -0.71423596 -0.52490383 4.084457397 -0.17050959 -0.52490395 4.085297108 0.81109816 -0.52490383 4.084487438
		 1.7539041 -0.51877362 4.069298744 2.20341134 -0.42507684 4.065997601 -2.39738369 -0.0098721199 4.10780048
		 2.38032508 -0.0043056211 4.10297155 -2.24936891 0.41311526 4.11166 -1.75698566 0.57758647 4.10952663
		 -0.70040041 0.48144352 4.15085268 -0.25239408 0.50869209 4.1483593 0.80544508 0.84439427 4.09224987
		 1.78065181 0.76003438 4.080839157 2.20202684 0.47627485 4.10077429 -2.26406479 0.4370746 3.088980913
		 -1.76231956 0.62911683 3.090619087 -0.70140183 0.50062722 3.10610294 -0.25366718 0.53282416 3.10528731
		 0.80525982 0.91486955 3.088243484 1.78767765 0.84409499 3.08101511 2.21662331 0.51444995 3.084078074
		 -2.26479316 0.44099283 2.085511208 -1.7628746 0.63850623 2.088115454 -0.70163834 0.5027355 2.092284441
		 -0.25375396 0.53602397 2.092202663 0.80521369 0.93059611 2.090553761 1.78815675 0.86120057 2.086210489
		 2.21732473 0.52134252 2.083636284 -2.26312137 0.43762511 1.043195128 -1.76157498 0.63138926 1.044615746
		 -0.70112425 0.50074542 1.046179771 -0.25356716 0.53321385 1.046179771 0.80526239 0.91922414 1.046179771
		 1.78693998 0.84749466 1.044052601 2.21568704 0.516119 1.042381048 -2.26155615 0.4323954 -9.590576e-18
		 -1.76035976 0.62380552 -1.0152169e-17 -0.70064205 0.49716556 -9.4652516e-18 -0.25339168 0.5286175 -1.1511255e-17
		 0.80567622 0.91850328 -9.8361924e-18 1.7858032 0.82958579 -6.0271072e-18 2.2141552 0.51066858 -6.7055224e-09
		 -2.29856634 -0.42900696 -1.0517458e-17 -1.87383103 -0.52758443 -1.2277732e-18 -0.71489859 -0.53428036 0
		 -0.16949716 -0.53428036 0 0.81338054 -0.53428036 0 1.75743818 -0.52832043 3.321296e-21
		 2.21515584 -0.43407679 6.7055224e-09 -2.30001426 -0.42843136 1.043305993 -1.87400675 -0.52753568 1.04581964
		 -0.71489865 -0.53428036 1.046179771 -0.16949716 -0.53428036 1.046179771 0.8133806 -0.53428036 1.046179771
		 1.75760722 -0.52827406 1.045737267 2.21655583 -0.43351859 1.042608619 -2.30156469 -0.42815301 2.084479332
		 -1.87419856 -0.52751118 2.089211226 -0.71489865 -0.53428036 2.090339184 -0.16949716 -0.53428036 2.090366125
		 0.8133806 -0.53428036 2.090340376 1.75779176 -0.52825075 2.089095592 2.21805549 -0.43324852 2.083103418
		 -2.30095243 -0.42839834 3.076299906 -1.87412047 -0.52753216 3.080855131 -0.71489865 -0.53428036 3.086166859
		 -0.16949716 -0.53428036 3.086416245 0.8133806 -0.53428036 3.086176157 1.75771666 -0.52827078 3.081121922
		 2.2174623 -0.43348676 3.074419498 2.39426279 -0.00041358703 6.7055224e-09 2.39591908 0.001666765 1.041693807
		 2.39768934 0.0029268123 2.082419634 2.39692235 0.0015379384 3.083786964 -2.41143322 -0.0077812597 -9.3853955e-18
		 -2.4131012 -0.0055708508 1.042766213 -2.41488361 -0.0044524814 2.084587812 -2.41411018 -0.0055392329 3.087190628
		 -1.28392065 -0.5249033 4.077484131 -1.18833983 0.52892756 4.13415766 -1.18954492 0.56543684 3.10053611
		 -1.1899271 0.57139891 2.091443777 -1.18906593 0.56693852 1.04600358 -1.1882596 0.56266302 -6.7055224e-09
		 -1.28621256 -0.53428036 0 -1.28621256 -0.53428036 1.046179771 -1.28621256 -0.53428036 2.090144396
		 -1.28621256 -0.53428036 3.084157228 0.36205637 -0.52490395 4.085297108 0.2640582 0.6608488 4.12313938
		 0.26511076 0.71921927 3.097378731 0.26515803 0.73030323 2.091436386 0.26504013 0.72207034 1.046179771
		 0.26497644 0.71462464 -9.2719262e-18 0.36385375 -0.53428036 0 0.36385375 -0.53428036 1.046179771
		 0.36385375 -0.53428036 2.090366125 0.36385375 -0.53428036 3.086416245 1.26699185 -0.5249033 4.077915668
		 1.3021301 0.87520242 4.078719139 1.30427957 0.95169425 3.083952904 1.30426073 0.96886051 2.089722872
		 1.30412567 0.95413768 1.045934796 1.30404949 0.93795645 6.8145305e-19 1.26862371 -0.53428036 1.754162e-18
		 1.26862371 -0.53428036 1.046179771 1.26862371 -0.53428036 2.090158224 1.26862371 -0.53428036 3.084291458
		 -2.26043701 0.4268913 3.81291199 -2.41024804 -0.0080434307 3.81001115 -2.29771137 -0.42893657 3.77759337
		 -1.87372553 -0.52757806 3.77893662 -1.28621256 -0.53428036 3.78640819 -0.71489859 -0.53428036 3.79192019
		 -0.16949716 -0.53428036 3.79258871 0.36385375 -0.53428036 3.79258871 0.8133806 -0.53428036 3.79194498
		 1.26862383 -0.53428036 3.7867732 1.75733638 -0.52831441 3.78003883 2.2143259 -0.43400925 3.77554846
		 2.39308858 -0.0018045758 3.80548048 2.213094 0.49578854 3.80313563 1.78517783 0.7972824 3.78714776
		 1.30448484 0.9147132 3.78632307 0.80555946 0.8816067 3.79747105 0.2648685 0.68969458 3.82260442
		 -0.25325033 0.52480119 3.8442955 -0.70026028 0.49568245 3.84651589 -1.18766284 0.54943079 3.83203435
		 -1.75952315 0.60317528 3.81097817 -2.19203091 -0.3363893 4.11212683 -1.82590008 -0.40441668 4.11317205
		 -1.77668917 -0.010446869 4.15623474 -2.25959969 -0.015317267 4.14398813 -1.26376402 -0.41368586 4.1262455
		 -1.22765255 -0.032345966 4.17105532 -0.70740533 -0.41726285 4.13385439 -0.17932592 -0.4156141 4.13471794
		 -0.19855908 -0.046777871 4.17847681 -0.6929155 -0.061206538 4.17781305 0.34795013 -0.41096473 4.13472033
		 0.32620239 -0.0019652168 4.17723131 0.79275656 -0.40262347 4.13388491 1.25120914 -0.39775541 4.12649345
		 1.22404313 0.11286637 4.16601515 0.77809441 0.075267382 4.17346334 1.73318851 -0.39764267 4.11372948
		 2.11758184 -0.33825442 4.11030245 2.23984432 -0.0050641401 4.14015532 1.73737717 0.056914885 4.15280819
		 -1.75093198 0.41242847 4.15641356 -2.15762973 0.32394901 4.14958 -1.20104516 0.37685916 4.17567778
		 -0.24119915 0.36662197 4.18330622 -0.70258647 0.34513336 4.1838398 0.26695168 0.47938004 4.17177343
		 1.28020883 0.66892582 4.13401985 0.80307919 0.64129639 4.14598083 2.11882615 0.37650281 4.14209557
		 1.75547016 0.56128758 4.1342659 -2.28611732 -0.42013529 -4.068087578 -1.86818063 -0.5180589 -4.06796217
		 -0.71423596 -0.52490383 -4.084457397 -0.17050958 -0.52490395 -4.085297108;
	setAttr ".vt[166:331]" 0.8110981 -0.52490383 -4.084486961 1.7539041 -0.51877367 -4.069298744
		 2.20341134 -0.42507684 -4.065997601 -2.39738369 -0.0098721171 -4.10780048 2.38032508 -0.004305616 -4.10297203
		 -2.24936891 0.41311529 -4.11166 -1.75698566 0.57758647 -4.10952663 -0.70040041 0.48144346 -4.15085268
		 -0.25239408 0.50869209 -4.1483593 0.80544508 0.84439427 -4.09224987 1.78065181 0.76003438 -4.080839157
		 2.20202661 0.47627485 -4.10077477 -2.26406479 0.4370746 -3.088980913 -1.76231956 0.62911683 -3.090619087
		 -0.70140183 0.50062722 -3.10610271 -0.25366718 0.53282416 -3.10528755 0.80525982 0.91486955 -3.088243484
		 1.78767765 0.84409499 -3.081014872 2.21662331 0.51444995 -3.084078074 -2.26479316 0.4409928 -2.085511208
		 -1.76287472 0.63850623 -2.088115454 -0.7016384 0.5027355 -2.092284679 -0.25375396 0.53602397 -2.092202902
		 0.80521369 0.93059611 -2.090553761 1.78815675 0.86120057 -2.086210489 2.21732497 0.52134252 -2.083636284
		 -2.26312113 0.43762511 -1.043195128 -1.76157498 0.6313892 -1.044615746 -0.70112431 0.50074542 -1.046179771
		 -0.25356716 0.53321385 -1.046179771 0.80526239 0.91922414 -1.046179771 1.78693986 0.84749466 -1.044052601
		 2.21568704 0.516119 -1.042381048 -2.3000145 -0.42843133 -1.043306112 -1.87400675 -0.52753568 -1.04581964
		 -0.71489859 -0.53428036 -1.046179771 -0.16949715 -0.53428036 -1.046179771 0.81338054 -0.53428036 -1.046179771
		 1.75760722 -0.52827406 -1.045737267 2.21655583 -0.43351859 -1.042608738 -2.30156469 -0.42815301 -2.084479332
		 -1.87419844 -0.52751112 -2.089211226 -0.71489859 -0.53428036 -2.090339422 -0.16949715 -0.53428036 -2.090366125
		 0.81338054 -0.53428036 -2.090340376 1.75779188 -0.52825081 -2.089095831 2.21805549 -0.43324849 -2.08310318
		 -2.30095243 -0.42839834 -3.076299906 -1.87412047 -0.52753216 -3.08085537 -0.71489859 -0.53428036 -3.086166859
		 -0.16949715 -0.53428036 -3.086416245 0.81338054 -0.53428036 -3.086176395 1.75771666 -0.52827078 -3.08112216
		 2.2174623 -0.43348676 -3.074419498 2.39591908 0.0016667683 -1.041693807 2.39768934 0.0029268139 -2.082419634
		 2.39692235 0.0015379384 -3.083786964 -2.4131012 -0.0055708508 -1.042766213 -2.41488385 -0.0044524879 -2.084587812
		 -2.41411018 -0.0055392343 -3.087190628 -1.28392065 -0.52490324 -4.077484131 -1.18833983 0.52892756 -4.13415813
		 -1.18954492 0.56543684 -3.10053611 -1.18992698 0.57139891 -2.091443777 -1.18906593 0.56693858 -1.04600358
		 -1.28621256 -0.53428036 -1.046179771 -1.28621256 -0.53428036 -2.090144396 -1.28621256 -0.53428036 -3.084157228
		 0.36205637 -0.52490395 -4.085297108 0.2640582 0.6608488 -4.12313938 0.26511076 0.71921927 -3.097378492
		 0.26515803 0.73030323 -2.091436386 0.26504016 0.72207034 -1.046179771 0.36385378 -0.53428036 -1.046179771
		 0.36385378 -0.53428036 -2.090366125 0.36385378 -0.53428036 -3.086416245 1.26699197 -0.5249033 -4.077915668
		 1.30213022 0.87520248 -4.078719139 1.30427957 0.95169425 -3.083952904 1.30426073 0.96886051 -2.089722872
		 1.30412567 0.95413768 -1.045934796 1.26862371 -0.53428036 -1.046179771 1.26862371 -0.53428036 -2.090158224
		 1.26862371 -0.53428036 -3.084291697 -2.26043701 0.42689124 -3.81291199 -2.41024804 -0.008043427 -3.81001115
		 -2.29771137 -0.42893657 -3.77759337 -1.87372541 -0.527578 -3.77893662 -1.28621256 -0.53428036 -3.78640819
		 -0.71489859 -0.53428036 -3.79192019 -0.16949716 -0.53428036 -3.79258871 0.36385375 -0.53428036 -3.79258871
		 0.8133806 -0.53428036 -3.79194498 1.26862371 -0.53428036 -3.7867732 1.75733638 -0.52831441 -3.78003883
		 2.2143259 -0.43400928 -3.77554846 2.39308858 -0.0018045725 -3.80548048 2.213094 0.49578854 -3.8031354
		 1.78517771 0.7972824 -3.78714776 1.30448484 0.91471326 -3.78632307 0.80555946 0.8816067 -3.79747105
		 0.2648685 0.68969458 -3.82260442 -0.25325033 0.52480114 -3.84429598 -0.70026034 0.49568245 -3.84651589
		 -1.18766284 0.54943079 -3.83203435 -1.75952315 0.60317528 -3.81097794 -2.19203043 -0.33638924 -4.11212683
		 -1.82590008 -0.40441668 -4.11317253 -1.77668917 -0.010446869 -4.15623474 -2.25959969 -0.015317267 -4.14398861
		 -1.26376402 -0.41368586 -4.1262455 -1.22765255 -0.032345966 -4.17105532 -0.70740539 -0.41726285 -4.13385439
		 -0.17932592 -0.4156141 -4.13471794 -0.19855908 -0.046777874 -4.17847681 -0.6929155 -0.061206546 -4.17781305
		 0.34795013 -0.41096473 -4.13471985 0.32620242 -0.0019652168 -4.17723131 0.79275662 -0.4026235 -4.13388491
		 1.25120902 -0.39775541 -4.12649298 1.22404313 0.11286637 -4.16601515 0.77809441 0.075267382 -4.17346334
		 1.73318863 -0.39764267 -4.11372948 2.11758184 -0.33825442 -4.11030245 2.23984432 -0.0050641387 -4.14015532
		 1.73737693 0.056914888 -4.15280819 -1.75093222 0.41242847 -4.15641308 -2.15762973 0.32394901 -4.14958
		 -1.20104516 0.37685913 -4.17567778 -0.24119915 0.366622 -4.18330622 -0.70258647 0.34513336 -4.1838398
		 0.26695165 0.47938001 -4.17177343 1.28020883 0.66892588 -4.13401985 0.80307925 0.64129639 -4.14598083
		 2.11882615 0.37650281 -4.14209557 1.75547016 0.56128758 -4.1342659 1.76896286 0.69451153 -4.12278891
		 2.16882014 0.43242392 -4.14002419 1.29583263 0.80940837 -4.12045765 0.80641508 0.78135163 -4.13368082
		 0.26081863 0.60341424 -4.16429758 -0.25050279 0.46672159 -4.18404531 -0.70229864 0.44212905 -4.18557549
		 -1.19285369 0.48108456 -4.1726203 -1.75204849 0.52351451 -4.14992714 -2.21666765 0.37924024 -4.14814377
		 2.34484529 -0.0092915073 -4.13807154 1.74299991 -0.48975414 -4.10522366 2.17039514 -0.39428475 -4.10336876
		 0.80321628 -0.49662304 -4.12303972 1.26172757 -0.49691334 -4.11590433 0.3563152 -0.49598235 -4.12382984
		 -0.71197331 -0.49567711 -4.12305975 -0.1739852 -0.49581018 -4.12390947 -1.27631307 -0.4959102 -4.11559439
		 -2.36154962 -0.013360748 -4.14251375 -2.25122833 -0.38966441 -4.10536098 -1.85045278 -0.4884536 -4.10408115
		 -1.76095629 0.61612129 -3.49834013 -1.1886183 0.55737132 -3.51393485 -0.70083916 0.49810755 -3.52406383
		 -0.25347143 0.52874678 -3.52255464 0.26499382 0.70439202 -3.50759411 0.80543786 0.89830357 -3.49030519
		 1.30441809 0.93325502 -3.48249865 1.78646708 0.82066756 -3.48150349;
	setAttr ".vt[332:497]" 2.21491623 0.50507629 -3.49101424 2.39508438 -0.00016686617 -3.49204969
		 2.21593595 -0.43377048 -3.47219372 1.75753081 -0.52829343 -3.4778676 1.26862359 -0.53428036 -3.48287487
		 0.8133806 -0.53428036 -3.48643661 0.36385572 -0.53428036 -3.4868896 -0.16949718 -0.53428036 -3.48688293
		 -0.71489859 -0.53428036 -3.48641992 -1.28621244 -0.53428036 -3.48262262 -1.87393141 -0.52755708 -3.47718549
		 -2.29937625 -0.42868939 -3.47418404 -2.2623198 0.43195754 -3.49843359 -2.41223454 -0.0068164049 -3.49605846
		 1.50879872 -0.52525634 -4.073817253 1.51058984 -0.53461277 -3.78373981 1.5105679 -0.53461611 -3.083239317
		 1.51049376 -0.53470582 -2.090177298 1.51047206 -0.53474987 -1.046214342 1.54796493 0.92335522 -1.045102
		 1.54862738 0.9384954 -2.088095903 1.54841459 0.92052752 -3.082026482 1.54425108 0.83638763 -4.077467918
		 1.54732704 0.87622941 -3.78487015 1.52078128 0.62963247 -4.13261604 1.47337902 0.092154026 -4.15984964
		 1.49276018 -0.40020597 -4.12004566 0.59233731 -0.52492911 -4.085419655 0.594486 -0.53428036 -3.79268026
		 0.5944925 -0.53428036 -3.086509943 0.59469968 -0.53428036 -2.090451002 0.59470004 -0.53428036 -1.046179771
		 0.53728831 0.83230329 -1.046179771 0.5373019 0.84206033 -2.090968847 0.53728348 0.8280822 -3.092656612
		 0.53680813 0.76131409 -4.10695267 0.53724384 0.79512483 -3.80942202 0.53792679 0.5662691 -4.15889359
		 0.55888844 0.036249939 -4.17597008 0.5757001 -0.40702331 -4.13475895 -0.99482125 -0.52490366 -4.081623077
		 -0.99623036 -0.53428036 -3.7896471 -0.99623036 -0.53428036 -3.085343122 -0.99622971 -0.53428036 -2.090261936
		 -0.99623048 -0.53428036 -1.046179771 -0.93507057 0.52607393 -1.0461905 -0.93571973 0.52902406 -2.092120171
		 -0.9355213 0.52541649 -3.10415721 -0.93472826 0.49915424 -4.14453554 -0.93403333 0.51591581 -3.84099627
		 -0.94434315 0.35658732 -4.18121958 -0.95560026 -0.049469549 -4.17552423 -0.98167497 -0.41582021 -4.13099957
		 -2.36295009 0.22026663 -4.11358404 -2.37558031 0.22787638 -3.81471586 -2.37944603 0.23303396 -3.089206457
		 -2.38020802 0.23510639 -2.084961414 -2.37844896 0.23311521 -1.042865276 -2.40992641 -0.0086404001 -4.0050444603
		 -2.37748456 -0.24000782 -4.088000298 -2.39002991 -0.244223 -3.79384875 -2.41521144 -0.0047396123 -2.60488534
		 -2.39383769 -0.243094 -3.081525564 -2.41416621 -0.0047408529 -1.56420171 -2.39459872 -0.24258809 -2.08411622
		 -2.4120028 -0.0069481428 -0.52138311 -2.39282346 -0.24317577 -1.042811155 2.33099818 0.24764913 -4.1067853
		 2.34331059 0.2580685 -3.80827165 2.34718752 0.26696295 -3.085319757 2.3481164 0.27037737 -2.082903624
		 2.34636712 0.26771912 -1.041882873 2.33437085 -0.24357042 -4.084519863 2.39278555 -0.0026232302 -4.00017929077
		 2.34668851 -0.24790032 -3.79049158 2.35043859 -0.24683841 -3.078727007 2.39798522 0.0025399914 -2.60202122
		 2.35124445 -0.2463952 -2.08221674 2.39697623 0.0025685518 -1.56259453 2.34950471 -0.24697079 -1.041857123
		 2.3948288 0.00035339966 -0.5208469 1.75741494 -0.52887857 -3.96870112 1.99799883 -0.50092453 -4.064218044
		 2.21411681 -0.43474588 -3.96479893 2.0051298141 -0.51098198 -3.77532196 0.81350631 -0.53480732 -3.98236179
		 1.035399437 -0.52490515 -4.081750393 1.2687093 -0.53480744 -3.97632432 1.037337661 -0.53428036 -3.78975105
		 0.10237975 -0.52492833 -4.085371494 0.36397699 -0.53480941 -3.98313689 0.1038516 -0.53428036 -3.79263353
		 -0.71493185 -0.53480715 -3.98233104 -0.44096026 -0.52490449 -4.085345745 -0.16944095 -0.5348075 -3.98312068
		 -0.44073203 -0.53428036 -3.79262924 -1.58441782 -0.52538413 -4.072842121 -1.28633535 -0.53480738 -3.97589421
		 -1.58785677 -0.53466308 -3.78288293 -2.29751635 -0.42966363 -3.96688724 -2.10908318 -0.49751377 -4.064217567
		 -1.87397063 -0.52815098 -3.96740031 -2.11783791 -0.5075534 -3.77537394 1.75780201 -0.52829283 -2.6059432
		 2.0069077015 -0.51086152 -3.077162504 2.21821332 -0.43346143 -2.59913206 0.81337667 -0.53428036 -2.6085484
		 1.037337542 -0.53428036 -3.085381985 1.26859558 -0.53428036 -2.6078279 0.10385751 -0.53428036 -3.086480618
		 0.36401483 -0.53428036 -2.60884571 -0.71488595 -0.53428036 -2.60858178 -0.44073191 -0.53428036 -3.086435556
		 -0.16949727 -0.53428036 -2.60861516 -1.58785224 -0.53467447 -3.083046436 -1.28618455 -0.53428036 -2.60777116
		 -2.30173349 -0.42835653 -2.60079479 -2.11965704 -0.50737196 -3.077637672 -1.87440777 -0.52758914 -2.60602045
		 1.75771916 -0.52827126 -1.56874275 2.0070748329 -0.51053441 -2.086072683 2.21744657 -0.43331593 -1.56403041
		 0.8133626 -0.53428036 -1.56939101 1.037332535 -0.53428036 -2.090268135 1.26861072 -0.53428036 -1.56939507
		 0.10395727 -0.53428036 -2.09040308 0.3638581 -0.53428036 -1.56938076 -0.71488404 -0.53428036 -1.56938648
		 -0.44070107 -0.53428036 -2.090414762 -0.16950591 -0.53428036 -1.56939685 -1.58821774 -0.5348587 -2.090211153
		 -1.28619945 -0.53428036 -1.5693959 -2.30093503 -0.4282226 -1.56507766 -2.11990047 -0.50719637 -2.08675909
		 -1.87412834 -0.52751869 -1.5688647 1.75749195 -0.52830422 -0.52286869 2.0062177181 -0.51059723 -1.044217825
		 2.21563697 -0.43386668 -0.52130431 0.81338054 -0.53428036 -0.52308989 1.03733778 -0.53428036 -1.046179771
		 1.26862371 -0.53428036 -0.52308989 0.10390515 -0.53428036 -1.046179771 0.36385375 -0.53428036 -0.52308989
		 -0.71489859 -0.53428036 -0.52308989 -0.44067323 -0.53428036 -1.046179771 -0.16949718 -0.53428036 -0.52308989
		 -1.58826256 -0.53487045 -1.046211243 -1.28621256 -0.53428036 -0.52308989 -2.2990644 -0.42879015 -0.52165306
		 -2.11903119 -0.50729913 -1.044580817 -1.87388694 -0.52756679 -0.52290982 1.78619337 0.83602715 -0.5220263
		 2.21467853 0.5125066 -0.52119052 0.80550504 0.91784477 -0.52308989 1.30406976 0.94358772 -0.52296746
		 0.26498264 0.7170915 -0.52308989 -0.70080638 0.49850067 -0.52308989 -0.25345179 0.53030443 -0.52308989
		 -1.18853402 0.56408954 -0.52300179 -2.26209116 0.43431368 -0.52159756 -1.76077437 0.62643391 -0.52230787
		 1.78766346 0.85685635 -1.56618404 2.019672394 0.71037585 -1.043126225 2.21666479 0.51961488 -1.56363404
		 0.80520225 0.9259336 -1.56937015 1.058671832 0.9562974 -1.04619348;
	setAttr ".vt[498:663]" 1.3042028 0.96396232 -1.56902194 -0.0016399964 0.61522084 -1.046179771
		 0.26505783 0.72742385 -1.56932974 -0.70143223 0.50219482 -1.56927383 -0.48022491 0.49912119 -1.046179771
		 -0.25367907 0.53522938 -1.56927836 -1.47129512 0.61685723 -1.045411587 -1.18957889 0.56987768 -1.56903696
		 -2.2641201 0.44000348 -1.56484151 -2.041386604 0.57082379 -1.043830037 -1.76235092 0.6361081 -1.56698561
		 1.78822207 0.85735703 -2.60382056 2.0211761 0.72004503 -2.084749937 2.21755958 0.51990306 -2.60300112
		 2.020476818 0.70746869 -3.08237958 0.80527902 0.92644417 -2.60957885 1.058614254 0.9694829 -2.090327024
		 1.30427408 0.96432376 -2.6075511 1.058697224 0.95291001 -3.085724592 -0.0017221929 0.6205349 -2.091892004
		 0.26514584 0.72760892 -2.61333275 -0.0016594988 0.6137023 -3.10211515 -0.70154852 0.50201917 -2.61720514
		 -0.48057732 0.50097412 -2.0923419 -0.25389543 0.5349893 -2.61679268 -0.48039097 0.49933392 -3.10671067
		 -1.47241831 0.62302756 -2.089951038 -1.1897608 0.56995088 -2.61460757 -1.47204888 0.6141032 -3.09572196
		 -2.26499963 0.44017404 -2.60603142 -2.042909384 0.57645231 -2.086614847 -1.7629441 0.63651633 -2.60853648
		 -2.042180538 0.56923085 -3.089258194 1.78471971 0.78621531 -3.97782993 2.017245054 0.67274219 -3.79486609
		 2.21280241 0.4917345 -3.99715376 2.0094997883 0.64325309 -4.090583324 0.80548608 0.87128317 -3.98893666
		 1.059200764 0.91876441 -3.79022765 1.30439889 0.90335143 -3.97603202 1.058166862 0.8799383 -4.083298206
		 -0.0016294874 0.59491742 -3.83508849 0.26481822 0.68276703 -4.018293858 -0.001649202 0.57288635 -4.13789606
		 -0.69992137 0.49507937 -4.046268463 -0.47959763 0.49530646 -3.84790039 -0.25318831 0.52341604 -4.043637276
		 -0.47899103 0.48163182 -4.15250874 -1.46974468 0.59088469 -3.82051373 -1.18705547 0.5461337 -4.029410362
		 -1.46961045 0.56660795 -4.12066221 -2.26010919 0.42487037 -4.0082406998 -2.038858414 0.54980737 -3.81045532
		 -1.7588948 0.59761584 -4.005428791 -2.032015562 0.5289799 -4.10879755 1.74508274 0.33027697 -4.14860439
		 1.97428262 0.46826372 -4.13975668 2.19687939 0.21515001 -4.14558935 0.78953117 0.38130471 -4.1648035
		 1.045490861 0.67377633 -4.13817072 1.24815309 0.41568744 -4.1551919 0.0067470726 0.41235214 -4.17937469
		 0.29571369 0.25845873 -4.18041325 -0.69592774 0.1601965 -4.18485022 -0.47290799 0.34651521 -4.18471289
		 -0.22098882 0.17810473 -4.18483639 -1.47737467 0.40306461 -4.16588449 -1.21245003 0.19038498 -4.17777824
		 -2.22678852 0.18803 -4.15002584 -2.0022740364 0.38269177 -4.15182304 -1.75997257 0.21912868 -4.16098452
		 1.73250628 -0.20002539 -4.13570595 2.015757084 0.0206884 -4.14619684 2.19815326 -0.21157862 -4.12370872
		 1.96452594 -0.38100281 -4.10951185 0.781991 -0.19807173 -4.15721273 0.996185 0.10375591 -4.17054224
		 1.23127794 -0.17689498 -4.15033007 1.018078089 -0.3989929 -4.13108635 0.066340253 -0.029001469 -4.17824745
		 0.3406949 -0.23492129 -4.15779829 0.090095848 -0.41384175 -4.13471365 -0.69876152 -0.26248097 -4.1568737
		 -0.44588807 -0.059052724 -4.17869186 -0.18626153 -0.25488585 -4.1577158 -0.44244072 -0.41706502 -4.13475895
		 -1.50314462 -0.018492 -4.16402483 -1.24600458 -0.24622789 -4.14968395 -1.55368733 -0.41255054 -4.11941242
		 -2.24437881 -0.21223536 -4.12646675 -2.047045946 -0.011874199 -4.1494832 -1.80037916 -0.23140307 -4.13572454
		 -2.056264877 -0.38177562 -4.11013699 1.52078128 0.62963247 4.13261604 1.47337902 0.092154026 4.15985012
		 1.49276018 -0.40020597 4.12004519 0.53792679 0.5662691 4.15889359 0.55888844 0.036249939 4.17597008
		 0.57570004 -0.40702331 4.13475895 -0.94434309 0.35658729 4.18121958 -0.95560026 -0.049469545 4.17552328
		 -0.98167491 -0.41582021 4.13099957 1.74508274 0.330277 4.14860439 1.97428262 0.46826372 4.13975668
		 1.76896286 0.69451153 4.12278891 2.19687939 0.21515001 4.14558935 2.16882014 0.43242392 4.14002419
		 0.78953117 0.38130471 4.16480303 1.045490742 0.67377639 4.13817072 0.80641514 0.78135163 4.13368082
		 1.24815309 0.41568747 4.1551919 1.29583263 0.80940837 4.12045765 0.0067470707 0.41235217 4.17937469
		 0.29571369 0.25845873 4.18041325 0.26081866 0.60341424 4.16429758 -0.69592774 0.1601965 4.18485022
		 -0.47290799 0.34651521 4.18471289 -0.70229864 0.44212905 4.18557549 -0.22098882 0.17810473 4.18483639
		 -0.25050279 0.46672159 4.18404436 -1.47737467 0.40306458 4.16588449 -1.21245003 0.19038498 4.17777824
		 -1.19285369 0.48108459 4.17261982 -2.22678828 0.18802999 4.15002584 -2.0022742748 0.38269177 4.15182304
		 -2.21666765 0.37924024 4.14814377 -1.75997245 0.2191287 4.16098452 -1.75204861 0.52351445 4.14992714
		 1.73250628 -0.20002541 4.13570595 2.015757322 0.020688394 4.14619684 2.19815326 -0.21157862 4.12370825
		 2.34484553 -0.0092915129 4.13807154 1.96452594 -0.38100284 4.10951185 2.17039514 -0.39428475 4.10336876
		 1.74299991 -0.48975414 4.10522366 0.78199095 -0.19807172 4.15721273 0.99618495 0.10375592 4.17054224
		 1.23127794 -0.17689498 4.15033007 1.018078089 -0.3989929 4.13108635 1.26172745 -0.4969134 4.11590481
		 0.80321622 -0.49662304 4.12303972 0.06634026 -0.029001471 4.17824745 0.34069487 -0.23492131 4.15779829
		 0.090095848 -0.41384175 4.13471365 0.3563152 -0.49598235 4.12382984 -0.69876152 -0.26248097 4.1568737
		 -0.44588807 -0.059052713 4.17869186 -0.18626153 -0.25488582 4.1577158 -0.44244075 -0.41706502 4.13475895
		 -0.1739852 -0.49581018 4.12390947 -0.71197325 -0.49567714 4.12305975 -1.5031445 -0.018492 4.16402435
		 -1.24600458 -0.24622788 4.14968395 -1.55368733 -0.41255057 4.1194129 -1.27631307 -0.4959102 4.11559439
		 -2.24437881 -0.21223538 4.12646627 -2.047045946 -0.011874199 4.14948273 -2.36154962 -0.013360747 4.14251375
		 -1.80037916 -0.23140305 4.13572407 -2.056264877 -0.38177565 4.11013746 -1.85045278 -0.48845366 4.10408115
		 -2.25122833 -0.38966438 4.10536051 -2.038858414 0.54980737 3.81045532 -1.46974456 0.59088469 3.82051373
		 -0.93403327 0.51591581 3.84099603 -0.47959763 0.49530652 3.84790063;
	setAttr ".vt[664:829]" -0.0016294911 0.59491742 3.83508849 0.5372439 0.79512489 3.80942202
		 1.059200644 0.91876441 3.79022741 1.54732704 0.87622941 3.78487015 2.017245054 0.67274225 3.79486609
		 2.34331059 0.25806847 3.80827165 2.34668851 -0.24790034 3.79049158 2.0051298141 -0.51098198 3.77532196
		 1.51058984 -0.53461277 3.78373981 1.037337661 -0.53428036 3.78975105 0.594486 -0.53428036 3.79268026
		 0.10385161 -0.53428036 3.79263353 -0.44073203 -0.53428036 3.79262924 -0.9962303 -0.53428036 3.7896471
		 -1.58785689 -0.53466302 3.78288317 -2.11783791 -0.5075534 3.77537394 -2.39003015 -0.24422298 3.79384875
		 -2.37558007 0.22787639 3.81471586 -1.76095641 0.61612123 3.49834037 -1.18861818 0.55737132 3.51393485
		 -0.70083928 0.49810755 3.52406359 -0.25347143 0.52874678 3.52255464 0.26499382 0.70439202 3.50759411
		 0.80543786 0.89830351 3.49030519 1.30441809 0.93325502 3.48249888 1.78646696 0.82066751 3.48150349
		 2.21491647 0.50507629 3.49101448 2.39278555 -0.002623233 4.00017881393 2.21411681 -0.43474588 3.96479893
		 1.75741494 -0.52887857 3.96870112 1.2687093 -0.53480744 3.97632432 0.81350631 -0.53480732 3.98236227
		 0.36397699 -0.53480941 3.98313689 -0.16944095 -0.5348075 3.98312068 -0.71493185 -0.53480715 3.98233104
		 -1.28633535 -0.53480738 3.97589421 -1.87397087 -0.52815098 3.96740031 -2.29751658 -0.42966363 3.966887
		 -2.40992641 -0.0086404057 4.0050444603 -2.2623198 0.43195754 3.49843359 1.26862359 -0.53428036 3.48287511
		 1.26859558 -0.53428036 2.60782766 1.26861072 -0.53428036 1.56939507 1.26862371 -0.53428036 0.52308989
		 1.30406964 0.94358778 0.52296746 1.30420256 0.96396238 1.56902194 1.30427408 0.96432382 2.6075511
		 1.30439901 0.90335143 3.97603202 1.5105679 -0.53461611 3.083239317 1.51049376 -0.53470582 2.090177298
		 1.51047206 -0.53474987 1.046214342 1.51048017 -0.53475314 1.2547974e-18 1.54734492 0.90412152 -2.672889e-18
		 1.54796493 0.92335522 1.045102 1.54862726 0.93849546 2.088095903 1.54841459 0.92052752 3.082026482
		 1.54425097 0.83638763 4.077467442 1.50879872 -0.52525634 4.073817253 0.36385572 -0.53428036 3.4868896
		 0.36401486 -0.53428036 2.60884571 0.3638581 -0.53428036 1.56938076 0.36385375 -0.53428036 0.52308989
		 0.26498267 0.7170915 0.52308989 0.2650578 0.72742391 1.56932974 0.26514581 0.72760892 2.61333275
		 0.26481822 0.68276697 4.018293858 0.5944925 -0.53428036 3.086510181 0.59469962 -0.53428036 2.090451002
		 0.59469998 -0.53428036 1.046179771 0.59470004 -0.53428036 0 0.53755206 0.82959622 -1.5295933e-17
		 0.53728831 0.83230329 1.046179771 0.5373019 0.84206033 2.090968847 0.53728342 0.8280822 3.092656612
		 0.53680813 0.76131409 4.10695267 0.59233725 -0.52492911 4.085419655 -1.28621244 -0.53428036 3.48262262
		 -1.28618455 -0.53428036 2.6077714 -1.28619945 -0.53428036 1.5693959 -1.28621256 -0.53428036 0.52308989
		 -1.18853402 0.56408954 0.52300185 -1.18957889 0.56987774 1.56903696 -1.1897608 0.56995088 2.61460757
		 -1.18705547 0.5461337 4.029410362 -0.99623036 -0.53428036 3.085343122 -0.99622971 -0.53428036 2.090261698
		 -0.99623048 -0.53428036 1.046179771 -0.99623048 -0.53428036 0 -0.9344309 0.52245104 4.0733675e-10
		 -0.93507051 0.52607387 1.0461905 -0.93571979 0.529024 2.092120409 -0.93552125 0.52541649 3.10415721
		 -0.93472826 0.49915424 4.14453459 -0.99482125 -0.5249036 4.081623077 -2.37944579 0.23303396 3.089206457
		 -2.38020825 0.23510639 2.084961414 -2.37844896 0.23311523 1.042865276 -2.37680507 0.22949335 -9.905669e-18
		 -2.39383769 -0.24309401 3.081525564 -2.39459872 -0.24258807 2.08411622 -2.39282346 -0.24317575 1.042811155
		 -2.39114285 -0.24439818 -1.0689325e-17 -2.41223454 -0.0068164011 3.49605846 -2.41521144 -0.0047396091 2.6048851
		 -2.41416621 -0.0047408515 1.56420183 -2.4120028 -0.0069481391 0.52138311 2.34718752 0.26696295 3.085319996
		 2.34811664 0.27037737 2.082903624 2.34636712 0.26771912 1.041882873 2.34478021 0.26481092 0
		 2.35043859 -0.24683839 3.078727245 2.35124445 -0.2463952 2.08221674 2.34950471 -0.24697079 1.041857123
		 2.34785867 -0.2481925 -7.9932472e-10 2.39508438 -0.000166866 3.49205017 2.39798522 0.0025399919 2.60202122
		 2.39697647 0.0025685504 1.56259465 2.3948288 0.00035340356 0.5208469 2.21593571 -0.43377048 3.47219372
		 1.75753081 -0.52829343 3.4778676 0.8133806 -0.53428036 3.48643684 -0.16949718 -0.53428036 3.48688293
		 -0.71489853 -0.53428036 3.48641992 -1.87393141 -0.52755713 3.47718573 -2.29937625 -0.42868936 3.47418404
		 2.21821332 -0.43346143 2.59913206 1.75780177 -0.52829283 2.60594296 0.81337667 -0.53428036 2.6085484
		 -0.16949727 -0.53428036 2.60861516 -0.71488595 -0.53428036 2.60858178 -1.87440789 -0.52758914 2.60602069
		 -2.30173326 -0.42835653 2.60079432 2.21744657 -0.4333159 1.56403041 1.75771916 -0.52827126 1.56874287
		 0.8133626 -0.53428036 1.56939101 -0.16950591 -0.53428036 1.56939685 -0.71488404 -0.53428036 1.56938648
		 -1.87412834 -0.52751863 1.56886482 -2.30093503 -0.42822257 1.56507766 2.21563697 -0.43386668 0.52130431
		 1.75749171 -0.52830422 0.52286869 0.81338054 -0.53428036 0.52308989 -0.16949716 -0.53428036 0.52308989
		 -0.71489859 -0.53428036 0.52308989 -1.87388694 -0.52756685 0.52290982 -2.2990644 -0.42879015 0.52165306
		 2.21467853 0.51250654 0.52119058 1.78619337 0.8360272 0.52202624 0.80550504 0.91784477 0.52308989
		 -0.25345179 0.53030443 0.52308989 -0.70080632 0.49850065 0.52308989 -1.76077437 0.62643391 0.52230793
		 -2.26209116 0.43431368 0.52159756 2.21666479 0.51961493 1.56363404 1.78766346 0.85685635 1.56618404
		 0.80520225 0.9259336 1.56937015 -0.25367907 0.53522938 1.56927836 -0.70143223 0.50219482 1.56927383
		 -1.76235092 0.6361081 1.56698561 -2.2641201 0.44000351 1.56484151 2.21755958 0.51990306 2.60300112
		 1.78822207 0.85735708 2.6038208 0.80527902 0.92644417 2.60957885 -0.25389546 0.53498924 2.61679268
		 -0.70154852 0.50201917 2.61720514 -1.76294398 0.63651633 2.60853648;
	setAttr ".vt[830:995]" -2.26499915 0.44017404 2.60603118 2.21280241 0.49173445 3.99715376
		 1.78471982 0.78621525 3.97782993 0.80548614 0.87128317 3.98893666 -0.25318828 0.5234161 4.043637753
		 -0.69992143 0.49507937 4.046267986 -1.7588948 0.5976159 4.005428791 -2.26010919 0.42487037 4.0082406998
		 2.33099794 0.24764912 4.10678577 -2.36295009 0.22026663 4.11358404 2.33437085 -0.24357042 4.084518909
		 -2.37748432 -0.2400078 4.088000298 2.0069077015 -0.51086152 3.077162266 1.037337542 -0.53428036 3.085382223
		 0.10385751 -0.53428036 3.086480379 -0.44073191 -0.53428036 3.086435318 -1.58785212 -0.53467447 3.083046198
		 -2.11965704 -0.50737196 3.077637672 2.0070748329 -0.51053441 2.086072683 1.037332535 -0.53428036 2.090268135
		 0.10395727 -0.53428036 2.09040308 -0.44070107 -0.53428036 2.090414762 -1.58821762 -0.5348587 2.090211153
		 -2.11990047 -0.50719631 2.08675909 2.0062174797 -0.51059723 1.044217825 1.03733778 -0.53428036 1.046179771
		 0.10390514 -0.53428036 1.046179771 -0.44067323 -0.53428036 1.046179771 -1.58826244 -0.53487045 1.046211243
		 -2.11903119 -0.50729913 1.044580698 2.005436182 -0.51079756 -3.7782666e-10 1.03733778 -0.53428036 8.7708101e-19
		 0.10390515 -0.53428036 0 -0.44067323 -0.53428036 0 -1.58827472 -0.53486466 -9.6426191e-19
		 -2.11822796 -0.50752169 -6.029626e-18 2.018238783 0.69841409 3.9519854e-10 1.058956146 0.94862419 -4.5788922e-18
		 -0.0016325195 0.60848027 -1.0392911e-17 -0.47988784 0.49538457 -1.1562459e-17 -1.47023535 0.61072391 5.8924077e-10
		 -2.039978743 0.56393218 -1.0705492e-17 2.019672394 0.71037585 1.043126225 1.058671832 0.9562974 1.04619348
		 -0.0016399946 0.61522084 1.046179771 -0.48022491 0.49912119 1.046179771 -1.47129512 0.61685723 1.045411587
		 -2.041386366 0.57082379 1.043830037 2.0211761 0.72004503 2.084749937 1.058614254 0.9694829 2.090327024
		 -0.0017221925 0.6205349 2.091891766 -0.48057732 0.50097418 2.092341661 -1.47241843 0.62302756 2.089951038
		 -2.042909384 0.57645231 2.086615086 2.020476818 0.70746869 3.082379103 1.058697224 0.95291007 3.085724592
		 -0.0016594983 0.6137023 3.10211515 -0.480391 0.49933392 3.10671067 -1.47204888 0.6141032 3.09572196
		 -2.042180538 0.56923085 3.089257956 2.0094997883 0.64325303 4.090582848 1.058166742 0.8799383 4.083297729
		 -0.0016492094 0.57288635 4.13789654 -0.47899103 0.48163176 4.15250826 -1.46961057 0.56660795 4.12066221
		 -2.032015562 0.5289799 4.10879755 1.99799883 -0.50092453 4.064218044 1.035399318 -0.5249052 4.081749916
		 0.10237975 -0.52492833 4.085371494 -0.44096029 -0.52490449 4.085345745 -1.58441794 -0.52538413 4.072842598
		 -2.10908341 -0.4975138 4.064217567 1.53631806 0.76899445 -4.1195178 1.50269938 -0.49704885 -4.11055422
		 0.53583819 0.70016968 -4.14855766 0.58517486 -0.4964247 -4.12396002 -0.93878472 0.4563061 -4.18087387
		 -0.99009067 -0.49579534 -4.12013769 1.9872427 0.58597606 -4.13152838 2.29493332 0.22229047 -4.1434536
		 1.055988789 0.81537217 -4.12483215 -0.0023177923 0.52343476 -4.17626858 -0.47824085 0.44289559 -4.18699312
		 -1.47191548 0.51352066 -4.16044903 -2.32650948 0.20071045 -4.14855671 -2.0128901 0.48256353 -4.14746714
		 2.29824615 -0.22787112 -4.12046337 1.976017 -0.46834591 -4.10071421 1.028883457 -0.49676979 -4.12019348
		 0.097555749 -0.49598497 -4.12391329 -0.44172618 -0.49574888 -4.12396908 -1.5728178 -0.49645013 -4.10964251
		 -2.34069896 -0.2243731 -4.12379694 -2.082177162 -0.46487173 -4.10088778 -2.040575504 0.55948186 -3.49736094
		 -1.47091579 0.60241294 -3.50572395 -0.93479019 0.52061427 -3.52028775 -0.48000175 0.49727389 -3.5250802
		 -0.0016412175 0.60424417 -3.51627111 0.53727913 0.8115992 -3.49856853 1.058982372 0.93591589 -3.48537278
		 1.54790688 0.89837658 -3.48082685 2.018914461 0.6900456 -3.48602343 2.34530878 0.26247951 -3.49423766
		 2.3486259 -0.24740306 -3.48191762 2.0060408115 -0.51093203 -3.47348523 1.51057887 -0.53461438 -3.48081136
		 1.037337542 -0.53428036 -3.48492837 0.5944888 -0.53428036 -3.48697734 0.10385425 -0.53428036 -3.48693943
		 -0.44073197 -0.53428036 -3.48691297 -0.99623024 -0.53428036 -3.48485637 -1.58785343 -0.53466815 -3.48028183
		 -2.1187768 -0.50747561 -3.47375607 -2.39199305 -0.24368978 -3.48503637 -2.37757921 0.2304326 -3.4994626
		 1.51072919 -0.53515458 -3.97280002 1.51054776 -0.53463972 -2.60744762 1.51047075 -0.53474319 -1.56949687
		 1.51047587 -0.53475171 -0.52310729 1.54755676 0.91099292 -0.522551 1.54835963 0.93366992 -1.56776559
		 1.54867327 0.93414778 -2.60562587 1.5470655 0.86437553 -3.97469783 1.49375486 0.38437852 -4.15141201
		 1.47799969 -0.186693 -4.14325333 0.59461373 -0.53481632 -3.98323679 0.59456331 -0.53428036 -2.60890698
		 0.59471333 -0.53428036 -1.56942546 0.59470004 -0.53428036 -0.52308989 0.53743362 0.829889 -0.52308989
		 0.53727525 0.83824342 -1.56935632 0.53732848 0.83855897 -2.61153984 0.53717107 0.78615481 -4.0028777122
		 0.5475086 0.32262206 -4.17260408 0.5676164 -0.21727121 -4.15795994 -0.99630845 -0.53480726 -3.97967887
		 -0.99621052 -0.53428036 -2.60825539 -0.99621624 -0.53428036 -1.56939113 -0.99623042 -0.53428036 -0.52308989
		 -0.93464905 0.52372706 -0.52309525 -0.93546212 0.52808291 -1.56930554 -0.93566608 0.5280841 -2.6164465
		 -0.93356353 0.51422513 -4.039823532 -0.94833279 0.17177135 -4.18251467 -0.96834487 -0.25574461 -4.15426254
		 -2.37530208 0.22692592 -4.010477543 -2.3804996 0.23470582 -2.60580015 -2.37949991 0.23456395 -1.56435096
		 -2.37736678 0.23084971 -0.52143264 -2.38983417 -0.24485706 -3.98606515 -2.39485312 -0.24287252 -2.60249209
		 -2.39388204 -0.24273492 -1.56430888 -2.39172101 -0.24393548 -0.52140558 2.34310985 0.25623754 -4.0034155846
		 2.3483367 0.26962489 -2.60299706 2.34741068 0.26950651 -1.56288826 2.34531641 0.26580468 -0.52094138
		 2.34649348 -0.24852084 -3.98257399 2.3514483 -0.24663419 -2.60009956 2.35054183 -0.24653719 -1.56287766
		 2.34842443 -0.24772882 -0.52092856 2.0051205158 -0.51167732 -3.96367097 1.03744328 -0.53480774 -3.97980356
		 0.1039447 -0.53481549 -3.98318863 -0.4407205 -0.53480762 -3.98316407;
	setAttr ".vt[996:1161]" -1.58811772 -0.5352357 -3.97182941 -2.11788058 -0.50819927 -3.96362281
		 2.0073456764 -0.51092488 -2.60237479 1.037323475 -0.53428036 -2.6082561 0.10392566 -0.53428036 -2.60885262
		 -0.44072857 -0.53428036 -2.60866833 -1.58798742 -0.53474277 -2.60761404 -2.1201694 -0.50743526 -2.60300827
		 2.006726265 -0.51054239 -1.56645453 1.03731966 -0.53428036 -1.56939268 0.10394166 -0.53428036 -1.56939626
		 -0.44066826 -0.53428036 -1.56942976 -1.58825457 -0.53487176 -1.56952012 -2.11954904 -0.50722229 -1.5670011
		 2.0057032108 -0.51072317 -0.52210891 1.03733778 -0.53428036 -0.52308989 0.10390515 -0.53428036 -0.52308989
		 -0.44067323 -0.53428036 -0.52308989 -1.58826876 -0.53486758 -0.52310562 -2.11850119 -0.50743753 -0.52229035
		 2.018735886 0.70266342 -0.52156311 1.058839917 0.95077443 -0.52309674 -0.0016364354 0.6108703 -0.52308989
		 -0.4800036 0.49679461 -0.52308989 -1.4706068 0.61279774 -0.52270597 -2.040459156 0.5663799 -0.52191502
		 2.020568609 0.71693891 -1.56477976 1.058617473 0.96457952 -1.56940079 -0.0016801184 0.61885279 -1.56930184
		 -0.48043621 0.50050581 -1.56927681 -1.47196293 0.62093526 -1.56818366 -2.042294741 0.5746339 -1.5658052
		 2.021312237 0.71730316 -2.60328698 1.058655024 0.96502131 -2.6085844 -0.0017904874 0.61880225 -2.61558843
		 -0.48061153 0.50035059 -2.61752272 -1.4724524 0.62097532 -2.61205053 -2.043055296 0.57490152 -2.60701156
		 2.016880035 0.66490614 -3.98717952 1.059162498 0.90779579 -3.98045826 -0.0016491564 0.59093124 -4.032913685
		 -0.4793987 0.49496388 -4.04789257 -1.46910977 0.58600283 -4.016219139 -2.03843832 0.54574543 -4.0050754547
		 1.99773371 0.26289988 -4.14741945 1.018266797 0.41336158 -4.15940285 0.034895159 0.2107175 -4.18371582
		 -0.45924523 0.16238849 -4.18570042 -1.48709333 0.21058543 -4.16966391 -2.022707462 0.20324695 -4.15470457
		 1.99152124 -0.20595917 -4.12934589 1.0017243624 -0.18275866 -4.15474701 0.08196836 -0.24702643 -4.1577692
		 -0.44214031 -0.26121944 -4.15773439 -1.52803981 -0.23948559 -4.14276743 -2.051833153 -0.21859877 -4.13069773
		 1.53631806 0.76899445 4.1195178 1.50269938 -0.49704885 4.1105547 0.53583813 0.70016968 4.14855766
		 0.58517492 -0.4964247 4.12396002 -0.93878472 0.45630613 4.18087339 -0.99009061 -0.49579537 4.12013769
		 1.98724258 0.58597606 4.13152838 2.29493308 0.22229047 4.1434536 1.055988789 0.81537211 4.12483215
		 -0.0023177895 0.52343476 4.17626858 -0.47824085 0.44289559 4.18699312 -1.47191548 0.51352072 4.16044903
		 -2.32650948 0.20071046 4.14855671 -2.0128901 0.48256353 4.14746761 2.29824615 -0.22787112 4.12046337
		 1.97601712 -0.46834591 4.10071421 1.028883457 -0.49676979 4.12019396 0.097555749 -0.49598497 4.12391329
		 -0.44172615 -0.49574888 4.12396908 -1.5728178 -0.49645013 4.10964251 -2.34069896 -0.22437312 4.12379694
		 -2.082177162 -0.46487173 4.10088778 -2.040575504 0.55948186 3.49736094 -1.47091579 0.60241288 3.50572395
		 -0.93479007 0.52061427 3.52028775 -0.48000175 0.49727389 3.52507997 -0.0016412248 0.60424417 3.51627111
		 0.53727913 0.81159914 3.49856877 1.058982372 0.93591595 3.48537278 1.54790688 0.89837658 3.48082685
		 2.018914461 0.6900456 3.48602343 2.34530878 0.26247951 3.49423766 2.3486259 -0.24740309 3.48191762
		 2.0060405731 -0.51093203 3.47348523 1.51057887 -0.53461438 3.48081136 1.037337542 -0.53428036 3.48492837
		 0.5944888 -0.53428036 3.48697734 0.10385424 -0.53428036 3.48693943 -0.44073197 -0.53428036 3.48691297
		 -0.99623019 -0.53428036 3.48485637 -1.58785331 -0.53466815 3.48028183 -2.1187768 -0.50747555 3.47375607
		 -2.39199305 -0.24368979 3.48503661 -2.37757897 0.2304326 3.4994626 1.51072919 -0.53515458 3.97280002
		 1.51054776 -0.53463972 2.60744739 1.51047075 -0.53474319 1.56949687 1.51047587 -0.53475171 0.52310729
		 1.54755676 0.91099292 0.522551 1.54835951 0.93366992 1.56776559 1.54867327 0.93414783 2.60562587
		 1.5470655 0.86437553 3.97469759 1.49375486 0.38437855 4.15141201 1.47799969 -0.18669301 4.14325333
		 0.59461373 -0.53481632 3.98323679 0.59456331 -0.53428036 2.60890698 0.59471333 -0.53428036 1.56942546
		 0.59470004 -0.53428036 0.52308989 0.53743362 0.829889 0.52308989 0.53727531 0.83824342 1.56935632
		 0.53732842 0.83855897 2.61154008 0.53717107 0.78615487 4.0028777122 0.5475086 0.32262206 4.17260408
		 0.5676164 -0.21727122 4.15795994 -0.99630845 -0.53480726 3.97967887 -0.99621052 -0.53428036 2.60825515
		 -0.99621624 -0.53428036 1.56939113 -0.99623042 -0.53428036 0.52308989 -0.93464911 0.52372706 0.52309525
		 -0.93546212 0.52808285 1.56930554 -0.93566602 0.5280841 2.6164465 -0.93356347 0.51422518 4.039823532
		 -0.94833273 0.17177136 4.18251419 -0.96834487 -0.25574461 4.15426254 -2.37530208 0.22692592 4.010477543
		 -2.3804996 0.23470582 2.60580039 -2.37949991 0.23456393 1.56435096 -2.37736678 0.23084971 0.52143264
		 -2.38983417 -0.24485706 3.98606539 -2.39485312 -0.24287254 2.60249186 -2.39388204 -0.24273492 1.56430888
		 -2.39172101 -0.24393548 0.52140564 2.34310961 0.25623751 4.0034151077 2.3483367 0.26962489 2.6029973
		 2.34741068 0.26950651 1.56288826 2.34531641 0.26580468 0.52094138 2.34649348 -0.24852084 3.98257375
		 2.3514483 -0.24663417 2.60009956 2.35054183 -0.24653721 1.56287766 2.34842443 -0.24772882 0.52092856
		 2.0051205158 -0.51167732 3.96367097 1.03744328 -0.53480774 3.97980356 0.1039447 -0.53481549 3.98318863
		 -0.4407205 -0.53480762 3.98316407 -1.5881176 -0.5352357 3.97182918 -2.11788082 -0.50819921 3.96362281
		 2.0073456764 -0.51092494 2.60237479 1.037323475 -0.53428036 2.60825586 0.10392566 -0.53428036 2.60885262
		 -0.44072857 -0.53428036 2.60866833 -1.5879873 -0.53474277 2.60761404 -2.1201694 -0.5074352 2.60300827
		 2.0067265034 -0.51054239 1.56645453 1.03731966 -0.53428036 1.56939268 0.10394166 -0.53428036 1.56939626
		 -0.44066826 -0.53428036 1.56942976 -1.58825445 -0.53487176 1.56952012 -2.11954904 -0.50722229 1.5670011
		 2.0057032108 -0.51072317 0.52210891 1.03733778 -0.53428036 0.52308989;
	setAttr ".vt[1162:1201]" 0.10390514 -0.53428036 0.52308989 -0.44067323 -0.53428036 0.52308989
		 -1.58826864 -0.53486758 0.52310562 -2.11850119 -0.50743753 0.52229035 2.018735886 0.70266342 0.52156311
		 1.058839917 0.95077443 0.52309674 -0.0016364346 0.6108703 0.52308989 -0.4800036 0.49679458 0.52308989
		 -1.4706068 0.6127978 0.52270591 -2.040459156 0.5663799 0.52191502 2.020568609 0.71693897 1.56477976
		 1.058617473 0.96457958 1.56940079 -0.0016801212 0.61885279 1.56930184 -0.48043621 0.50050581 1.56927681
		 -1.47196305 0.62093532 1.56818378 -2.042294741 0.5746339 1.5658052 2.021312237 0.7173031 2.60328698
		 1.058655024 0.96502125 2.6085844 -0.0017904888 0.61880225 2.61558843 -0.48061156 0.50035059 2.61752248
		 -1.47245252 0.62097532 2.61205053 -2.043055058 0.57490152 2.60701156 2.016880035 0.66490608 3.98717904
		 1.059162498 0.90779579 3.9804585 -0.0016491599 0.59093124 4.032913685 -0.47939873 0.49496388 4.047892094
		 -1.46910977 0.58600283 4.016219139 -2.03843832 0.54574543 4.0050754547 1.99773359 0.26289988 4.14741945
		 1.018266797 0.41336155 4.15940285 0.034895159 0.2107175 4.18371582 -0.45924526 0.16238849 4.18570042
		 -1.48709333 0.21058542 4.16966391 -2.022707462 0.20324697 4.15470457 1.99152112 -0.20595919 4.12934589
		 1.0017243624 -0.18275864 4.15474701 0.081968375 -0.24702641 4.1577692 -0.44214034 -0.26121944 4.15773439
		 -1.52803969 -0.23948561 4.14276743 -2.051833153 -0.21859877 4.13069773;
	setAttr -s 2400 ".ed";
	setAttr ".ed[0:165]"  0 901 1 1 900 1 2 899 1 3 898 1 4 897 1 5 896 1 9 895 1
		 10 894 1 11 893 1 12 892 1 13 891 1 14 890 1 16 889 1 17 888 1 18 887 1 19 886 1
		 20 885 1 21 884 1 23 883 1 24 882 1 25 881 1 26 880 1 27 879 1 28 878 1 30 877 1
		 31 876 1 32 875 1 33 874 1 34 873 1 35 872 1 37 871 1 38 870 1 39 869 1 40 868 1
		 41 867 1 42 866 1 44 865 1 45 864 1 46 863 1 47 862 1 48 861 1 49 860 1 51 859 1
		 52 858 1 53 857 1 54 856 1 55 855 1 56 854 1 58 853 1 59 852 1 60 851 1 61 850 1
		 62 849 1 63 848 1 65 847 1 66 846 1 67 845 1 68 844 1 69 843 1 70 842 1 0 841 1 6 840 1
		 7 839 1 8 838 1 9 837 1 10 836 1 11 835 1 12 834 1 13 833 1 14 832 1 15 831 1 16 830 1
		 17 829 1 18 828 1 19 827 1 20 826 1 21 825 1 22 824 1 23 823 1 24 822 1 25 821 1
		 26 820 1 27 819 1 28 818 1 29 817 1 30 816 1 31 815 1 32 814 1 33 813 1 34 812 1
		 35 811 1 36 810 1 44 809 1 45 808 1 46 807 1 47 806 1 48 805 1 49 804 1 50 803 1
		 51 802 1 52 801 1 53 800 1 54 799 1 55 798 1 56 797 1 57 796 1 58 795 1 59 794 1
		 60 793 1 61 792 1 62 791 1 63 790 1 64 789 1 65 788 1 66 787 1 67 786 1 68 785 1
		 69 784 1 70 783 1 71 782 1 72 781 1 73 780 1 74 779 1 75 778 1 50 777 1 57 776 1
		 64 775 1 71 774 1 72 773 1 73 772 1 74 771 1 75 770 1 76 769 1 77 768 1 78 767 1
		 79 766 1 44 765 1 51 764 1 58 763 1 65 762 1 76 761 1 77 760 1 78 759 1 79 758 1
		 80 757 1 81 756 1 82 755 1 83 754 1 84 753 1 85 752 1 86 751 1 87 750 1 88 749 1
		 89 748 1 81 747 1 82 746 1 83 745 1 84 744 1 86 743 1 87 742 1 88 741 1 89 740 1
		 90 739 1 91 738 1 92 737 1 93 736 1;
	setAttr ".ed[166:331]" 94 735 1 95 734 1 96 733 1 97 732 1 98 731 1 99 730 1
		 91 729 1 92 728 1 93 727 1 94 726 1 96 725 1 97 724 1 98 723 1 99 722 1 100 721 1
		 101 720 1 102 719 1 103 718 1 104 717 1 105 716 1 106 715 1 107 714 1 108 713 1 109 712 1
		 101 711 1 102 710 1 103 709 1 104 708 1 106 707 1 107 706 1 108 705 1 109 704 1 110 703 1
		 111 702 1 112 701 1 113 700 1 114 699 1 115 698 1 116 697 1 117 696 1 118 695 1 119 694 1
		 120 693 1 121 692 1 122 691 1 123 690 1 124 689 1 125 688 1 126 687 1 127 686 1 128 685 1
		 129 684 1 130 683 1 131 682 1 110 681 1 111 680 1 112 679 1 113 678 1 114 677 1 115 676 1
		 116 675 1 117 674 1 118 673 1 119 672 1 120 671 1 121 670 1 122 669 1 123 668 1 124 667 1
		 125 666 1 126 665 1 127 664 1 128 663 1 129 662 1 130 661 1 131 660 1 0 659 1 1 658 1
		 132 657 1 133 656 1 7 655 1 135 654 1 132 653 1 80 652 1 133 651 1 136 650 1 134 649 1
		 2 648 1 3 647 1 138 646 1 139 645 1 141 644 1 138 643 1 90 642 1 139 641 1 142 640 1
		 140 639 1 4 638 1 100 637 1 144 636 1 145 635 1 147 634 1 144 633 1 5 632 1 6 631 1
		 148 630 1 8 629 1 149 628 1 151 627 1 148 626 1 10 625 1 134 624 1 9 623 1 153 622 1
		 135 621 1 81 620 1 137 619 1 152 618 1 12 617 1 140 616 1 11 615 1 156 614 1 141 613 1
		 91 612 1 143 611 1 155 610 1 101 609 1 146 608 1 13 607 1 159 606 1 147 605 1 15 604 1
		 150 603 1 14 602 1 161 601 1 151 600 1 136 599 1 137 598 1 154 597 1 142 596 1 143 595 1
		 157 594 1 145 593 1 146 592 1 158 591 1 272 590 1 273 589 1 275 588 1 272 587 1 273 586 1
		 276 585 1 274 584 1 278 583 1 279 582 1 281 581 1 278 580 1 279 579 1 282 578 1 280 577 1
		 284 576 1 285 575 1 287 574 1 284 573 1 288 572 1 289 571 1 291 570 1;
	setAttr ".ed[332:497]" 288 569 1 274 568 1 293 567 1 275 566 1 277 565 1 292 564 1
		 280 563 1 296 562 1 281 561 1 283 560 1 295 559 1 286 558 1 299 557 1 287 556 1 290 555 1
		 301 554 1 291 553 1 171 552 1 172 551 1 271 550 1 171 549 1 172 548 1 227 547 1 270 546 1
		 173 545 1 174 544 1 268 543 1 173 542 1 174 541 1 235 540 1 267 539 1 175 538 1 243 537 1
		 265 536 1 175 535 1 176 534 1 177 533 1 263 532 1 176 531 1 178 530 1 179 529 1 185 528 1
		 178 527 1 179 526 1 228 525 1 186 524 1 180 523 1 181 522 1 187 521 1 180 520 1 181 519 1
		 236 518 1 188 517 1 182 516 1 244 515 1 189 514 1 182 513 1 183 512 1 184 511 1 190 510 1
		 183 509 1 186 508 1 192 507 1 185 506 1 229 505 1 193 504 1 188 503 1 194 502 1 187 501 1
		 237 500 1 195 499 1 245 498 1 196 497 1 189 496 1 191 495 1 197 494 1 190 493 1 193 492 1
		 192 491 1 230 490 1 195 489 1 194 488 1 238 487 1 246 486 1 196 485 1 198 484 1 197 483 1
		 45 482 1 199 481 1 44 480 1 86 479 1 200 478 1 47 477 1 201 476 1 46 475 1 96 474 1
		 202 473 1 106 472 1 203 471 1 48 470 1 50 469 1 204 468 1 49 467 1 200 466 1 206 465 1
		 199 464 1 231 463 1 207 462 1 202 461 1 208 460 1 201 459 1 239 458 1 209 457 1 247 456 1
		 210 455 1 203 454 1 205 453 1 211 452 1 204 451 1 207 450 1 213 449 1 206 448 1 232 447 1
		 214 446 1 209 445 1 215 444 1 208 443 1 240 442 1 216 441 1 248 440 1 217 439 1 210 438 1
		 212 437 1 218 436 1 211 435 1 252 434 1 253 433 1 162 432 1 252 431 1 253 430 1 254 429 1
		 163 428 1 255 427 1 256 426 1 164 425 1 255 424 1 256 423 1 257 422 1 165 421 1 258 420 1
		 259 419 1 166 418 1 258 417 1 260 416 1 261 415 1 167 414 1 260 413 1 72 412 1 205 411 1
		 220 410 1 212 409 1 221 408 1 219 407 1 261 406 1 262 405 1 168 404 1;
	setAttr ".ed[498:663]" 220 403 1 221 402 1 222 401 1 262 400 1 170 399 1 199 398 1
		 76 397 1 206 396 1 223 395 1 213 394 1 224 393 1 251 392 1 162 391 1 251 390 1 223 389 1
		 224 388 1 225 387 1 250 386 1 169 385 1 276 384 1 277 383 1 294 382 1 269 381 1 227 380 1
		 228 379 1 229 378 1 230 377 1 231 376 1 232 375 1 233 374 1 254 373 1 226 372 1 282 371 1
		 283 370 1 297 369 1 266 368 1 235 367 1 236 366 1 237 365 1 238 364 1 239 363 1 240 362 1
		 241 361 1 257 360 1 234 359 1 285 358 1 286 357 1 298 356 1 264 355 1 243 354 1 244 353 1
		 245 352 1 246 351 1 247 350 1 248 349 1 249 348 1 259 347 1 242 346 1 225 345 1 250 344 1
		 213 343 1 214 342 1 233 341 1 215 340 1 216 339 1 241 338 1 217 337 1 249 336 1 218 335 1
		 219 334 1 222 333 1 263 332 1 264 331 1 265 330 1 266 329 1 267 328 1 268 327 1 269 326 1
		 270 325 1 271 324 1 163 323 1 162 322 1 169 321 1 226 320 1 165 319 1 164 318 1 234 317 1
		 242 316 1 166 315 1 168 314 1 167 313 1 170 312 1 171 311 1 172 310 1 227 309 1 173 308 1
		 174 307 1 235 306 1 175 305 1 243 304 1 177 303 1 176 302 1 302 301 1 303 300 1 304 298 1
		 305 299 1 306 297 1 307 295 1 308 296 1 309 294 1 310 292 1 311 293 1 312 290 1 313 288 1
		 314 289 1 315 284 1 316 285 1 317 282 1 318 278 1 319 279 1 320 276 1 321 275 1 322 272 1
		 323 273 1 324 179 1 325 228 1 326 180 1 327 181 1 328 236 1 329 182 1 330 244 1 331 183 1
		 332 184 1 333 262 1 334 261 1 335 260 1 336 259 1 337 258 1 338 257 1 339 256 1 340 255 1
		 341 254 1 342 253 1 343 252 1 344 178 1 345 251 1 346 167 1 347 260 1 348 218 1 349 211 1
		 350 204 1 351 197 1 352 190 1 353 183 1 354 176 1 355 265 1 356 301 1 357 291 1 358 288 1
		 359 166 1 360 258 1 361 217 1 362 210 1 363 203 1 364 196 1 365 189 1;
	setAttr ".ed[664:829]" 366 182 1 367 175 1 368 267 1 369 299 1 370 287 1 371 284 1
		 372 164 1 373 255 1 374 215 1 375 208 1 376 201 1 377 194 1 378 187 1 379 180 1 380 173 1
		 381 270 1 382 296 1 383 281 1 384 278 1 385 171 1 386 251 1 387 178 1 388 185 1 389 192 1
		 390 169 1 391 169 1 392 252 1 393 225 1 394 225 1 395 224 1 396 224 1 397 223 1 398 223 1
		 399 177 1 400 263 1 401 184 1 402 191 1 403 198 1 404 170 1 405 170 1 406 262 1 407 222 1
		 408 222 1 409 221 1 410 221 1 411 220 1 412 220 1 413 167 1 414 168 1 415 168 1 416 261 1
		 417 166 1 418 242 1 419 242 1 420 259 1 421 234 1 422 234 1 423 257 1 424 164 1 425 165 1
		 426 165 1 427 256 1 428 226 1 429 226 1 430 254 1 431 162 1 432 163 1 433 163 1 434 253 1
		 435 218 1 436 219 1 437 219 1 438 217 1 439 249 1 440 249 1 441 241 1 442 241 1 443 215 1
		 444 216 1 445 216 1 446 233 1 447 233 1 448 213 1 449 214 1 450 214 1 451 211 1 452 212 1
		 453 212 1 454 210 1 455 248 1 456 248 1 457 240 1 458 240 1 459 208 1 460 209 1 461 209 1
		 462 232 1 463 232 1 464 206 1 465 207 1 466 207 1 467 204 1 468 205 1 469 205 1 470 203 1
		 471 247 1 472 247 1 473 239 1 474 239 1 475 201 1 476 202 1 477 202 1 478 231 1 479 231 1
		 480 199 1 481 200 1 482 200 1 483 42 1 484 43 1 485 41 1 486 105 1 487 95 1 488 39 1
		 489 40 1 490 85 1 491 37 1 492 38 1 493 197 1 494 198 1 495 198 1 496 196 1 497 246 1
		 498 246 1 499 238 1 500 238 1 501 194 1 502 195 1 503 195 1 504 230 1 505 230 1 506 192 1
		 507 193 1 508 193 1 509 190 1 510 191 1 511 191 1 512 184 1 513 189 1 514 245 1 515 245 1
		 516 244 1 517 237 1 518 237 1 519 236 1 520 187 1 521 188 1 522 188 1 523 181 1 524 229 1
		 525 229 1 526 228 1 527 185 1 528 186 1 529 186 1 530 179 1 531 264 1;
	setAttr ".ed[830:995]" 532 264 1 533 263 1 534 177 1 535 266 1 536 266 1 537 265 1
		 538 243 1 539 268 1 540 267 1 541 235 1 542 269 1 543 269 1 544 268 1 545 174 1 546 271 1
		 547 270 1 548 227 1 549 250 1 550 250 1 551 271 1 552 172 1 553 301 1 554 300 1 555 300 1
		 556 299 1 557 298 1 558 298 1 559 297 1 560 297 1 561 296 1 562 295 1 563 295 1 564 294 1
		 565 294 1 566 293 1 567 292 1 568 292 1 569 291 1 570 290 1 571 290 1 572 289 1 573 287 1
		 574 286 1 575 286 1 576 285 1 577 283 1 578 283 1 579 282 1 580 281 1 581 280 1 582 280 1
		 583 279 1 584 277 1 585 277 1 586 276 1 587 275 1 588 274 1 589 274 1 590 273 1 591 161 1
		 592 151 1 593 148 1 594 159 1 595 147 1 596 144 1 597 156 1 598 141 1 599 138 1 600 161 1
		 601 160 1 602 161 1 603 160 1 604 160 1 605 159 1 606 158 1 607 159 1 608 158 1 609 158 1
		 610 157 1 611 157 1 612 157 1 613 156 1 614 155 1 615 156 1 616 155 1 617 155 1 618 154 1
		 619 154 1 620 154 1 621 153 1 622 152 1 623 153 1 624 152 1 625 152 1 626 151 1 627 150 1
		 628 150 1 629 150 1 630 149 1 631 149 1 632 148 1 633 147 1 634 146 1 635 146 1 636 145 1
		 637 145 1 638 144 1 639 143 1 640 143 1 641 142 1 642 142 1 643 141 1 644 140 1 645 140 1
		 646 139 1 647 139 1 648 138 1 649 137 1 650 137 1 651 136 1 652 136 1 653 135 1 654 134 1
		 655 135 1 656 134 1 657 133 1 658 133 1 659 132 1 660 110 1 661 131 1 662 130 1 663 129 1
		 664 128 1 665 127 1 666 126 1 667 125 1 668 124 1 669 123 1 670 122 1 671 121 1 672 120 1
		 673 119 1 674 118 1 675 117 1 676 116 1 677 115 1 678 114 1 679 113 1 680 112 1 681 111 1
		 682 17 1 683 82 1 684 18 1 685 19 1 686 92 1 687 20 1 688 102 1 689 21 1 690 22 1
		 691 8 1 692 6 1 693 5 1 694 100 1 695 4 1 696 90 1 697 3 1;
	setAttr ".ed[996:1161]" 698 2 1 699 80 1 700 1 1 701 0 1 702 7 1 703 16 1 704 119 1
		 705 109 1 706 108 1 707 107 1 708 105 1 709 104 1 710 103 1 711 125 1 712 70 1 713 63 1
		 714 56 1 715 49 1 716 42 1 717 35 1 718 28 1 719 21 1 720 14 1 721 5 1 722 117 1
		 723 99 1 724 98 1 725 97 1 726 95 1 727 94 1 728 93 1 729 127 1 730 69 1 731 62 1
		 732 55 1 733 48 1 734 41 1 735 34 1 736 27 1 737 20 1 738 13 1 739 4 1 740 114 1
		 741 89 1 742 88 1 743 87 1 744 85 1 745 84 1 746 83 1 747 130 1 748 67 1 749 60 1
		 750 53 1 751 46 1 752 39 1 753 32 1 754 25 1 755 18 1 756 11 1 757 2 1 758 16 1 759 23 1
		 760 30 1 761 37 1 762 79 1 763 78 1 764 77 1 765 76 1 766 111 1 767 79 1 768 78 1
		 769 77 1 770 22 1 771 29 1 772 36 1 773 43 1 774 75 1 775 74 1 776 73 1 777 72 1
		 778 122 1 779 75 1 780 74 1 781 73 1 782 121 1 783 120 1 784 118 1 785 116 1 786 115 1
		 787 113 1 788 112 1 789 71 1 790 70 1 791 69 1 792 68 1 793 67 1 794 66 1 795 65 1
		 796 64 1 797 63 1 798 62 1 799 61 1 800 60 1 801 59 1 802 58 1 803 57 1 804 56 1
		 805 55 1 806 54 1 807 53 1 808 52 1 809 51 1 810 43 1 811 42 1 812 41 1 813 40 1
		 814 39 1 815 38 1 816 37 1 817 36 1 818 35 1 819 34 1 820 33 1 821 32 1 822 31 1
		 823 30 1 824 29 1 825 28 1 826 27 1 827 26 1 828 25 1 829 24 1 830 23 1 831 123 1
		 832 124 1 833 126 1 834 128 1 835 129 1 836 131 1 837 110 1 838 15 1 839 9 1 840 8 1
		 841 7 1 842 71 1 843 109 1 844 99 1 845 68 1 846 89 1 847 66 1 848 64 1 849 108 1
		 850 98 1 851 61 1 852 88 1 853 59 1 854 57 1 855 107 1 856 97 1 857 54 1 858 87 1
		 859 52 1 860 50 1 861 106 1 862 96 1 863 47 1;
	setAttr ".ed[1162:1327]" 864 86 1 865 45 1 866 43 1 867 105 1 868 95 1 869 40 1
		 870 85 1 871 38 1 872 36 1 873 104 1 874 94 1 875 33 1 876 84 1 877 31 1 878 29 1
		 879 103 1 880 93 1 881 26 1 882 83 1 883 24 1 884 22 1 885 102 1 886 92 1 887 19 1
		 888 82 1 889 17 1 890 15 1 891 101 1 892 91 1 893 12 1 894 81 1 895 10 1 896 6 1
		 897 100 1 898 90 1 899 3 1 900 80 1 901 1 1 302 902 1 902 304 1 902 356 1 902 354 1
		 316 903 1 903 313 1 903 358 1 903 346 1 305 904 1 904 306 1 904 369 1 904 367 1 317 905 1
		 905 315 1 905 371 1 905 359 1 308 906 1 906 309 1 906 382 1 906 380 1 320 907 1 907 318 1
		 907 384 1 907 372 1 303 908 1 908 302 1 908 554 1 908 534 1 312 909 1 909 303 1 909 555 1
		 909 399 1 304 910 1 910 305 1 910 557 1 910 538 1 306 911 1 911 307 1 911 559 1 911 541 1
		 307 912 1 912 308 1 912 562 1 912 545 1 309 913 1 913 310 1 913 564 1 913 548 1 311 914 1
		 914 321 1 914 566 1 914 385 1 310 915 1 915 311 1 915 567 1 915 552 1 314 916 1 916 312 1
		 916 571 1 916 404 1 313 917 1 917 314 1 917 572 1 917 414 1 315 918 1 918 316 1 918 576 1
		 918 418 1 319 919 1 919 317 1 919 579 1 919 421 1 318 920 1 920 319 1 920 583 1 920 425 1
		 323 921 1 921 320 1 921 586 1 921 428 1 321 922 1 922 322 1 922 587 1 922 391 1 322 923 1
		 923 323 1 923 590 1 923 432 1 344 924 1 924 324 1 924 530 1 924 550 1 324 925 1 925 325 1
		 925 526 1 925 546 1 379 926 1 926 381 1 926 326 1 926 325 1 326 927 1 927 327 1 927 523 1
		 927 543 1 327 928 1 928 328 1 928 519 1 928 539 1 366 929 1 929 368 1 929 329 1 929 328 1
		 329 930 1 930 330 1 930 516 1 930 536 1 353 931 1 931 355 1 931 331 1 931 330 1 331 932 1
		 932 332 1 932 512 1 932 532 1 332 933 1 933 333 1 933 401 1 933 400 1;
	setAttr ".ed[1328:1493]" 333 934 1 934 334 1 934 407 1 934 406 1 335 935 1 935 334 1
		 935 416 1 935 436 1 335 936 1 936 336 1 936 348 1 936 347 1 337 937 1 937 336 1 937 420 1
		 937 439 1 337 938 1 938 338 1 938 361 1 938 360 1 339 939 1 939 338 1 939 423 1 939 441 1
		 340 940 1 940 339 1 940 427 1 940 444 1 340 941 1 941 341 1 941 374 1 941 373 1 342 942 1
		 942 341 1 942 430 1 942 446 1 343 943 1 943 342 1 943 434 1 943 449 1 394 944 1 944 392 1
		 944 345 1 944 343 1 387 945 1 945 386 1 945 344 1 945 345 1 346 946 1 946 347 1 946 413 1
		 946 419 1 348 947 1 947 349 1 947 435 1 947 440 1 349 948 1 948 350 1 948 451 1 948 456 1
		 350 949 1 949 715 1 949 467 1 949 472 1 716 950 1 950 351 1 950 483 1 950 486 1 351 951 1
		 951 352 1 951 493 1 951 498 1 352 952 1 952 353 1 952 509 1 952 515 1 531 953 1 953 537 1
		 953 354 1 953 355 1 356 954 1 954 357 1 954 553 1 954 558 1 357 955 1 955 358 1 955 569 1
		 955 575 1 359 956 1 956 360 1 956 417 1 956 422 1 361 957 1 957 362 1 957 438 1 957 442 1
		 362 958 1 958 363 1 958 454 1 958 458 1 363 959 1 959 733 1 959 470 1 959 474 1 734 960 1
		 960 364 1 960 485 1 960 487 1 364 961 1 961 365 1 961 496 1 961 500 1 365 962 1 962 366 1
		 962 513 1 962 518 1 535 963 1 963 540 1 963 367 1 963 368 1 369 964 1 964 370 1 964 556 1
		 964 560 1 370 965 1 965 371 1 965 573 1 965 578 1 372 966 1 966 373 1 966 424 1 966 429 1
		 374 967 1 967 375 1 967 443 1 967 447 1 375 968 1 968 376 1 968 459 1 968 463 1 376 969 1
		 969 751 1 969 475 1 969 479 1 752 970 1 970 377 1 970 488 1 970 490 1 377 971 1 971 378 1
		 971 501 1 971 505 1 378 972 1 972 379 1 972 520 1 972 525 1 542 973 1 973 547 1 973 380 1
		 973 381 1 382 974 1 974 383 1 974 561 1 974 565 1 383 975 1 975 384 1;
	setAttr ".ed[1494:1659]" 975 580 1 975 585 1 549 976 1 976 390 1 976 385 1 976 386 1
		 388 977 1 977 387 1 977 527 1 977 393 1 389 978 1 978 388 1 978 506 1 978 395 1 761 979 1
		 979 389 1 979 491 1 979 397 1 390 980 1 980 431 1 980 391 1 980 392 1 396 981 1 981 394 1
		 981 393 1 981 448 1 398 982 1 982 396 1 982 395 1 982 464 1 765 983 1 983 398 1 983 397 1
		 983 480 1 399 984 1 984 400 1 984 533 1 984 405 1 401 985 1 985 402 1 985 511 1 985 408 1
		 402 986 1 986 403 1 986 495 1 986 410 1 403 987 1 987 773 1 987 484 1 987 412 1 404 988 1
		 988 406 1 988 405 1 988 415 1 407 989 1 989 409 1 989 408 1 989 437 1 409 990 1 990 411 1
		 990 410 1 990 453 1 411 991 1 991 777 1 991 412 1 991 469 1 413 992 1 992 415 1 992 414 1
		 992 416 1 417 993 1 993 419 1 993 418 1 993 420 1 426 994 1 994 422 1 994 421 1 994 423 1
		 424 995 1 995 426 1 995 425 1 995 427 1 433 996 1 996 429 1 996 428 1 996 430 1 431 997 1
		 997 433 1 997 432 1 997 434 1 435 998 1 998 437 1 998 436 1 998 452 1 438 999 1 999 440 1
		 999 439 1 999 455 1 445 1000 1 1000 442 1 1000 441 1 1000 457 1 443 1001 1 1001 445 1
		 1001 444 1 1001 460 1 450 1002 1 1002 447 1 1002 446 1 1002 462 1 448 1003 1 1003 450 1
		 1003 449 1 1003 465 1 451 1004 1 1004 453 1 1004 452 1 1004 468 1 454 1005 1 1005 456 1
		 1005 455 1 1005 471 1 461 1006 1 1006 458 1 1006 457 1 1006 473 1 459 1007 1 1007 461 1
		 1007 460 1 1007 476 1 466 1008 1 1008 463 1 1008 462 1 1008 478 1 464 1009 1 1009 466 1
		 1009 465 1 1009 481 1 467 1010 1 1010 469 1 1010 468 1 1010 860 1 470 1011 1 1011 472 1
		 1011 471 1 1011 861 1 477 1012 1 1012 474 1 1012 473 1 1012 862 1 475 1013 1 1013 477 1
		 1013 476 1 1013 863 1 482 1014 1 1014 479 1 1014 478 1 1014 864 1 480 1015 1 1015 482 1
		 1015 481 1 1015 865 1 483 1016 1 1016 484 1 1016 866 1 1016 494 1;
	setAttr ".ed[1660:1825]" 485 1017 1 1017 486 1 1017 867 1 1017 497 1 489 1018 1
		 1018 487 1 1018 868 1 1018 499 1 488 1019 1 1019 489 1 1019 869 1 1019 502 1 492 1020 1
		 1020 490 1 1020 870 1 1020 504 1 491 1021 1 1021 492 1 1021 871 1 1021 507 1 493 1022 1
		 1022 495 1 1022 494 1 1022 510 1 496 1023 1 1023 498 1 1023 497 1 1023 514 1 503 1024 1
		 1024 500 1 1024 499 1 1024 517 1 501 1025 1 1025 503 1 1025 502 1 1025 521 1 508 1026 1
		 1026 505 1 1026 504 1 1026 524 1 506 1027 1 1027 508 1 1027 507 1 1027 528 1 509 1028 1
		 1028 511 1 1028 510 1 1028 512 1 513 1029 1 1029 515 1 1029 514 1 1029 516 1 522 1030 1
		 1030 518 1 1030 517 1 1030 519 1 520 1031 1 1031 522 1 1031 521 1 1031 523 1 529 1032 1
		 1032 525 1 1032 524 1 1032 526 1 527 1033 1 1033 529 1 1033 528 1 1033 530 1 531 1034 1
		 1034 533 1 1034 532 1 1034 534 1 535 1035 1 1035 537 1 1035 536 1 1035 538 1 544 1036 1
		 1036 540 1 1036 539 1 1036 541 1 542 1037 1 1037 544 1 1037 543 1 1037 545 1 551 1038 1
		 1038 547 1 1038 546 1 1038 548 1 549 1039 1 1039 551 1 1039 550 1 1039 552 1 553 1040 1
		 1040 555 1 1040 554 1 1040 570 1 556 1041 1 1041 558 1 1041 557 1 1041 574 1 563 1042 1
		 1042 560 1 1042 559 1 1042 577 1 561 1043 1 1043 563 1 1043 562 1 1043 581 1 568 1044 1
		 1044 565 1 1044 564 1 1044 584 1 566 1045 1 1045 568 1 1045 567 1 1045 588 1 569 1046 1
		 1046 571 1 1046 570 1 1046 572 1 573 1047 1 1047 575 1 1047 574 1 1047 576 1 582 1048 1
		 1048 578 1 1048 577 1 1048 579 1 580 1049 1 1049 582 1 1049 581 1 1049 583 1 589 1050 1
		 1050 585 1 1050 584 1 1050 586 1 587 1051 1 1051 589 1 1051 588 1 1051 590 1 720 1052 1
		 1052 591 1 1052 609 1 1052 602 1 721 1053 1 1053 593 1 1053 632 1 1053 637 1 738 1054 1
		 1054 594 1 1054 612 1 1054 607 1 739 1055 1 1055 596 1 1055 638 1 1055 642 1 756 1056 1
		 1056 597 1 1056 620 1 1056 615 1 757 1057 1 1057 599 1 1057 648 1 1057 652 1 890 1058 1
		 1058 601 1;
	setAttr ".ed[1826:1991]" 1058 602 1 1058 604 1 838 1059 1 1059 603 1 1059 604 1
		 1059 629 1 891 1060 1 1060 606 1 1060 607 1 1060 609 1 892 1061 1 1061 610 1 1061 617 1
		 1061 612 1 893 1062 1 1062 614 1 1062 615 1 1062 617 1 894 1063 1 1063 618 1 1063 625 1
		 1063 620 1 839 1064 1 1064 621 1 1064 655 1 1064 623 1 895 1065 1 1065 622 1 1065 623 1
		 1065 625 1 840 1066 1 1066 628 1 1066 629 1 1066 631 1 896 1067 1 1067 630 1 1067 631 1
		 1067 632 1 897 1068 1 1068 636 1 1068 637 1 1068 638 1 898 1069 1 1069 641 1 1069 642 1
		 1069 647 1 899 1070 1 1070 646 1 1070 647 1 1070 648 1 900 1071 1 1071 651 1 1071 652 1
		 1071 658 1 841 1072 1 1072 653 1 1072 659 1 1072 655 1 901 1073 1 1073 657 1 1073 658 1
		 1073 659 1 660 1074 1 1074 889 1 1074 682 1 1074 703 1 661 1075 1 1075 888 1 1075 683 1
		 1075 682 1 683 1076 1 1076 684 1 1076 662 1 1076 755 1 663 1077 1 1077 887 1 1077 685 1
		 1077 684 1 664 1078 1 1078 886 1 1078 686 1 1078 685 1 686 1079 1 1079 687 1 1079 665 1
		 1079 737 1 666 1080 1 1080 885 1 1080 688 1 1080 687 1 688 1081 1 1081 689 1 1081 667 1
		 1081 719 1 668 1082 1 1082 884 1 1082 690 1 1082 689 1 669 1083 1 1083 770 1 1083 778 1
		 1083 690 1 670 1084 1 1084 774 1 1084 782 1 1084 778 1 842 1085 1 1085 671 1 1085 782 1
		 1085 783 1 672 1086 1 1086 712 1 1086 704 1 1086 783 1 843 1087 1 1087 673 1 1087 704 1
		 1087 784 1 674 1088 1 1088 730 1 1088 722 1 1088 784 1 844 1089 1 1089 675 1 1089 722 1
		 1089 785 1 845 1090 1 1090 676 1 1090 785 1 1090 786 1 677 1091 1 1091 748 1 1091 740 1
		 1091 786 1 846 1092 1 1092 678 1 1092 740 1 1092 787 1 847 1093 1 1093 679 1 1093 787 1
		 1093 788 1 788 1094 1 1094 766 1 1094 680 1 1094 762 1 766 1095 1 1095 703 1 1095 681 1
		 1095 758 1 694 1096 1 1096 693 1 1096 672 1 1096 721 1 705 1097 1 1097 790 1 1097 713 1
		 1097 712 1 706 1098 1 1098 797 1 1098 714 1 1098 713 1 707 1099 1 1099 804 1 1099 715 1
		 1099 714 1;
	setAttr ".ed[1992:2157]" 708 1100 1 1100 811 1 1100 717 1 1100 716 1 709 1101 1
		 1101 818 1 1101 718 1 1101 717 1 710 1102 1 1102 825 1 1102 719 1 1102 718 1 667 1103 1
		 1103 720 1 1103 711 1 1103 832 1 608 1104 1 1104 600 1 1104 592 1 1104 591 1 635 1105 1
		 1105 626 1 1105 593 1 1105 592 1 696 1106 1 1106 695 1 1106 674 1 1106 739 1 723 1107 1
		 1107 791 1 1107 731 1 1107 730 1 724 1108 1 1108 798 1 1108 732 1 1108 731 1 725 1109 1
		 1109 805 1 1109 733 1 1109 732 1 726 1110 1 1110 812 1 1110 735 1 1110 734 1 727 1111 1
		 1111 819 1 1111 736 1 1111 735 1 728 1112 1 1112 826 1 1112 737 1 1112 736 1 665 1113 1
		 1113 738 1 1113 729 1 1113 833 1 611 1114 1 1114 605 1 1114 595 1 1114 594 1 640 1115 1
		 1115 633 1 1115 596 1 1115 595 1 699 1116 1 1116 698 1 1116 677 1 1116 757 1 741 1117 1
		 1117 793 1 1117 749 1 1117 748 1 742 1118 1 1118 800 1 1118 750 1 1118 749 1 743 1119 1
		 1119 807 1 1119 751 1 1119 750 1 744 1120 1 1120 814 1 1120 753 1 1120 752 1 745 1121 1
		 1121 821 1 1121 754 1 1121 753 1 746 1122 1 1122 828 1 1122 755 1 1122 754 1 662 1123 1
		 1123 756 1 1123 747 1 1123 835 1 619 1124 1 1124 613 1 1124 598 1 1124 597 1 650 1125 1
		 1125 643 1 1125 599 1 1125 598 1 681 1126 1 1126 839 1 1126 702 1 1126 837 1 767 1127 1
		 1127 830 1 1127 758 1 1127 759 1 768 1128 1 1128 823 1 1128 759 1 1128 760 1 769 1129 1
		 1129 816 1 1129 760 1 1129 761 1 680 1130 1 1130 841 1 1130 701 1 1130 702 1 795 1131 1
		 1131 767 1 1131 762 1 1131 763 1 802 1132 1 1132 768 1 1132 763 1 1132 764 1 809 1133 1
		 1133 769 1 1133 764 1 1133 765 1 691 1134 1 1134 831 1 1134 669 1 1134 838 1 779 1135 1
		 1135 824 1 1135 771 1 1135 770 1 780 1136 1 1136 817 1 1136 772 1 1136 771 1 781 1137 1
		 1137 810 1 1137 773 1 1137 772 1 692 1138 1 1138 691 1 1138 670 1 1138 840 1 789 1139 1
		 1139 779 1 1139 775 1 1139 774 1 796 1140 1 1140 780 1 1140 776 1 1140 775 1 803 1141 1
		 1141 781 1;
	setAttr ".ed[2158:2323]" 1141 777 1 1141 776 1 671 1142 1 1142 896 1 1142 692 1
		 1142 693 1 673 1143 1 1143 897 1 1143 694 1 1143 695 1 675 1144 1 1144 898 1 1144 696 1
		 1144 697 1 676 1145 1 1145 899 1 1145 697 1 1145 698 1 678 1146 1 1146 900 1 1146 699 1
		 1146 700 1 679 1147 1 1147 901 1 1147 700 1 1147 701 1 848 1148 1 1148 842 1 1148 789 1
		 1148 790 1 849 1149 1 1149 843 1 1149 705 1 1149 791 1 850 1150 1 1150 844 1 1150 723 1
		 1150 792 1 851 1151 1 1151 845 1 1151 792 1 1151 793 1 852 1152 1 1152 846 1 1152 741 1
		 1152 794 1 853 1153 1 1153 847 1 1153 794 1 1153 795 1 854 1154 1 1154 848 1 1154 796 1
		 1154 797 1 855 1155 1 1155 849 1 1155 706 1 1155 798 1 856 1156 1 1156 850 1 1156 724 1
		 1156 799 1 857 1157 1 1157 851 1 1157 799 1 1157 800 1 858 1158 1 1158 852 1 1158 742 1
		 1158 801 1 859 1159 1 1159 853 1 1159 801 1 1159 802 1 860 1160 1 1160 854 1 1160 803 1
		 1160 804 1 861 1161 1 1161 855 1 1161 707 1 1161 805 1 862 1162 1 1162 856 1 1162 725 1
		 1162 806 1 863 1163 1 1163 857 1 1163 806 1 1163 807 1 864 1164 1 1164 858 1 1164 743 1
		 1164 808 1 865 1165 1 1165 859 1 1165 808 1 1165 809 1 872 1166 1 1166 866 1 1166 810 1
		 1166 811 1 873 1167 1 1167 867 1 1167 708 1 1167 812 1 874 1168 1 1168 868 1 1168 726 1
		 1168 813 1 875 1169 1 1169 869 1 1169 813 1 1169 814 1 876 1170 1 1170 870 1 1170 744 1
		 1170 815 1 877 1171 1 1171 871 1 1171 815 1 1171 816 1 878 1172 1 1172 872 1 1172 817 1
		 1172 818 1 879 1173 1 1173 873 1 1173 709 1 1173 819 1 880 1174 1 1174 874 1 1174 727 1
		 1174 820 1 881 1175 1 1175 875 1 1175 820 1 1175 821 1 882 1176 1 1176 876 1 1176 745 1
		 1176 822 1 883 1177 1 1177 877 1 1177 822 1 1177 823 1 884 1178 1 1178 878 1 1178 824 1
		 1178 825 1 885 1179 1 1179 879 1 1179 710 1 1179 826 1 886 1180 1 1180 880 1 1180 728 1
		 1180 827 1 887 1181 1 1181 881 1 1181 827 1 1181 828 1 888 1182 1 1182 882 1 1182 746 1
		 1182 829 1;
	setAttr ".ed[2324:2399]" 889 1183 1 1183 883 1 1183 829 1 1183 830 1 890 1184 1
		 1184 668 1 1184 831 1 1184 832 1 891 1185 1 1185 666 1 1185 711 1 1185 833 1 892 1186 1
		 1186 664 1 1186 729 1 1186 834 1 893 1187 1 1187 663 1 1187 834 1 1187 835 1 894 1188 1
		 1188 661 1 1188 747 1 1188 836 1 895 1189 1 1189 660 1 1189 836 1 1189 837 1 627 1190 1
		 1190 601 1 1190 603 1 1190 600 1 634 1191 1 1191 606 1 1191 608 1 1191 605 1 639 1192 1
		 1192 610 1 1192 611 1 1192 616 1 644 1193 1 1193 614 1 1193 616 1 1193 613 1 649 1194 1
		 1194 618 1 1194 619 1 1194 624 1 654 1195 1 1195 622 1 1195 624 1 1195 621 1 630 1196 1
		 1196 627 1 1196 628 1 1196 626 1 636 1197 1 1197 634 1 1197 635 1 1197 633 1 641 1198 1
		 1198 639 1 1198 640 1 1198 645 1 646 1199 1 1199 644 1 1199 645 1 1199 643 1 651 1200 1
		 1200 649 1 1200 650 1 1200 656 1 657 1201 1 1201 654 1 1201 656 1 1201 653 1;
	setAttr -s 1200 -ch 4800 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 244 2396 2399 -249
		mu 0 4 170 768 1363 764
		f 4 250 2392 2395 -246
		mu 0 4 171 762 1362 767
		f 4 255 2388 2391 -259
		mu 0 4 174 757 1361 754
		f 4 260 2384 2387 -257
		mu 0 4 175 752 1360 756
		f 4 265 2380 2383 -269
		mu 0 4 177 747 1359 744
		f 4 271 2376 2379 -276
		mu 0 4 179 741 1358 737
		f 4 247 2372 2375 -281
		mu 0 4 172 765 1357 732
		f 4 252 2368 2371 -278
		mu 0 4 8 760 1356 735
		f 4 257 2364 2367 -289
		mu 0 4 9 755 1355 724
		f 4 262 2360 2363 -286
		mu 0 4 10 750 1354 727
		f 4 267 2356 2359 -297
		mu 0 4 11 745 1353 716
		f 4 274 2352 2355 -302
		mu 0 4 12 738 1352 711
		f 4 6 2348 2351 -65
		mu 0 4 14 1051 1351 981
		f 4 7 2344 2347 -66
		mu 0 4 15 1050 1350 979
		f 4 8 2340 2343 -67
		mu 0 4 16 1049 1349 978
		f 4 9 2336 2339 -68
		mu 0 4 17 1048 1348 977
		f 4 10 2332 2335 -69
		mu 0 4 18 1047 1347 976
		f 4 11 2328 2331 -70
		mu 0 4 19 1046 1346 975
		f 4 12 2324 2327 -72
		mu 0 4 21 1045 1345 972
		f 4 13 2320 2323 -73
		mu 0 4 22 1044 1344 970
		f 4 14 2316 2319 -74
		mu 0 4 23 1043 1343 969
		f 4 15 2312 2315 -75
		mu 0 4 24 1042 1342 968
		f 4 16 2308 2311 -76
		mu 0 4 25 1041 1341 967
		f 4 17 2304 2307 -77
		mu 0 4 26 1040 1340 966
		f 4 18 2300 2303 -79
		mu 0 4 28 1039 1339 963
		f 4 19 2296 2299 -80
		mu 0 4 29 1038 1338 961
		f 4 20 2292 2295 -81
		mu 0 4 30 1037 1337 960
		f 4 21 2288 2291 -82
		mu 0 4 31 1036 1336 959
		f 4 22 2284 2287 -83
		mu 0 4 32 1035 1335 958
		f 4 23 2280 2283 -84
		mu 0 4 33 1034 1334 957
		f 4 24 2276 2279 -86
		mu 0 4 35 1033 1333 954
		f 4 25 2272 2275 -87
		mu 0 4 36 1032 1332 952
		f 4 26 2268 2271 -88
		mu 0 4 37 1031 1331 951
		f 4 27 2264 2267 -89
		mu 0 4 38 1030 1330 950
		f 4 28 2260 2263 -90
		mu 0 4 39 1029 1329 949
		f 4 29 2256 2259 -91
		mu 0 4 40 1028 1328 948
		f 4 36 2252 2255 -93
		mu 0 4 49 1014 1327 945
		f 4 37 2248 2251 -94
		mu 0 4 50 1012 1326 943
		f 4 38 2244 2247 -95
		mu 0 4 51 1010 1325 942
		f 4 39 2240 2243 -96
		mu 0 4 52 1008 1324 941
		f 4 40 2236 2239 -97
		mu 0 4 53 1006 1323 940
		f 4 41 2232 2235 -98
		mu 0 4 54 1004 1322 939
		f 4 42 2228 2231 -100
		mu 0 4 56 1003 1321 936
		f 4 43 2224 2227 -101
		mu 0 4 57 1002 1320 934
		f 4 44 2220 2223 -102
		mu 0 4 58 1001 1319 933
		f 4 45 2216 2219 -103
		mu 0 4 59 1000 1318 932
		f 4 46 2212 2215 -104
		mu 0 4 60 999 1317 931
		f 4 47 2208 2211 -105
		mu 0 4 61 998 1316 930
		f 4 48 2204 2207 -107
		mu 0 4 63 997 1315 927
		f 4 49 2200 2203 -108
		mu 0 4 64 996 1314 925
		f 4 50 2196 2199 -109
		mu 0 4 65 995 1313 924
		f 4 51 2192 2195 -110
		mu 0 4 66 994 1312 923
		f 4 52 2188 2191 -111
		mu 0 4 67 993 1311 922
		f 4 53 2184 2187 -112
		mu 0 4 68 992 1310 921
		f 4 222 2180 2183 -201
		mu 0 4 148 790 1309 815
		f 4 223 2176 2179 -202
		mu 0 4 149 789 1308 813
		f 4 225 2172 2175 -204
		mu 0 4 151 787 1307 811
		f 4 226 2168 2171 -205
		mu 0 4 152 786 1306 810
		f 4 228 2164 2167 -207
		mu 0 4 154 784 1305 808
		f 4 230 2160 2163 -209
		mu 0 4 156 782 1304 806
		f 4 -1102 2156 2159 -126
		mu 0 4 85 938 1303 903
		f 4 -1095 2152 2155 -127
		mu 0 4 86 929 1302 902
		f 4 -1088 2148 2151 -128
		mu 0 4 87 920 1301 901
		f 4 -991 2144 2147 -62
		mu 0 4 6 805 1300 984
		f 4 -1080 2140 2143 -130
		mu 0 4 89 909 1299 898
		f 4 -1079 2136 2139 -131
		mu 0 4 90 908 1298 897
		f 4 -1078 2132 2135 -132
		mu 0 4 91 907 1297 896
		f 4 -990 2128 2131 -64
		mu 0 4 13 803 1296 982
		f 4 92 2124 2127 -137
		mu 0 4 96 944 1295 891
		f 4 99 2120 2123 -138
		mu 0 4 97 935 1294 889
		f 4 106 2116 2119 -139
		mu 0 4 98 926 1293 888
		f 4 221 2112 2115 -200
		mu 0 4 146 791 1292 816
		f 4 132 2108 2111 -141
		mu 0 4 100 895 1291 886
		f 4 133 2104 2107 -142
		mu 0 4 101 894 1290 884
		f 4 134 2100 2103 -143
		mu 0 4 102 893 1289 883
		f 4 220 2096 2099 1135
		mu 0 4 144 792 1288 980
		f 4 -949 2092 2095 -304
		mu 0 4 110 761 1287 709
		f 4 -918 2088 2091 -305
		mu 0 4 184 730 1286 708
		f 4 239 2084 2087 1133
		mu 0 4 167 773 1285 978
		f 4 -1045 2080 2083 -148
		mu 0 4 113 867 1284 877
		f 4 -1044 2076 2079 -149
		mu 0 4 114 866 1283 876
		f 4 -1043 2072 2075 -150
		mu 0 4 115 865 1282 875
		f 4 -1042 2068 2071 -152
		mu 0 4 117 864 1281 871
		f 4 -1041 2064 2067 -153
		mu 0 4 118 863 1280 870
		f 4 -1040 2060 2063 -154
		mu 0 4 119 862 1279 869
		f 4 -998 2056 2059 -145
		mu 0 4 109 812 1278 881
		f 4 -939 2052 2055 -307
		mu 0 4 122 751 1277 706
		f 4 -910 2048 2051 -308
		mu 0 4 187 722 1276 705
		f 4 236 2044 2047 1131
		mu 0 4 164 776 1275 976
		f 4 -1027 2040 2043 -166
		mu 0 4 125 846 1274 856
		f 4 -1026 2036 2039 -167
		mu 0 4 126 845 1273 855
		f 4 -1025 2032 2035 -168
		mu 0 4 127 844 1272 854
		f 4 -1024 2028 2031 -170
		mu 0 4 129 843 1271 850
		f 4 -1023 2024 2027 -171
		mu 0 4 130 842 1270 849
		f 4 -1022 2020 2023 -172
		mu 0 4 131 841 1269 848
		f 4 -995 2016 2019 -163
		mu 0 4 121 809 1268 860
		f 4 -934 2012 2015 -310
		mu 0 4 134 746 1267 703
		f 4 -907 2008 2011 -311
		mu 0 4 188 719 1266 702
		f 4 234 2004 2007 1130
		mu 0 4 162 778 1265 975
		f 4 -1009 2000 2003 -184
		mu 0 4 137 825 1264 835
		f 4 -1008 1996 1999 -185
		mu 0 4 138 824 1263 834
		f 4 -1007 1992 1995 -186
		mu 0 4 139 823 1262 833
		f 4 -1006 1988 1991 -188
		mu 0 4 141 822 1261 829
		f 4 -1005 1984 1987 -189
		mu 0 4 142 821 1260 828
		f 4 -1004 1980 1983 -190
		mu 0 4 143 820 1259 827
		f 4 -993 1976 1979 -181
		mu 0 4 133 807 1258 839
		f 4 135 1972 1975 -144
		mu 0 4 103 892 1257 882
		f 4 113 1968 1971 -140
		mu 0 4 99 917 1256 887
		f 4 54 1964 1967 -114
		mu 0 4 70 991 1255 918
		f 4 55 1960 1963 -115
		mu 0 4 71 990 1254 916
		f 4 -976 1956 1959 1084
		mu 0 4 151 788 1253 915
		f 4 56 1952 1955 -116
		mu 0 4 72 989 1252 915
		f 4 57 1948 1951 -117
		mu 0 4 73 988 1251 914
		f 4 -973 1944 1947 1082
		mu 0 4 154 785 1250 913
		f 4 58 1940 1943 -118
		mu 0 4 74 987 1249 913
		f 4 -971 1936 1939 1081
		mu 0 4 156 783 1248 912
		f 4 59 1932 1935 -119
		mu 0 4 75 986 1247 912
		f 4 -969 1928 1931 1076
		mu 0 4 159 781 1246 906
		f 4 -968 1924 1927 -212
		mu 0 4 161 780 1245 802
		f 4 -967 1920 1923 -213
		mu 0 4 162 779 1244 800
		f 4 -987 1916 1919 -183
		mu 0 4 136 799 1243 836
		f 4 -965 1912 1915 -215
		mu 0 4 164 777 1242 798
		f 4 -985 1908 1911 -165
		mu 0 4 124 797 1241 857
		f 4 -963 1904 1907 -217
		mu 0 4 166 775 1240 796
		f 4 -962 1900 1903 -218
		mu 0 4 167 774 1239 795
		f 4 -982 1896 1899 -147
		mu 0 4 112 794 1238 878
		f 4 -960 1892 1895 -220
		mu 0 4 169 772 1237 793
		f 4 -959 1888 1891 -199
		mu 0 4 145 771 1236 818
		f 4 0 1884 1887 -243
		mu 0 4 0 1062 1235 770
		f 4 -1140 1880 1883 -247
		mu 0 4 7 985 1234 766
		f 4 1 1876 1879 -244
		mu 0 4 1 1060 1233 769
		f 4 2 1872 1875 -254
		mu 0 4 2 1058 1232 759
		f 4 3 1868 1871 -255
		mu 0 4 3 1056 1231 758
		f 4 4 1864 1867 -264
		mu 0 4 4 1054 1230 749
		f 4 5 1860 1863 -270
		mu 0 4 5 1052 1229 743
		f 4 61 1856 1859 -271
		mu 0 4 6 984 1228 742
		f 4 -1194 1852 1855 -277
		mu 0 4 15 1051 1227 736
		f 4 -1138 1848 1851 -279
		mu 0 4 14 983 1226 734
		f 4 -1193 1844 1847 -282
		mu 0 4 111 1050 1225 731
		f 4 -1192 1840 1843 -285
		mu 0 4 17 1049 1224 728
		f 4 -1191 1836 1839 -290
		mu 0 4 123 1048 1223 723
		f 4 -1190 1832 1835 -293
		mu 0 4 135 1047 1222 720
		f 4 63 1828 1831 -273
		mu 0 4 13 982 1221 740
		f 4 -1189 1824 1827 -298
		mu 0 4 20 1046 1220 715
		f 4 144 1820 1823 -250
		mu 0 4 108 880 1219 763
		f 4 -1055 1816 1819 -287
		mu 0 4 16 879 1218 726
		f 4 162 1812 1815 -260
		mu 0 4 120 859 1217 753
		f 4 -1037 1808 1811 -295
		mu 0 4 18 858 1216 718
		f 4 180 1804 1807 -265
		mu 0 4 132 838 1215 748
		f 4 -1019 1800 1803 -300
		mu 0 4 19 837 1214 713
		f 4 314 1796 1799 -312
		mu 0 4 192 698 1213 701
		f 4 312 1792 1795 -316
		mu 0 4 193 700 1212 697
		f 4 321 1788 1791 -319
		mu 0 4 198 691 1211 694
		f 4 319 1784 1787 -323
		mu 0 4 199 693 1210 690
		f 4 328 1780 1783 -326
		mu 0 4 204 684 1209 687
		f 4 332 1776 1779 -330
		mu 0 4 208 680 1208 683
		f 4 335 1772 1775 -314
		mu 0 4 195 677 1207 699
		f 4 333 1768 1771 -318
		mu 0 4 194 679 1206 695
		f 4 340 1764 1767 -321
		mu 0 4 201 672 1205 692
		f 4 338 1760 1763 -325
		mu 0 4 200 674 1204 688
		f 4 345 1756 1759 -328
		mu 0 4 207 667 1203 685
		f 4 348 1752 1755 -332
		mu 0 4 211 664 1202 681
		f 4 352 1748 1751 -350
		mu 0 4 222 659 1201 663
		f 4 350 1744 1747 -354
		mu 0 4 223 662 1200 658
		f 4 359 1740 1743 -357
		mu 0 4 228 652 1199 655
		f 4 357 1736 1739 -361
		mu 0 4 229 654 1198 651
		f 4 366 1732 1735 -364
		mu 0 4 234 645 1197 648
		f 4 370 1728 1731 -368
		mu 0 4 238 640 1196 644
		f 4 374 1724 1727 -372
		mu 0 4 242 635 1195 639
		f 4 372 1720 1723 -376
		mu 0 4 243 638 1194 634
		f 4 381 1716 1719 -379
		mu 0 4 248 628 1193 631
		f 4 379 1712 1715 -383
		mu 0 4 249 630 1192 627
		f 4 388 1708 1711 -386
		mu 0 4 254 621 1191 624
		f 4 392 1704 1707 -390
		mu 0 4 258 616 1190 620
		f 4 395 1700 1703 -374
		mu 0 4 245 612 1189 637
		f 4 393 1696 1699 -378
		mu 0 4 244 615 1188 632
		f 4 400 1692 1695 -381
		mu 0 4 251 607 1187 629
		f 4 398 1688 1691 -385
		mu 0 4 250 609 1186 625
		f 4 405 1684 1687 -388
		mu 0 4 257 602 1185 622
		f 4 408 1680 1683 -392
		mu 0 4 261 598 1184 617
		f 4 410 1676 1679 -395
		mu 0 4 263 595 1183 614
		f 4 409 1672 1675 -398
		mu 0 4 262 597 1182 610
		f 4 413 1668 1671 -400
		mu 0 4 266 592 1181 608
		f 4 412 1664 1667 -403
		mu 0 4 265 593 1180 605
		f 4 416 1660 1663 -405
		mu 0 4 269 589 1179 603
		f 4 418 1656 1659 -408
		mu 0 4 271 586 1178 599
		f 4 421 1652 1655 -37
		mu 0 4 282 582 1177 1015
		f 4 419 1648 1651 -38
		mu 0 4 283 585 1176 1013
		f 4 426 1644 1647 -39
		mu 0 4 288 577 1175 1011
		f 4 424 1640 1643 -40
		mu 0 4 289 579 1174 1009
		f 4 431 1636 1639 -41
		mu 0 4 294 572 1173 1007
		f 4 434 1632 1635 -42
		mu 0 4 298 568 1172 1005
		f 4 437 1628 1631 -421
		mu 0 4 285 564 1171 584
		f 4 435 1624 1627 -424
		mu 0 4 284 567 1170 580
		f 4 442 1620 1623 -426
		mu 0 4 291 559 1169 578
		f 4 440 1616 1619 -429
		mu 0 4 290 561 1168 575
		f 4 447 1612 1615 -431
		mu 0 4 297 554 1167 573
		f 4 450 1608 1611 -434
		mu 0 4 301 550 1166 569
		f 4 453 1604 1607 -437
		mu 0 4 303 546 1165 566
		f 4 451 1600 1603 -440
		mu 0 4 302 549 1164 562
		f 4 458 1596 1599 -442
		mu 0 4 306 541 1163 560
		f 4 456 1592 1595 -445
		mu 0 4 305 543 1162 557
		f 4 463 1588 1591 -447
		mu 0 4 309 536 1161 555
		f 4 466 1584 1587 -450
		mu 0 4 311 532 1160 551
		f 4 470 1580 1583 -468
		mu 0 4 322 526 1159 531
		f 4 468 1576 1579 -472
		mu 0 4 323 530 1158 525
		f 4 477 1572 1575 -475
		mu 0 4 328 517 1157 521
		f 4 475 1568 1571 -479
		mu 0 4 329 520 1156 516
		f 4 484 1564 1567 -482
		mu 0 4 334 508 1155 512
		f 4 488 1560 1563 -486
		mu 0 4 338 502 1154 507
		f 4 490 1556 1559 767
		mu 0 4 342 500 1153 570
		f 4 492 1552 1555 751
		mu 0 4 346 498 1152 552
		f 4 494 1548 1551 735
		mu 0 4 348 496 1151 534
		f 4 497 1544 1547 713
		mu 0 4 350 493 1150 505
		f 4 498 1540 1543 710
		mu 0 4 345 492 1149 501
		f 4 499 1536 1539 708
		mu 0 4 347 491 1148 499
		f 4 500 1532 1535 706
		mu 0 4 349 490 1147 497
		f 4 502 1528 1531 703
		mu 0 4 353 488 1146 494
		f 4 136 1524 1527 -422
		mu 0 4 359 890 1145 583
		f 4 503 1520 1523 -438
		mu 0 4 360 487 1144 565
		f 4 505 1516 1519 -454
		mu 0 4 363 485 1143 547
		f 4 511 1512 1515 -510
		mu 0 4 367 479 1142 481
		f 4 140 1508 1511 -505
		mu 0 4 362 885 1141 486
		f 4 512 1504 1507 -507
		mu 0 4 361 478 1140 484
		f 4 513 1500 1503 -509
		mu 0 4 364 477 1139 482
		f 4 -848 1496 1499 -516
		mu 0 4 375 660 1138 475
		f 4 518 1492 1495 883
		mu 0 4 197 472 1137 696
		f 4 519 1488 1491 863
		mu 0 4 214 471 1136 676
		f 4 -841 1484 1487 -521
		mu 0 4 231 652 1135 470
		f 4 523 1480 1483 823
		mu 0 4 247 467 1134 633
		f 4 524 1476 1479 803
		mu 0 4 264 466 1133 611
		f 4 149 1472 1475 788
		mu 0 4 274 874 1132 594
		f 4 525 1468 1471 777
		mu 0 4 287 465 1131 581
		f 4 526 1464 1467 761
		mu 0 4 304 464 1130 563
		f 4 527 1460 1463 745
		mu 0 4 314 463 1129 545
		f 4 529 1456 1459 727
		mu 0 4 327 460 1128 524
		f 4 531 1452 1455 876
		mu 0 4 203 458 1127 689
		f 4 532 1448 1451 858
		mu 0 4 217 457 1126 671
		f 4 -834 1444 1447 -534
		mu 0 4 237 645 1125 456
		f 4 536 1440 1443 816
		mu 0 4 253 453 1124 626
		f 4 537 1436 1439 798
		mu 0 4 267 452 1123 606
		f 4 167 1432 1435 785
		mu 0 4 277 853 1122 591
		f 4 538 1428 1431 772
		mu 0 4 293 451 1121 576
		f 4 539 1424 1427 756
		mu 0 4 307 450 1120 558
		f 4 540 1420 1423 740
		mu 0 4 317 449 1119 540
		f 4 542 1416 1419 720
		mu 0 4 333 446 1118 515
		f 4 544 1412 1415 873
		mu 0 4 206 444 1117 686
		f 4 545 1408 1411 856
		mu 0 4 218 443 1116 669
		f 4 -830 1404 1407 -547
		mu 0 4 241 640 1115 442
		f 4 549 1400 1403 813
		mu 0 4 256 439 1114 623
		f 4 550 1396 1399 796
		mu 0 4 268 438 1113 604
		f 4 185 1392 1395 784
		mu 0 4 278 832 1112 590
		f 4 551 1388 1391 770
		mu 0 4 296 437 1111 574
		f 4 552 1384 1387 754
		mu 0 4 308 436 1110 556
		f 4 553 1380 1383 738
		mu 0 4 318 435 1109 538
		f 4 555 1376 1379 717
		mu 0 4 336 432 1108 511
		f 4 514 1372 1375 -557
		mu 0 4 366 476 1107 431
		f 4 507 1368 1371 -559
		mu 0 4 365 483 1106 428
		f 4 558 1364 1367 -453
		mu 0 4 313 427 1105 548
		f 4 559 1360 1363 -456
		mu 0 4 312 426 1104 544
		f 4 -639 1356 1359 671
		mu 0 4 328 424 1103 462
		f 4 561 1352 1355 -458
		mu 0 4 316 424 1102 542
		f 4 562 1348 1351 -461
		mu 0 4 315 423 1101 539
		f 4 -636 1344 1347 658
		mu 0 4 334 421 1100 448
		f 4 564 1340 1343 -463
		mu 0 4 319 421 1099 537
		f 4 -634 1336 1339 645
		mu 0 4 338 419 1098 434
		f 4 566 1332 1335 -466
		mu 0 4 321 419 1097 533
		f 4 -632 1328 1331 704
		mu 0 4 352 416 1096 495
		f 4 569 1324 1327 698
		mu 0 4 358 414 1095 489
		f 4 570 1320 1323 830
		mu 0 4 241 413 1094 641
		f 4 548 1316 1319 628
		mu 0 4 255 440 1093 412
		f 4 572 1312 1315 834
		mu 0 4 237 411 1092 646
		f 4 535 1308 1311 626
		mu 0 4 252 454 1091 410
		f 4 574 1304 1307 837
		mu 0 4 230 409 1090 649
		f 4 575 1300 1303 841
		mu 0 4 231 408 1089 653
		f 4 522 1296 1299 623
		mu 0 4 246 468 1088 407
		f 4 577 1292 1295 844
		mu 0 4 224 406 1087 656
		f 4 557 1288 1291 848
		mu 0 4 225 429 1086 661
		f 4 579 1284 1287 -470
		mu 0 4 369 404 1085 529
		f 4 580 1280 1283 689
		mu 0 4 370 403 1084 480
		f 4 578 1276 1279 -474
		mu 0 4 376 405 1083 523
		f 4 583 1272 1275 -477
		mu 0 4 378 400 1082 519
		f 4 582 1268 1271 -481
		mu 0 4 379 401 1081 514
		f 4 586 1264 1267 -484
		mu 0 4 381 397 1080 510
		f 4 588 1260 1263 -488
		mu 0 4 383 395 1079 504
		f 4 587 1256 1259 -498
		mu 0 4 350 396 1078 493
		f 4 591 1252 1255 850
		mu 0 4 223 392 1077 663
		f 4 590 1248 1251 683
		mu 0 4 222 393 1076 474
		f 4 592 1244 1247 846
		mu 0 4 226 391 1075 658
		f 4 594 1240 1243 843
		mu 0 4 229 389 1074 655
		f 4 595 1236 1239 839
		mu 0 4 232 388 1073 651
		f 4 597 1232 1235 836
		mu 0 4 235 386 1072 648
		f 4 589 1228 1231 -503
		mu 0 4 353 394 1071 488
		f 4 598 1224 1227 832
		mu 0 4 239 385 1070 644
		f 4 581 1220 1223 -530
		mu 0 4 377 402 1069 461
		f 4 593 1216 1219 678
		mu 0 4 228 390 1068 469
		f 4 584 1212 1215 -543
		mu 0 4 380 399 1067 447
		f 4 596 1208 1211 665
		mu 0 4 234 387 1066 455
		f 4 585 1204 1207 -556
		mu 0 4 382 398 1065 433
		f 4 599 1200 1203 652
		mu 0 4 238 384 1064 441
		f 4 -1202 1202 -546 -603
		mu 0 4 386 1064 443 218
		f 4 -1203 -1201 600 -655
		mu 0 4 443 1064 384 221
		f 4 -1204 1201 -598 547
		mu 0 4 441 1064 386 235
		f 4 -1206 1206 656 -612
		mu 0 4 395 1065 445 208
		f 4 -1207 -1205 614 543
		mu 0 4 445 1065 398 205
		f 4 -1208 1205 -589 -645
		mu 0 4 433 1065 395 383
		f 4 -1210 1210 -533 -605
		mu 0 4 388 1066 457 217
		f 4 -1211 -1209 603 -668
		mu 0 4 457 1066 387 219
		f 4 -1212 1209 -596 534
		mu 0 4 455 1066 388 232
		f 4 -1214 1214 669 -614
		mu 0 4 397 1067 459 204
		f 4 -1215 -1213 615 530
		mu 0 4 459 1067 399 202
		f 4 -1216 1213 -587 -658
		mu 0 4 447 1067 397 381
		f 4 -1218 1218 -520 -608
		mu 0 4 391 1068 471 214
		f 4 -1219 -1217 606 -681
		mu 0 4 471 1068 390 216
		f 4 -1220 1217 -593 521
		mu 0 4 469 1068 391 226
		f 4 -1222 1222 682 -617
		mu 0 4 400 1069 473 198
		f 4 -1223 -1221 618 517
		mu 0 4 473 1069 402 196
		f 4 -1224 1221 -584 -671
		mu 0 4 461 1069 400 378
		f 4 -1226 1226 -348 -601
		mu 0 4 384 1070 665 221
		f 4 -1227 -1225 601 -853
		mu 0 4 665 1070 385 220
		f 4 -1228 1225 -600 367
		mu 0 4 644 1070 384 238
		f 4 -1230 1230 853 -602
		mu 0 4 385 1071 666 220
		f 4 -1231 -1229 610 346
		mu 0 4 666 1071 394 210
		f 4 -1232 1229 -599 -698
		mu 0 4 488 1071 385 239
		f 4 -1234 1234 -345 -604
		mu 0 4 387 1072 668 219
		f 4 -1235 -1233 602 -856
		mu 0 4 668 1072 386 218
		f 4 -1236 1233 -597 363
		mu 0 4 648 1072 387 234
		f 4 -1238 1238 -343 -606
		mu 0 4 389 1073 670 215
		f 4 -1239 -1237 604 -858
		mu 0 4 670 1073 388 217
		f 4 -1240 1237 -595 360
		mu 0 4 651 1073 389 229
		f 4 -1242 1242 -340 -607
		mu 0 4 390 1074 673 216
		f 4 -1243 -1241 605 -861
		mu 0 4 673 1074 389 215
		f 4 -1244 1241 -594 356
		mu 0 4 655 1074 390 228
		f 4 -1246 1246 -338 -609
		mu 0 4 392 1075 675 212
		f 4 -1247 -1245 607 -863
		mu 0 4 675 1075 391 214
		f 4 -1248 1245 -592 353
		mu 0 4 658 1075 392 223
		f 4 -1250 1250 -336 -620
		mu 0 4 403 1076 677 195
		f 4 -1251 -1249 609 -865
		mu 0 4 677 1076 393 213
		f 4 -1252 1249 -581 516
		mu 0 4 474 1076 403 370
		f 4 -1254 1254 -335 -610
		mu 0 4 393 1077 678 213
		f 4 -1255 -1253 608 -866
		mu 0 4 678 1077 392 212
		f 4 -1256 1253 -591 349
		mu 0 4 663 1077 393 222
		f 4 -1258 1258 869 -611
		mu 0 4 394 1078 682 210
		f 4 -1259 -1257 612 330
		mu 0 4 682 1078 396 209
		f 4 -1260 1257 -590 -703
		mu 0 4 493 1078 394 353
		f 4 -1262 1262 870 -613
		mu 0 4 396 1079 683 209
		f 4 -1263 -1261 611 329
		mu 0 4 683 1079 395 208
		f 4 -1264 1261 -588 -713
		mu 0 4 504 1079 396 350
		f 4 -1266 1266 874 -615
		mu 0 4 398 1080 687 205
		f 4 -1267 -1265 613 325
		mu 0 4 687 1080 397 204
		f 4 -1268 1265 -586 -717
		mu 0 4 510 1080 398 382
		f 4 -1270 1270 877 -616
		mu 0 4 399 1081 690 202
		f 4 -1271 -1269 617 322
		mu 0 4 690 1081 401 199
		f 4 -1272 1269 -585 -720
		mu 0 4 514 1081 399 380
		f 4 -1274 1274 881 -618
		mu 0 4 401 1082 694 199
		f 4 -1275 -1273 616 318
		mu 0 4 694 1082 400 198
		f 4 -1276 1273 -583 -724
		mu 0 4 519 1082 401 379
		f 4 -1278 1278 884 -619
		mu 0 4 402 1083 697 196
		f 4 -1279 -1277 621 315
		mu 0 4 697 1083 405 193
		f 4 -1280 1277 -582 -727
		mu 0 4 523 1083 402 377
		f 4 -1282 1282 -315 -621
		mu 0 4 404 1084 698 192
		f 4 -1283 -1281 619 -886
		mu 0 4 698 1084 403 195
		f 4 -1284 1281 -580 510
		mu 0 4 480 1084 404 369
		f 4 -1286 1286 888 -622
		mu 0 4 405 1085 701 193
		f 4 -1287 -1285 620 311
		mu 0 4 701 1085 404 192
		f 4 -1288 1285 -579 -731
		mu 0 4 529 1085 405 376
		f 4 -1290 1290 828 -623
		mu 0 4 406 1086 639 243
		f 4 -1291 -1289 642 371
		mu 0 4 639 1086 429 242
		f 4 -1292 1289 -578 351
		mu 0 4 661 1086 406 224
		f 4 -1294 1294 824 -624
		mu 0 4 407 1087 634 246
		f 4 -1295 -1293 622 375
		mu 0 4 634 1087 406 243
		f 4 -1296 1293 -577 355
		mu 0 4 656 1087 407 227
		f 4 -1298 1298 -576 520
		mu 0 4 470 1088 408 231
		f 4 -1299 -1297 677 -625
		mu 0 4 408 1088 468 248
		f 4 -1300 1297 679 576
		mu 0 4 407 1088 470 227
		f 4 -1302 1302 821 -626
		mu 0 4 409 1089 631 249
		f 4 -1303 -1301 624 378
		mu 0 4 631 1089 408 248
		f 4 -1304 1301 -575 358
		mu 0 4 653 1089 409 230
		f 4 -1306 1306 817 -627
		mu 0 4 410 1090 627 252
		f 4 -1307 -1305 625 382
		mu 0 4 627 1090 409 249
		f 4 -1308 1305 -574 362
		mu 0 4 649 1090 410 233
		f 4 -1310 1310 -573 533
		mu 0 4 456 1091 411 237
		f 4 -1311 -1309 664 -628
		mu 0 4 411 1091 454 254
		f 4 -1312 1309 666 573
		mu 0 4 410 1091 456 233
		f 4 -1314 1314 814 -629
		mu 0 4 412 1092 624 255
		f 4 -1315 -1313 627 385
		mu 0 4 624 1092 411 254
		f 4 -1316 1313 -572 365
		mu 0 4 646 1092 412 236
		f 4 -1318 1318 -571 546
		mu 0 4 442 1093 413 241
		f 4 -1319 -1317 651 -630
		mu 0 4 413 1093 440 258
		f 4 -1320 1317 653 571
		mu 0 4 412 1093 442 236
		f 4 -1322 1322 810 -631
		mu 0 4 415 1094 620 259
		f 4 -1323 -1321 629 389
		mu 0 4 620 1094 413 258
		f 4 -1324 1321 -570 369
		mu 0 4 641 1094 415 240
		f 4 -1326 1326 -501 568
		mu 0 4 416 1095 490 349
		f 4 -1327 -1325 630 -700
		mu 0 4 490 1095 414 357
		f 4 -1328 1325 631 501
		mu 0 4 489 1095 416 352
		f 4 -1330 1330 -495 567
		mu 0 4 417 1096 496 348
		f 4 -1331 -1329 -569 -706
		mu 0 4 496 1096 416 349
		f 4 -1332 1329 632 495
		mu 0 4 495 1096 417 351
		f 4 -1334 1334 714 -633
		mu 0 4 418 1097 507 339
		f 4 -1335 -1333 633 485
		mu 0 4 507 1097 419 338
		f 4 -1336 1333 -568 -735
		mu 0 4 533 1097 418 320
		f 4 -1338 1338 -554 565
		mu 0 4 420 1098 435 318
		f 4 -1339 -1337 -567 -647
		mu 0 4 435 1098 419 321
		f 4 -1340 1337 634 554
		mu 0 4 434 1098 420 335
		f 4 -1342 1342 718 -635
		mu 0 4 420 1099 512 335
		f 4 -1343 -1341 635 481
		mu 0 4 512 1099 421 334
		f 4 -1344 1341 -566 -738
		mu 0 4 537 1099 420 318
		f 4 -1346 1346 -541 563
		mu 0 4 422 1100 449 317
		f 4 -1347 -1345 -565 -660
		mu 0 4 449 1100 421 319
		f 4 -1348 1345 636 541
		mu 0 4 448 1100 422 332
		f 4 -1350 1350 721 -637
		mu 0 4 422 1101 516 332
		f 4 -1351 -1349 637 478
		mu 0 4 516 1101 423 329
		f 4 -1352 1349 -564 -740
		mu 0 4 539 1101 422 317
		f 4 -1354 1354 725 -638
		mu 0 4 423 1102 521 329
		f 4 -1355 -1353 638 474
		mu 0 4 521 1102 424 328
		f 4 -1356 1353 -563 -743
		mu 0 4 542 1102 423 315
		f 4 -1358 1358 -528 560
		mu 0 4 425 1103 463 314
		f 4 -1359 -1357 -562 -673
		mu 0 4 463 1103 424 316
		f 4 -1360 1357 639 528
		mu 0 4 462 1103 425 326
		f 4 -1362 1362 728 -640
		mu 0 4 425 1104 525 326
		f 4 -1363 -1361 640 471
		mu 0 4 525 1104 426 323
		f 4 -1364 1361 -561 -745
		mu 0 4 544 1104 425 314
		f 4 -1366 1366 732 -641
		mu 0 4 426 1105 531 323
		f 4 -1367 -1365 641 467
		mu 0 4 531 1105 427 322
		f 4 -1368 1365 -560 -748
		mu 0 4 548 1105 426 312
		f 4 -1370 1370 643 509
		mu 0 4 481 1106 431 367
		f 4 -1371 -1369 692 556
		mu 0 4 431 1106 483 366
		f 4 -1372 1369 690 -642
		mu 0 4 428 1106 481 368
		f 4 -1374 1374 -558 515
		mu 0 4 475 1107 430 375
		f 4 -1375 -1373 685 -643
		mu 0 4 430 1107 476 374
		f 4 -1376 1373 684 -644
		mu 0 4 431 1107 475 367
		f 4 -1378 1378 -489 -646
		mu 0 4 434 1108 502 338
		f 4 -1379 -1377 644 -712
		mu 0 4 502 1108 432 341
		f 4 -1380 1377 -555 482
		mu 0 4 511 1108 434 335
		f 4 -1382 1382 -467 -648
		mu 0 4 436 1109 532 311
		f 4 -1383 -1381 646 -734
		mu 0 4 532 1109 435 321
		f 4 -1384 1381 -553 461
		mu 0 4 538 1109 436 308
		f 4 -1386 1386 -451 -649
		mu 0 4 437 1110 550 301
		f 4 -1387 -1385 647 -750
		mu 0 4 550 1110 436 311
		f 4 -1388 1385 -552 445
		mu 0 4 556 1110 437 296
		f 4 -1390 1390 -435 -1014
		mu 0 4 831 1111 568 298
		f 4 -1391 -1389 648 -766
		mu 0 4 568 1111 437 301
		f 4 -1392 1389 -187 429
		mu 0 4 574 1111 831 295
		f 4 -1394 1394 -419 -650
		mu 0 4 438 1112 586 271
		f 4 -1395 -1393 1014 -782
		mu 0 4 586 1112 832 281
		f 4 -1396 1393 -551 415
		mu 0 4 590 1112 438 268
		f 4 -1398 1398 -409 -651
		mu 0 4 439 1113 598 261
		f 4 -1399 -1397 649 -792
		mu 0 4 598 1113 438 271
		f 4 -1400 1397 -550 403
		mu 0 4 604 1113 439 256
		f 4 -1402 1402 -393 -652
		mu 0 4 440 1114 616 258
		f 4 -1403 -1401 650 -808
		mu 0 4 616 1114 439 261
		f 4 -1404 1401 -549 386
		mu 0 4 623 1114 440 255
		f 4 -1406 1406 -548 364
		mu 0 4 647 1115 441 235
		f 4 -1407 -1405 -371 -653
		mu 0 4 441 1115 640 238
		f 4 -1408 1405 835 -654
		mu 0 4 442 1115 647 236
		f 4 -1410 1410 -349 -656
		mu 0 4 444 1116 664 211
		f 4 -1411 -1409 654 -852
		mu 0 4 664 1116 443 221
		f 4 -1412 1409 -545 343
		mu 0 4 669 1116 444 206
		f 4 -1414 1414 -333 -657
		mu 0 4 445 1117 680 208
		f 4 -1415 -1413 655 -868
		mu 0 4 680 1117 444 211
		f 4 -1416 1413 -544 326
		mu 0 4 686 1117 445 205
		f 4 -1418 1418 -485 -659
		mu 0 4 448 1118 508 334
		f 4 -1419 -1417 657 -716
		mu 0 4 508 1118 446 337
		f 4 -1420 1417 -542 479
		mu 0 4 515 1118 448 332
		f 4 -1422 1422 -464 -661
		mu 0 4 450 1119 536 309
		f 4 -1423 -1421 659 -737
		mu 0 4 536 1119 449 319
		f 4 -1424 1421 -540 459
		mu 0 4 540 1119 450 307
		f 4 -1426 1426 -448 -662
		mu 0 4 451 1120 554 297
		f 4 -1427 -1425 660 -753
		mu 0 4 554 1120 450 309
		f 4 -1428 1425 -539 443
		mu 0 4 558 1120 451 293
		f 4 -1430 1430 -432 -1032
		mu 0 4 852 1121 572 294
		f 4 -1431 -1429 661 -769
		mu 0 4 572 1121 451 297
		f 4 -1432 1429 -169 427
		mu 0 4 576 1121 852 292
		f 4 -1434 1434 -417 -663
		mu 0 4 452 1122 589 269
		f 4 -1435 -1433 1032 -784
		mu 0 4 589 1122 853 279
		f 4 -1436 1433 -538 414
		mu 0 4 591 1122 452 267
		f 4 -1438 1438 -406 -664
		mu 0 4 453 1123 602 257
		f 4 -1439 -1437 662 -795
		mu 0 4 602 1123 452 269
		f 4 -1440 1437 -537 401
		mu 0 4 606 1123 453 253
		f 4 -1442 1442 -389 -665
		mu 0 4 454 1124 621 254
		f 4 -1443 -1441 663 -812
		mu 0 4 621 1124 453 257
		f 4 -1444 1441 -536 383
		mu 0 4 626 1124 454 252
		f 4 -1446 1446 -535 361
		mu 0 4 650 1125 455 232
		f 4 -1447 -1445 -367 -666
		mu 0 4 455 1125 645 234
		f 4 -1448 1445 838 -667
		mu 0 4 456 1125 650 233
		f 4 -1450 1450 -346 -669
		mu 0 4 458 1126 667 207
		f 4 -1451 -1449 667 -855
		mu 0 4 667 1126 457 219
		f 4 -1452 1449 -532 341
		mu 0 4 671 1126 458 203
		f 4 -1454 1454 -329 -670
		mu 0 4 459 1127 684 204
		f 4 -1455 -1453 668 -872
		mu 0 4 684 1127 458 207
		f 4 -1456 1453 -531 323
		mu 0 4 689 1127 459 202
		f 4 -1458 1458 -478 -672
		mu 0 4 462 1128 517 328
		f 4 -1459 -1457 670 -723
		mu 0 4 517 1128 460 331
		f 4 -1460 1457 -529 472
		mu 0 4 524 1128 462 326
		f 4 -1462 1462 -459 -674
		mu 0 4 464 1129 541 306
		f 4 -1463 -1461 672 -742
		mu 0 4 541 1129 463 316
		f 4 -1464 1461 -527 454
		mu 0 4 545 1129 464 304
		f 4 -1466 1466 -443 -675
		mu 0 4 465 1130 559 291
		f 4 -1467 -1465 673 -758
		mu 0 4 559 1130 464 306;
	setAttr ".fc[500:999]"
		f 4 -1468 1465 -526 438
		mu 0 4 563 1130 465 287
		f 4 -1470 1470 -427 -1050
		mu 0 4 873 1131 577 288
		f 4 -1471 -1469 674 -774
		mu 0 4 577 1131 465 291
		f 4 -1472 1469 -151 422
		mu 0 4 581 1131 873 286
		f 4 -1474 1474 -414 -676
		mu 0 4 466 1132 592 266
		f 4 -1475 -1473 1050 -787
		mu 0 4 592 1132 874 276
		f 4 -1476 1473 -525 411
		mu 0 4 594 1132 466 264
		f 4 -1478 1478 -401 -677
		mu 0 4 467 1133 607 251
		f 4 -1479 -1477 675 -800
		mu 0 4 607 1133 466 266
		f 4 -1480 1477 -524 396
		mu 0 4 611 1133 467 247
		f 4 -1482 1482 -382 -678
		mu 0 4 468 1134 628 248
		f 4 -1483 -1481 676 -819
		mu 0 4 628 1134 467 251
		f 4 -1484 1481 -523 376
		mu 0 4 633 1134 468 246
		f 4 -1486 1486 -522 354
		mu 0 4 657 1135 469 226
		f 4 -1487 -1485 -360 -679
		mu 0 4 469 1135 652 228
		f 4 -1488 1485 845 -680
		mu 0 4 470 1135 657 227
		f 4 -1490 1490 -341 -682
		mu 0 4 472 1136 672 201
		f 4 -1491 -1489 680 -860
		mu 0 4 672 1136 471 216
		f 4 -1492 1489 -519 336
		mu 0 4 676 1136 472 197
		f 4 -1494 1494 -322 -683
		mu 0 4 473 1137 691 198
		f 4 -1495 -1493 681 -879
		mu 0 4 691 1137 472 201
		f 4 -1496 1493 -518 316
		mu 0 4 696 1137 473 196
		f 4 -1498 1498 -517 -689
		mu 0 4 479 1138 474 370
		f 4 -1499 -1497 -353 -684
		mu 0 4 474 1138 660 222
		f 4 -1500 1497 -512 -685
		mu 0 4 475 1138 479 367
		f 4 -1502 1502 -375 -686
		mu 0 4 476 1139 636 374
		f 4 -1503 -1501 686 -826
		mu 0 4 636 1139 477 373
		f 4 -1504 1501 -515 -692
		mu 0 4 482 1139 476 366
		f 4 -1506 1506 -396 -687
		mu 0 4 477 1140 613 373
		f 4 -1507 -1505 687 -805
		mu 0 4 613 1140 478 371
		f 4 -1508 1505 -514 -694
		mu 0 4 484 1140 477 364
		f 4 -1510 1510 -411 -688
		mu 0 4 478 1141 596 371
		f 4 -1511 -1509 1059 -790
		mu 0 4 596 1141 885 372
		f 4 -1512 1509 -513 -696
		mu 0 4 486 1141 478 361
		f 4 -1514 1514 -511 -730
		mu 0 4 527 1142 480 369
		f 4 -1515 -1513 688 -690
		mu 0 4 480 1142 479 370
		f 4 -1516 1513 -471 -691
		mu 0 4 481 1142 527 368
		f 4 -1518 1518 691 -693
		mu 0 4 483 1143 482 366
		f 4 -1519 -1517 694 508
		mu 0 4 482 1143 485 364
		f 4 -1520 1517 -508 -747
		mu 0 4 547 1143 483 365
		f 4 -1522 1522 693 -695
		mu 0 4 485 1144 484 364
		f 4 -1523 -1521 696 506
		mu 0 4 484 1144 487 361
		f 4 -1524 1521 -506 -763
		mu 0 4 565 1144 485 363
		f 4 -1526 1526 695 -697
		mu 0 4 487 1145 486 361
		f 4 -1527 -1525 1063 504
		mu 0 4 486 1145 890 362
		f 4 -1528 1525 -504 -779
		mu 0 4 583 1145 487 360
		f 4 -1530 1530 831 -699
		mu 0 4 489 1146 642 358
		f 4 -1531 -1529 697 368
		mu 0 4 642 1146 488 239
		f 4 -1532 1529 -502 496
		mu 0 4 494 1146 489 352
		f 4 -1534 1534 809 -701
		mu 0 4 491 1147 618 356
		f 4 -1535 -1533 699 390
		mu 0 4 618 1147 490 357
		f 4 -1536 1533 -500 493
		mu 0 4 497 1147 491 347
		f 4 -1538 1538 793 -702
		mu 0 4 492 1148 600 355
		f 4 -1539 -1537 700 406
		mu 0 4 600 1148 491 356
		f 4 -1540 1537 -499 491
		mu 0 4 499 1148 492 345
		f 4 -1542 1542 782 -1072
		mu 0 4 900 1149 587 354
		f 4 -1543 -1541 701 417
		mu 0 4 587 1149 492 355
		f 4 -1544 1541 -129 489
		mu 0 4 501 1149 900 344
		f 4 -1546 1546 -497 -705
		mu 0 4 495 1150 494 352
		f 4 -1547 -1545 702 -704
		mu 0 4 494 1150 493 353
		f 4 -1548 1545 -496 486
		mu 0 4 505 1150 495 351
		f 4 -1550 1550 -494 -708
		mu 0 4 498 1151 497 347
		f 4 -1551 -1549 705 -707
		mu 0 4 497 1151 496 349
		f 4 -1552 1549 -493 464
		mu 0 4 534 1151 498 346
		f 4 -1554 1554 -492 -710
		mu 0 4 500 1152 499 345
		f 4 -1555 -1553 707 -709
		mu 0 4 499 1152 498 347
		f 4 -1556 1553 -491 448
		mu 0 4 552 1152 500 342
		f 4 -1558 1558 -490 -1076
		mu 0 4 905 1153 501 344
		f 4 -1559 -1557 709 -711
		mu 0 4 501 1153 500 345
		f 4 -1560 1557 -125 432
		mu 0 4 570 1153 905 343
		f 4 -1562 1562 712 -714
		mu 0 4 506 1154 503 340
		f 4 -1563 -1561 711 487
		mu 0 4 503 1154 502 341
		f 4 -1564 1561 -487 -715
		mu 0 4 507 1154 506 339
		f 4 -1566 1566 716 -718
		mu 0 4 511 1155 509 336
		f 4 -1567 -1565 715 483
		mu 0 4 509 1155 508 337
		f 4 -1568 1565 -483 -719
		mu 0 4 512 1155 511 335
		f 4 -1570 1570 719 -721
		mu 0 4 515 1156 513 333
		f 4 -1571 -1569 724 480
		mu 0 4 513 1156 520 330
		f 4 -1572 1569 -480 -722
		mu 0 4 516 1156 515 332
		f 4 -1574 1574 723 -725
		mu 0 4 520 1157 518 330
		f 4 -1575 -1573 722 476
		mu 0 4 518 1157 517 331
		f 4 -1576 1573 -476 -726
		mu 0 4 521 1157 520 329
		f 4 -1578 1578 726 -728
		mu 0 4 524 1158 522 327
		f 4 -1579 -1577 731 473
		mu 0 4 522 1158 530 324
		f 4 -1580 1577 -473 -729
		mu 0 4 525 1158 524 326
		f 4 -1582 1582 730 -732
		mu 0 4 530 1159 528 324
		f 4 -1583 -1581 729 469
		mu 0 4 528 1159 526 325
		f 4 -1584 1581 -469 -733
		mu 0 4 531 1159 530 323
		f 4 -1586 1586 734 -736
		mu 0 4 535 1160 533 320
		f 4 -1587 -1585 733 465
		mu 0 4 533 1160 532 321
		f 4 -1588 1585 -465 -751
		mu 0 4 551 1160 535 310
		f 4 -1590 1590 737 -739
		mu 0 4 538 1161 537 318
		f 4 -1591 -1589 736 462
		mu 0 4 537 1161 536 319
		f 4 -1592 1589 -462 -754
		mu 0 4 555 1161 538 308
		f 4 -1594 1594 739 -741
		mu 0 4 540 1162 539 317
		f 4 -1595 -1593 743 460
		mu 0 4 539 1162 543 315
		f 4 -1596 1593 -460 -756
		mu 0 4 557 1162 540 307
		f 4 -1598 1598 742 -744
		mu 0 4 543 1163 542 315
		f 4 -1599 -1597 741 457
		mu 0 4 542 1163 541 316
		f 4 -1600 1597 -457 -759
		mu 0 4 560 1163 543 305
		f 4 -1602 1602 744 -746
		mu 0 4 545 1164 544 314
		f 4 -1603 -1601 748 455
		mu 0 4 544 1164 549 312
		f 4 -1604 1601 -455 -761
		mu 0 4 562 1164 545 304
		f 4 -1606 1606 747 -749
		mu 0 4 549 1165 548 312
		f 4 -1607 -1605 746 452
		mu 0 4 548 1165 546 313
		f 4 -1608 1605 -452 -764
		mu 0 4 566 1165 549 302
		f 4 -1610 1610 750 -752
		mu 0 4 553 1166 551 310
		f 4 -1611 -1609 749 449
		mu 0 4 551 1166 550 311
		f 4 -1612 1609 -449 -767
		mu 0 4 569 1166 553 300
		f 4 -1614 1614 753 -755
		mu 0 4 556 1167 555 308
		f 4 -1615 -1613 752 446
		mu 0 4 555 1167 554 309
		f 4 -1616 1613 -446 -770
		mu 0 4 573 1167 556 296
		f 4 -1618 1618 755 -757
		mu 0 4 558 1168 557 307
		f 4 -1619 -1617 759 444
		mu 0 4 557 1168 561 305
		f 4 -1620 1617 -444 -772
		mu 0 4 575 1168 558 293
		f 4 -1622 1622 758 -760
		mu 0 4 561 1169 560 305
		f 4 -1623 -1621 757 441
		mu 0 4 560 1169 559 306
		f 4 -1624 1621 -441 -775
		mu 0 4 578 1169 561 290
		f 4 -1626 1626 760 -762
		mu 0 4 563 1170 562 304
		f 4 -1627 -1625 764 439
		mu 0 4 562 1170 567 302
		f 4 -1628 1625 -439 -777
		mu 0 4 580 1170 563 287
		f 4 -1630 1630 763 -765
		mu 0 4 567 1171 566 302
		f 4 -1631 -1629 762 436
		mu 0 4 566 1171 564 303
		f 4 -1632 1629 -436 -780
		mu 0 4 584 1171 567 284
		f 4 -1634 1634 766 -768
		mu 0 4 571 1172 569 300
		f 4 -1635 -1633 765 433
		mu 0 4 569 1172 568 301
		f 4 -1636 1633 -433 -1159
		mu 0 4 1005 1172 571 299
		f 4 -1638 1638 769 -771
		mu 0 4 574 1173 573 296
		f 4 -1639 -1637 768 430
		mu 0 4 573 1173 572 297
		f 4 -1640 1637 -430 -1160
		mu 0 4 1007 1173 574 295
		f 4 -1642 1642 771 -773
		mu 0 4 576 1174 575 293
		f 4 -1643 -1641 775 428
		mu 0 4 575 1174 579 290
		f 4 -1644 1641 -428 -1161
		mu 0 4 1009 1174 576 292
		f 4 -1646 1646 774 -776
		mu 0 4 579 1175 578 290
		f 4 -1647 -1645 773 425
		mu 0 4 578 1175 577 291
		f 4 -1648 1645 -425 -1162
		mu 0 4 1011 1175 579 289
		f 4 -1650 1650 776 -778
		mu 0 4 581 1176 580 287
		f 4 -1651 -1649 780 423
		mu 0 4 580 1176 585 284
		f 4 -1652 1649 -423 -1163
		mu 0 4 1013 1176 581 286
		f 4 -1654 1654 779 -781
		mu 0 4 585 1177 584 284
		f 4 -1655 -1653 778 420
		mu 0 4 584 1177 582 285
		f 4 -1656 1653 -420 -1164
		mu 0 4 1015 1177 585 283
		f 4 -1658 1658 1164 -783
		mu 0 4 588 1178 1016 280
		f 4 -1659 -1657 781 35
		mu 0 4 1016 1178 586 281
		f 4 -1660 1657 -418 -793
		mu 0 4 599 1178 588 270
		f 4 -1662 1662 1165 -785
		mu 0 4 590 1179 1018 278
		f 4 -1663 -1661 783 34
		mu 0 4 1018 1179 589 279
		f 4 -1664 1661 -416 -796
		mu 0 4 603 1179 590 268
		f 4 -1666 1666 1166 -786
		mu 0 4 591 1180 1020 277
		f 4 -1667 -1665 787 33
		mu 0 4 1020 1180 593 275
		f 4 -1668 1665 -415 -798
		mu 0 4 605 1180 591 267
		f 4 -1670 1670 1167 -788
		mu 0 4 593 1181 1022 275
		f 4 -1671 -1669 786 32
		mu 0 4 1022 1181 592 276
		f 4 -1672 1669 -413 -801
		mu 0 4 608 1181 593 265
		f 4 -1674 1674 1168 -789
		mu 0 4 594 1182 1024 274
		f 4 -1675 -1673 790 31
		mu 0 4 1024 1182 597 272
		f 4 -1676 1673 -412 -803
		mu 0 4 610 1182 594 264
		f 4 -1678 1678 1169 -791
		mu 0 4 597 1183 1026 272
		f 4 -1679 -1677 789 30
		mu 0 4 1026 1183 595 273
		f 4 -1680 1677 -410 -806
		mu 0 4 614 1183 597 262
		f 4 -1682 1682 792 -794
		mu 0 4 601 1184 599 270
		f 4 -1683 -1681 791 407
		mu 0 4 599 1184 598 271
		f 4 -1684 1681 -407 -809
		mu 0 4 617 1184 601 260
		f 4 -1686 1686 795 -797
		mu 0 4 604 1185 603 268
		f 4 -1687 -1685 794 404
		mu 0 4 603 1185 602 269
		f 4 -1688 1685 -404 -813
		mu 0 4 622 1185 604 256
		f 4 -1690 1690 797 -799
		mu 0 4 606 1186 605 267
		f 4 -1691 -1689 801 402
		mu 0 4 605 1186 609 265
		f 4 -1692 1689 -402 -816
		mu 0 4 625 1186 606 253
		f 4 -1694 1694 800 -802
		mu 0 4 609 1187 608 265
		f 4 -1695 -1693 799 399
		mu 0 4 608 1187 607 266
		f 4 -1696 1693 -399 -820
		mu 0 4 629 1187 609 250
		f 4 -1698 1698 802 -804
		mu 0 4 611 1188 610 264
		f 4 -1699 -1697 806 397
		mu 0 4 610 1188 615 262
		f 4 -1700 1697 -397 -823
		mu 0 4 632 1188 611 247
		f 4 -1702 1702 805 -807
		mu 0 4 615 1189 614 262
		f 4 -1703 -1701 804 394
		mu 0 4 614 1189 612 263
		f 4 -1704 1701 -394 -827
		mu 0 4 637 1189 615 244
		f 4 -1706 1706 808 -810
		mu 0 4 619 1190 617 260
		f 4 -1707 -1705 807 391
		mu 0 4 617 1190 616 261
		f 4 -1708 1705 -391 -811
		mu 0 4 620 1190 619 259
		f 4 -1710 1710 812 -814
		mu 0 4 623 1191 622 256
		f 4 -1711 -1709 811 387
		mu 0 4 622 1191 621 257
		f 4 -1712 1709 -387 -815
		mu 0 4 624 1191 623 255
		f 4 -1714 1714 815 -817
		mu 0 4 626 1192 625 253
		f 4 -1715 -1713 820 384
		mu 0 4 625 1192 630 250
		f 4 -1716 1713 -384 -818
		mu 0 4 627 1192 626 252
		f 4 -1718 1718 819 -821
		mu 0 4 630 1193 629 250
		f 4 -1719 -1717 818 380
		mu 0 4 629 1193 628 251
		f 4 -1720 1717 -380 -822
		mu 0 4 631 1193 630 249
		f 4 -1722 1722 822 -824
		mu 0 4 633 1194 632 247
		f 4 -1723 -1721 827 377
		mu 0 4 632 1194 638 244
		f 4 -1724 1721 -377 -825
		mu 0 4 634 1194 633 246
		f 4 -1726 1726 826 -828
		mu 0 4 638 1195 637 244
		f 4 -1727 -1725 825 373
		mu 0 4 637 1195 635 245
		f 4 -1728 1725 -373 -829
		mu 0 4 639 1195 638 243
		f 4 -1730 1730 -370 -832
		mu 0 4 643 1196 641 240
		f 4 -1731 -1729 829 -831
		mu 0 4 641 1196 640 241
		f 4 -1732 1729 -369 -833
		mu 0 4 644 1196 643 239
		f 4 -1734 1734 -366 -836
		mu 0 4 647 1197 646 236
		f 4 -1735 -1733 833 -835
		mu 0 4 646 1197 645 237
		f 4 -1736 1733 -365 -837
		mu 0 4 648 1197 647 235
		f 4 -1738 1738 -363 -839
		mu 0 4 650 1198 649 233
		f 4 -1739 -1737 842 -838
		mu 0 4 649 1198 654 230
		f 4 -1740 1737 -362 -840
		mu 0 4 651 1198 650 232
		f 4 -1742 1742 -359 -843
		mu 0 4 654 1199 653 230
		f 4 -1743 -1741 840 -842
		mu 0 4 653 1199 652 231
		f 4 -1744 1741 -358 -844
		mu 0 4 655 1199 654 229
		f 4 -1746 1746 -356 -846
		mu 0 4 657 1200 656 227
		f 4 -1747 -1745 849 -845
		mu 0 4 656 1200 662 224
		f 4 -1748 1745 -355 -847
		mu 0 4 658 1200 657 226
		f 4 -1750 1750 -352 -850
		mu 0 4 662 1201 661 224
		f 4 -1751 -1749 847 -849
		mu 0 4 661 1201 659 225
		f 4 -1752 1749 -351 -851
		mu 0 4 663 1201 662 223
		f 4 -1754 1754 852 -854
		mu 0 4 666 1202 665 220
		f 4 -1755 -1753 851 347
		mu 0 4 665 1202 664 221
		f 4 -1756 1753 -347 -869
		mu 0 4 681 1202 666 210
		f 4 -1758 1758 855 -857
		mu 0 4 669 1203 668 218
		f 4 -1759 -1757 854 344
		mu 0 4 668 1203 667 219
		f 4 -1760 1757 -344 -873
		mu 0 4 685 1203 669 206
		f 4 -1762 1762 857 -859
		mu 0 4 671 1204 670 217
		f 4 -1763 -1761 861 342
		mu 0 4 670 1204 674 215
		f 4 -1764 1761 -342 -876
		mu 0 4 688 1204 671 203
		f 4 -1766 1766 860 -862
		mu 0 4 674 1205 673 215
		f 4 -1767 -1765 859 339
		mu 0 4 673 1205 672 216
		f 4 -1768 1765 -339 -880
		mu 0 4 692 1205 674 200
		f 4 -1770 1770 862 -864
		mu 0 4 676 1206 675 214
		f 4 -1771 -1769 866 337
		mu 0 4 675 1206 679 212
		f 4 -1772 1769 -337 -883
		mu 0 4 695 1206 676 197
		f 4 -1774 1774 865 -867
		mu 0 4 679 1207 678 212
		f 4 -1775 -1773 864 334
		mu 0 4 678 1207 677 213
		f 4 -1776 1773 -334 -887
		mu 0 4 699 1207 679 194
		f 4 -1778 1778 868 -870
		mu 0 4 682 1208 681 210
		f 4 -1779 -1777 867 331
		mu 0 4 681 1208 680 211
		f 4 -1780 1777 -331 -871
		mu 0 4 683 1208 682 209
		f 4 -1782 1782 872 -874
		mu 0 4 686 1209 685 206
		f 4 -1783 -1781 871 327
		mu 0 4 685 1209 684 207
		f 4 -1784 1781 -327 -875
		mu 0 4 687 1209 686 205
		f 4 -1786 1786 875 -877
		mu 0 4 689 1210 688 203
		f 4 -1787 -1785 880 324
		mu 0 4 688 1210 693 200
		f 4 -1788 1785 -324 -878
		mu 0 4 690 1210 689 202
		f 4 -1790 1790 879 -881
		mu 0 4 693 1211 692 200
		f 4 -1791 -1789 878 320
		mu 0 4 692 1211 691 201
		f 4 -1792 1789 -320 -882
		mu 0 4 694 1211 693 199
		f 4 -1794 1794 882 -884
		mu 0 4 696 1212 695 197
		f 4 -1795 -1793 887 317
		mu 0 4 695 1212 700 194
		f 4 -1796 1793 -317 -885
		mu 0 4 697 1212 696 196
		f 4 -1798 1798 886 -888
		mu 0 4 700 1213 699 194
		f 4 -1799 -1797 885 313
		mu 0 4 699 1213 698 195
		f 4 -1800 1797 -313 -889
		mu 0 4 701 1213 700 193
		f 4 -1802 1802 907 310
		mu 0 4 702 1214 720 188
		f 4 -1803 -1801 -182 292
		mu 0 4 720 1214 837 135
		f 4 -1804 1801 889 -901
		mu 0 4 713 1214 702 191
		f 4 -1806 1806 930 -892
		mu 0 4 704 1215 743 179
		f 4 -1807 -1805 1019 269
		mu 0 4 743 1215 838 5
		f 4 -1808 1805 -309 -936
		mu 0 4 748 1215 704 178
		f 4 -1810 1810 910 307
		mu 0 4 705 1216 723 187
		f 4 -1811 -1809 -164 289
		mu 0 4 723 1216 858 123
		f 4 -1812 1809 892 -906
		mu 0 4 718 1216 705 189
		f 4 -1814 1814 936 -895
		mu 0 4 707 1217 749 177
		f 4 -1815 -1813 1037 263
		mu 0 4 749 1217 859 4
		f 4 -1816 1813 -306 -941
		mu 0 4 753 1217 707 176
		f 4 -1818 1818 918 304
		mu 0 4 708 1218 731 184
		f 4 -1819 -1817 -146 281
		mu 0 4 731 1218 879 111
		f 4 -1820 1817 895 -914
		mu 0 4 726 1218 708 186
		f 4 -1822 1822 946 -898
		mu 0 4 710 1219 759 174
		f 4 -1823 -1821 1055 253
		mu 0 4 759 1219 880 2
		f 4 -1824 1821 -303 -951
		mu 0 4 763 1219 710 173
		f 4 -1826 1826 900 300
		mu 0 4 712 1220 713 191
		f 4 -1827 -1825 -12 299
		mu 0 4 713 1220 1046 19
		f 4 -1828 1825 899 -903
		mu 0 4 715 1220 712 190
		f 4 -1830 1830 902 -902
		mu 0 4 714 1221 715 190
		f 4 -1831 -1829 1136 297
		mu 0 4 715 1221 982 20
		f 4 -1832 1829 -299 -928
		mu 0 4 740 1221 714 181
		f 4 -1834 1834 905 295
		mu 0 4 717 1222 718 189
		f 4 -1835 -1833 -11 294
		mu 0 4 718 1222 1047 18
		f 4 -1836 1833 904 -908
		mu 0 4 720 1222 717 188
		f 4 -1838 1838 915 291
		mu 0 4 721 1223 728 185
		f 4 -1839 -1837 -10 284
		mu 0 4 728 1223 1048 17
		f 4 -1840 1837 908 -911
		mu 0 4 723 1223 721 187
		f 4 -1842 1842 913 287
		mu 0 4 725 1224 726 186
		f 4 -1843 -1841 -9 286
		mu 0 4 726 1224 1049 16
		f 4 -1844 1841 912 -916
		mu 0 4 728 1224 725 185
		f 4 -1846 1846 923 283
		mu 0 4 729 1225 736 182
		f 4 -1847 -1845 -8 276
		mu 0 4 736 1225 1050 15
		f 4 -1848 1845 916 -919
		mu 0 4 731 1225 729 184
		f 4 -1850 1850 953 280
		mu 0 4 732 1226 766 172
		f 4 -1851 -1849 -63 246
		mu 0 4 766 1226 983 7
		f 4 -1852 1849 919 -922
		mu 0 4 734 1226 732 183
		f 4 -1854 1854 921 279
		mu 0 4 733 1227 734 183
		f 4 -1855 -1853 -7 278
		mu 0 4 734 1227 1051 14
		f 4 -1856 1853 920 -924
		mu 0 4 736 1227 733 182
		f 4 -1858 1858 927 -927
		mu 0 4 739 1228 740 181
		f 4 -1859 -1857 1138 272
		mu 0 4 740 1228 984 13
		f 4 -1860 1857 -274 -930
		mu 0 4 742 1228 739 180
		f 4 -1862 1862 929 -929
		mu 0 4 741 1229 742 180
		f 4 -1863 -1861 1194 270
		mu 0 4 742 1229 1052 6
		f 4 -1864 1861 -272 -931
		mu 0 4 743 1229 741 179
		f 4 -1866 1866 935 -935
		mu 0 4 747 1230 748 178
		f 4 -1867 -1865 1195 264
		mu 0 4 748 1230 1054 132
		f 4 -1868 1865 -266 -937
		mu 0 4 749 1230 747 177
		f 4 -1870 1870 940 -940
		mu 0 4 752 1231 753 176
		f 4 -1871 -1869 1196 259
		mu 0 4 753 1231 1056 120
		f 4 -1872 1869 -261 -946
		mu 0 4 758 1231 752 175
		f 4 -1874 1874 945 -945
		mu 0 4 757 1232 758 175
		f 4 -1875 -1873 1197 254
		mu 0 4 758 1232 1058 3
		f 4 -1876 1873 -256 -947
		mu 0 4 759 1232 757 174
		f 4 -1878 1878 950 -950
		mu 0 4 762 1233 763 173
		f 4 -1879 -1877 1198 249
		mu 0 4 763 1233 1060 108
		f 4 -1880 1877 -251 -957
		mu 0 4 769 1233 762 171
		f 4 -1882 1882 957 248
		mu 0 4 764 1234 770 170
		f 4 -1883 -1881 -61 242
		mu 0 4 770 1234 985 0
		f 4 -1884 1881 951 -954
		mu 0 4 766 1234 764 172
		f 4 -1886 1886 956 -956
		mu 0 4 768 1235 769 171
		f 4 -1887 -1885 1199 243
		mu 0 4 769 1235 1062 1
		f 4 -1888 1885 -245 -958
		mu 0 4 770 1235 768 170
		f 4 -1890 1890 980 -1188
		mu 0 4 1045 1236 793 22
		f 4 -1891 -1889 -242 219
		mu 0 4 793 1236 771 169
		f 4 -1892 1889 -13 -1002
		mu 0 4 818 1236 1045 21
		f 4 -1894 1894 981 -1187
		mu 0 4 1044 1237 794 112
		f 4 -1895 -1893 -241 218
		mu 0 4 794 1237 772 168
		f 4 -1896 1893 -14 -981
		mu 0 4 793 1237 1044 22
		f 4 -1898 1898 -240 217
		mu 0 4 795 1238 773 167
		f 4 -1899 -1897 -219 -961
		mu 0 4 773 1238 794 168
		f 4 -1900 1897 982 -1054
		mu 0 4 878 1238 795 23
		f 4 -1902 1902 983 -1186
		mu 0 4 1043 1239 796 24
		f 4 -1903 -1901 -239 216
		mu 0 4 796 1239 774 166
		f 4 -1904 1901 -15 -983
		mu 0 4 795 1239 1043 23
		f 4 -1906 1906 984 -1185
		mu 0 4 1042 1240 797 124
		f 4 -1907 -1905 -238 215
		mu 0 4 797 1240 775 165
		f 4 -1908 1905 -16 -984
		mu 0 4 796 1240 1042 24
		f 4 -1910 1910 -237 214
		mu 0 4 798 1241 776 164
		f 4 -1911 -1909 -216 -964
		mu 0 4 776 1241 797 165
		f 4 -1912 1909 985 -1036
		mu 0 4 857 1241 798 25
		f 4 -1914 1914 986 -1184
		mu 0 4 1041 1242 799 136
		f 4 -1915 -1913 -236 213
		mu 0 4 799 1242 777 163
		f 4 -1916 1913 -17 -986
		mu 0 4 798 1242 1041 25
		f 4 -1918 1918 -235 212
		mu 0 4 800 1243 778 162
		f 4 -1919 -1917 -214 -966
		mu 0 4 778 1243 799 163
		f 4 -1920 1917 987 -1018
		mu 0 4 836 1243 800 26
		f 4 -1922 1922 988 -1183
		mu 0 4 1040 1244 801 27
		f 4 -1923 -1921 -234 211
		mu 0 4 801 1244 779 160
		f 4 -1924 1921 -18 -988
		mu 0 4 800 1244 1040 26
		f 4 -1926 1926 -124 131
		mu 0 4 896 1245 906 91
		f 4 -1927 -1925 -233 -1077
		mu 0 4 906 1245 780 159
		f 4 -1928 1925 1068 -989
		mu 0 4 802 1245 896 95
		f 4 -1930 1930 -120 127
		mu 0 4 901 1246 911 87
		f 4 -1931 -1929 -232 -1081
		mu 0 4 911 1246 781 158
		f 4 -1932 1929 1072 123
		mu 0 4 906 1246 901 91
		f 4 -1934 1934 1080 -970
		mu 0 4 782 1247 910 157
		f 4 -1935 -1933 1140 119
		mu 0 4 910 1247 986 76
		f 4 -1936 1933 -231 -1082
		mu 0 4 912 1247 782 156
		f 4 -1938 1938 -198 189
		mu 0 4 827 1248 819 143
		f 4 -1939 -1937 -230 -1003
		mu 0 4 819 1248 783 155
		f 4 -1940 1937 1010 118
		mu 0 4 912 1248 827 75
		f 4 -1942 1942 1002 -972
		mu 0 4 784 1249 819 155
		f 4 -1943 -1941 1141 197
		mu 0 4 819 1249 987 143
		f 4 -1944 1941 -229 -1083
		mu 0 4 913 1249 784 154
		f 4 -1946 1946 -180 171
		mu 0 4 848 1250 840 131
		f 4 -1947 -1945 -228 -1021
		mu 0 4 840 1250 785 153
		f 4 -1948 1945 1028 117
		mu 0 4 913 1250 848 74
		f 4 -1950 1950 1020 -974
		mu 0 4 786 1251 840 153
		f 4 -1951 -1949 1142 179
		mu 0 4 840 1251 988 131
		f 4 -1952 1949 -227 -1084
		mu 0 4 914 1251 786 152
		f 4 -1954 1954 1083 -975
		mu 0 4 787 1252 914 152
		f 4 -1955 -1953 1143 116
		mu 0 4 914 1252 989 73
		f 4 -1956 1953 -226 -1085
		mu 0 4 915 1252 787 151
		f 4 -1958 1958 -162 153
		mu 0 4 869 1253 861 119
		f 4 -1959 -1957 -225 -1039
		mu 0 4 861 1253 788 150
		f 4 -1960 1957 1046 115
		mu 0 4 915 1253 869 72
		f 4 -1962 1962 1038 -977
		mu 0 4 789 1254 861 150
		f 4 -1963 -1961 1144 161
		mu 0 4 861 1254 990 119
		f 4 -1964 1961 -224 -1086
		mu 0 4 916 1254 789 149
		f 4 -1966 1966 1085 -978
		mu 0 4 790 1255 916 149
		f 4 -1967 -1965 1145 114
		mu 0 4 916 1255 991 71
		f 4 -1968 1965 -223 -1087
		mu 0 4 918 1255 790 148
		f 4 -1970 1970 -222 -1065
		mu 0 4 892 1256 791 146
		f 4 -1971 -1969 1086 -979
		mu 0 4 791 1256 917 147
		f 4 -1972 1969 -136 -1061
		mu 0 4 887 1256 892 103
		f 4 -1974 1974 -221 198
		mu 0 4 817 1257 792 144
		f 4 -1975 -1973 1064 -980
		mu 0 4 792 1257 892 146
		f 4 -1976 1973 1001 -1057
		mu 0 4 882 1257 817 107
		f 4 -1978 1978 970 208
		mu 0 4 806 1258 783 156
		f 4 -1979 -1977 -208 229
		mu 0 4 783 1258 807 155
		f 4 -1980 1977 991 -1020
		mu 0 4 839 1258 806 82
		f 4 -1982 1982 1011 111
		mu 0 4 921 1259 828 68
		f 4 -1983 -1981 -197 188
		mu 0 4 828 1259 820 142
		f 4 -1984 1981 1088 -1011
		mu 0 4 827 1259 921 75
		f 4 -1986 1986 1012 104
		mu 0 4 930 1260 829 61
		f 4 -1987 -1985 -196 187
		mu 0 4 829 1260 821 141
		f 4 -1988 1985 1095 -1012
		mu 0 4 828 1260 930 68
		f 4 -1990 1990 1013 97
		mu 0 4 939 1261 830 54
		f 4 -1991 -1989 -195 186
		mu 0 4 830 1261 822 140
		f 4 -1992 1989 1102 -1013
		mu 0 4 829 1261 939 61
		f 4 -1994 1994 1015 90
		mu 0 4 948 1262 834 40
		f 4 -1995 -1993 -194 184
		mu 0 4 834 1262 823 138
		f 4 -1996 1993 1109 -1015
		mu 0 4 833 1262 948 47
		f 4 -1998 1998 1016 83
		mu 0 4 957 1263 835 33
		f 4 -1999 -1997 -193 183
		mu 0 4 835 1263 824 137
		f 4 -2000 1997 1116 -1016
		mu 0 4 834 1263 957 40
		f 4 -2002 2002 1017 76
		mu 0 4 966 1264 836 26
		f 4 -2003 -2001 -192 182
		mu 0 4 836 1264 825 136
		f 4 -2004 2001 1123 -1017
		mu 0 4 835 1264 966 33
		f 4 -2006 2006 -191 181
		mu 0 4 837 1265 826 135
		f 4 -2007 -2005 965 -1010
		mu 0 4 826 1265 778 163
		f 4 -2008 2005 1018 69
		mu 0 4 975 1265 837 19
		f 4 -2010 2010 890 301
		mu 0 4 711 1266 703 12
		f 4 -2011 -2009 -294 309
		mu 0 4 703 1266 719 134
		f 4 -2012 2009 898 -890
		mu 0 4 702 1266 711 191
		f 4 -2014 2014 891 275
		mu 0 4 737 1267 704 179
		f 4 -2015 -2013 -267 308
		mu 0 4 704 1267 746 178
		f 4 -2016 2013 924 -891
		mu 0 4 703 1267 737 12
		f 4 -2018 2018 972 206
		mu 0 4 808 1268 785 154
		f 4 -2019 -2017 -206 227
		mu 0 4 785 1268 809 153
		f 4 -2020 2017 993 -1038
		mu 0 4 860 1268 808 81
		f 4 -2022 2022 1029 110
		mu 0 4 922 1269 849 67
		f 4 -2023 -2021 -179 170
		mu 0 4 849 1269 841 130
		f 4 -2024 2021 1089 -1029
		mu 0 4 848 1269 922 74
		f 4 -2026 2026 1030 103
		mu 0 4 931 1270 850 60
		f 4 -2027 -2025 -178 169
		mu 0 4 850 1270 842 129
		f 4 -2028 2025 1096 -1030
		mu 0 4 849 1270 931 67
		f 4 -2030 2030 1031 96
		mu 0 4 940 1271 851 53
		f 4 -2031 -2029 -177 168
		mu 0 4 851 1271 843 128
		f 4 -2032 2029 1103 -1031
		mu 0 4 850 1271 940 60
		f 4 -2034 2034 1033 89
		mu 0 4 949 1272 855 39
		f 4 -2035 -2033 -176 166
		mu 0 4 855 1272 844 126
		f 4 -2036 2033 1110 -1033
		mu 0 4 854 1272 949 46
		f 4 -2038 2038 1034 82
		mu 0 4 958 1273 856 32
		f 4 -2039 -2037 -175 165
		mu 0 4 856 1273 845 125
		f 4 -2040 2037 1117 -1034
		mu 0 4 855 1273 958 39
		f 4 -2042 2042 1035 75
		mu 0 4 967 1274 857 25
		f 4 -2043 -2041 -174 164
		mu 0 4 857 1274 846 124
		f 4 -2044 2041 1124 -1035
		mu 0 4 856 1274 967 32
		f 4 -2046 2046 -173 163
		mu 0 4 858 1275 847 123
		f 4 -2047 -2045 963 -1028
		mu 0 4 847 1275 776 165
		f 4 -2048 2045 1036 68
		mu 0 4 976 1275 858 18
		f 4 -2050 2050 893 296
		mu 0 4 716 1276 706 11
		f 4 -2051 -2049 -291 306
		mu 0 4 706 1276 722 122
		f 4 -2052 2049 903 -893
		mu 0 4 705 1276 716 189
		f 4 -2054 2054 894 268
		mu 0 4 744 1277 707 177
		f 4 -2055 -2053 -262 305
		mu 0 4 707 1277 751 176
		f 4 -2056 2053 931 -894
		mu 0 4 706 1277 744 11
		f 4 -2058 2058 975 203
		mu 0 4 811 1278 788 151
		f 4 -2059 -2057 -203 224
		mu 0 4 788 1278 812 150
		f 4 -2060 2057 996 -1056
		mu 0 4 881 1278 811 79
		f 4 -2062 2062 1047 108
		mu 0 4 924 1279 870 65
		f 4 -2063 -2061 -161 152
		mu 0 4 870 1279 862 118
		f 4 -2064 2061 1091 -1047
		mu 0 4 869 1279 924 72
		f 4 -2066 2066 1048 101
		mu 0 4 933 1280 871 58
		f 4 -2067 -2065 -160 151
		mu 0 4 871 1280 863 117
		f 4 -2068 2065 1098 -1048
		mu 0 4 870 1280 933 65
		f 4 -2070 2070 1049 94
		mu 0 4 942 1281 872 51
		f 4 -2071 -2069 -159 150
		mu 0 4 872 1281 864 116
		f 4 -2072 2069 1105 -1049
		mu 0 4 871 1281 942 58
		f 4 -2074 2074 1051 87
		mu 0 4 951 1282 876 37
		f 4 -2075 -2073 -158 148
		mu 0 4 876 1282 865 114
		f 4 -2076 2073 1112 -1051
		mu 0 4 875 1282 951 44
		f 4 -2078 2078 1052 80
		mu 0 4 960 1283 877 30
		f 4 -2079 -2077 -157 147
		mu 0 4 877 1283 866 113
		f 4 -2080 2077 1119 -1052
		mu 0 4 876 1283 960 37
		f 4 -2082 2082 1053 73
		mu 0 4 969 1284 878 23
		f 4 -2083 -2081 -156 146
		mu 0 4 878 1284 867 112
		f 4 -2084 2081 1126 -1053
		mu 0 4 877 1284 969 30
		f 4 -2086 2086 -155 145
		mu 0 4 879 1285 868 111
		f 4 -2087 -2085 960 -1046
		mu 0 4 868 1285 773 168
		f 4 -2088 2085 1054 66
		mu 0 4 978 1285 879 16
		f 4 -2090 2090 896 288
		mu 0 4 724 1286 709 9
		f 4 -2091 -2089 -283 303
		mu 0 4 709 1286 730 110
		f 4 -2092 2089 911 -896
		mu 0 4 708 1286 724 186
		f 4 -2094 2094 897 258
		mu 0 4 754 1287 710 174
		f 4 -2095 -2093 -252 302
		mu 0 4 710 1287 761 173
		f 4 -2096 2093 941 -897
		mu 0 4 709 1287 754 9
		f 4 -2098 2098 1000 62
		mu 0 4 983 1288 816 7
		f 4 -2099 -2097 979 199
		mu 0 4 816 1288 792 146
		f 4 -2100 2097 1137 64
		mu 0 4 980 1288 983 14
		f 4 -2102 2102 1056 71
		mu 0 4 971 1289 882 107
		f 4 -2103 -2101 1065 143
		mu 0 4 882 1289 893 103
		f 4 -2104 2101 1128 -1058
		mu 0 4 883 1289 971 106
		f 4 -2106 2106 1057 78
		mu 0 4 962 1290 883 106
		f 4 -2107 -2105 1066 142
		mu 0 4 883 1290 894 102
		f 4 -2108 2105 1121 -1059
		mu 0 4 884 1290 962 105
		f 4 -2110 2110 1058 85
		mu 0 4 953 1291 884 105
		f 4 -2111 -2109 1067 141
		mu 0 4 884 1291 895 101
		f 4 -2112 2109 1114 -1060
		mu 0 4 886 1291 953 104
		f 4 -2114 2114 999 60
		mu 0 4 985 1292 814 0
		f 4 -2115 -2113 978 200
		mu 0 4 814 1292 791 147
		f 4 -2116 2113 1139 -1001
		mu 0 4 816 1292 985 7
		f 4 -2118 2118 1060 -1066
		mu 0 4 893 1293 887 103
		f 4 -2119 -2117 1093 139
		mu 0 4 887 1293 926 99
		f 4 -2120 2117 -135 -1062
		mu 0 4 888 1293 893 102
		f 4 -2122 2122 1061 -1067
		mu 0 4 894 1294 888 102
		f 4 -2123 -2121 1100 138
		mu 0 4 888 1294 935 98
		f 4 -2124 2121 -134 -1063
		mu 0 4 889 1294 894 101
		f 4 -2126 2126 1062 -1068
		mu 0 4 895 1295 889 101
		f 4 -2127 -2125 1107 137
		mu 0 4 889 1295 944 97
		f 4 -2128 2125 -133 -1064
		mu 0 4 891 1295 895 100
		f 4 -2130 2130 967 -1130
		mu 0 4 974 1296 780 161
		f 4 -2131 -2129 -211 232
		mu 0 4 780 1296 803 159
		f 4 -2132 2129 -71 -1137
		mu 0 4 982 1296 974 20
		f 4 -2134 2134 1069 -1123
		mu 0 4 965 1297 897 94;
	setAttr ".fc[1000:1199]"
		f 4 -2135 -2133 -123 130
		mu 0 4 897 1297 907 90
		f 4 -2136 2133 -78 -1069
		mu 0 4 896 1297 965 95
		f 4 -2138 2138 1070 -1116
		mu 0 4 956 1298 898 93
		f 4 -2139 -2137 -122 129
		mu 0 4 898 1298 908 89
		f 4 -2140 2137 -85 -1070
		mu 0 4 897 1298 956 94
		f 4 -2142 2142 1071 -1109
		mu 0 4 947 1299 899 92
		f 4 -2143 -2141 -121 128
		mu 0 4 899 1299 909 88
		f 4 -2144 2141 -92 -1071
		mu 0 4 898 1299 947 93
		f 4 -2146 2146 968 210
		mu 0 4 803 1300 781 159
		f 4 -2147 -2145 -210 231
		mu 0 4 781 1300 805 158
		f 4 -2148 2145 989 -1139
		mu 0 4 984 1300 803 13
		f 4 -2150 2150 1073 122
		mu 0 4 907 1301 902 90
		f 4 -2151 -2149 -113 126
		mu 0 4 902 1301 920 86
		f 4 -2152 2149 1077 -1073
		mu 0 4 901 1301 907 91
		f 4 -2154 2154 1074 121
		mu 0 4 908 1302 903 89
		f 4 -2155 -2153 -106 125
		mu 0 4 903 1302 929 85
		f 4 -2156 2153 1078 -1074
		mu 0 4 902 1302 908 90
		f 4 -2158 2158 1075 120
		mu 0 4 909 1303 904 88
		f 4 -2159 -2157 -99 124
		mu 0 4 904 1303 938 84
		f 4 -2160 2157 1079 -1075
		mu 0 4 903 1303 909 89
		f 4 -2162 2162 990 -1195
		mu 0 4 1053 1304 804 83
		f 4 -2163 -2161 969 209
		mu 0 4 804 1304 782 157
		f 4 -2164 2161 -6 -992
		mu 0 4 806 1304 1053 82
		f 4 -2166 2166 992 -1196
		mu 0 4 1055 1305 807 133
		f 4 -2167 -2165 971 207
		mu 0 4 807 1305 784 155
		f 4 -2168 2165 -5 -994
		mu 0 4 808 1305 1055 81
		f 4 -2170 2170 994 -1197
		mu 0 4 1057 1306 809 121
		f 4 -2171 -2169 973 205
		mu 0 4 809 1306 786 153
		f 4 -2172 2169 -4 -996
		mu 0 4 810 1306 1057 80
		f 4 -2174 2174 995 -1198
		mu 0 4 1059 1307 810 80
		f 4 -2175 -2173 974 204
		mu 0 4 810 1307 787 152
		f 4 -2176 2173 -3 -997
		mu 0 4 811 1307 1059 79
		f 4 -2178 2178 997 -1199
		mu 0 4 1061 1308 812 109
		f 4 -2179 -2177 976 202
		mu 0 4 812 1308 789 150
		f 4 -2180 2177 -2 -999
		mu 0 4 813 1308 1061 78
		f 4 -2182 2182 998 -1200
		mu 0 4 1063 1309 813 78
		f 4 -2183 -2181 977 201
		mu 0 4 813 1309 790 149
		f 4 -2184 2181 -1 -1000
		mu 0 4 815 1309 1063 77
		f 4 -2186 2186 1087 -1141
		mu 0 4 986 1310 919 76
		f 4 -2187 -2185 1146 112
		mu 0 4 919 1310 992 69
		f 4 -2188 2185 -60 -1089
		mu 0 4 921 1310 986 75
		f 4 -2190 2190 1003 -1142
		mu 0 4 987 1311 820 143
		f 4 -2191 -2189 1147 196
		mu 0 4 820 1311 993 142
		f 4 -2192 2189 -59 -1090
		mu 0 4 922 1311 987 74
		f 4 -2194 2194 1021 -1143
		mu 0 4 988 1312 841 131
		f 4 -2195 -2193 1148 178
		mu 0 4 841 1312 994 130
		f 4 -2196 2193 -58 -1091
		mu 0 4 923 1312 988 73
		f 4 -2198 2198 1090 -1144
		mu 0 4 989 1313 923 73
		f 4 -2199 -2197 1149 109
		mu 0 4 923 1313 995 66
		f 4 -2200 2197 -57 -1092
		mu 0 4 924 1313 989 72
		f 4 -2202 2202 1039 -1145
		mu 0 4 990 1314 862 119
		f 4 -2203 -2201 1150 160
		mu 0 4 862 1314 996 118
		f 4 -2204 2201 -56 -1093
		mu 0 4 925 1314 990 71
		f 4 -2206 2206 1092 -1146
		mu 0 4 991 1315 925 71
		f 4 -2207 -2205 1151 107
		mu 0 4 925 1315 997 64
		f 4 -2208 2205 -55 -1094
		mu 0 4 927 1315 991 70
		f 4 -2210 2210 1094 -1147
		mu 0 4 992 1316 928 69
		f 4 -2211 -2209 1152 105
		mu 0 4 928 1316 998 62
		f 4 -2212 2209 -54 -1096
		mu 0 4 930 1316 992 68
		f 4 -2214 2214 1004 -1148
		mu 0 4 993 1317 821 142
		f 4 -2215 -2213 1153 195
		mu 0 4 821 1317 999 141
		f 4 -2216 2213 -53 -1097
		mu 0 4 931 1317 993 67
		f 4 -2218 2218 1022 -1149
		mu 0 4 994 1318 842 130
		f 4 -2219 -2217 1154 177
		mu 0 4 842 1318 1000 129
		f 4 -2220 2217 -52 -1098
		mu 0 4 932 1318 994 66
		f 4 -2222 2222 1097 -1150
		mu 0 4 995 1319 932 66
		f 4 -2223 -2221 1155 102
		mu 0 4 932 1319 1001 59
		f 4 -2224 2221 -51 -1099
		mu 0 4 933 1319 995 65
		f 4 -2226 2226 1040 -1151
		mu 0 4 996 1320 863 118
		f 4 -2227 -2225 1156 159
		mu 0 4 863 1320 1002 117
		f 4 -2228 2225 -50 -1100
		mu 0 4 934 1320 996 64
		f 4 -2230 2230 1099 -1152
		mu 0 4 997 1321 934 64
		f 4 -2231 -2229 1157 100
		mu 0 4 934 1321 1003 57
		f 4 -2232 2229 -49 -1101
		mu 0 4 936 1321 997 63
		f 4 -2234 2234 1101 -1153
		mu 0 4 998 1322 937 62
		f 4 -2235 -2233 1158 98
		mu 0 4 937 1322 1004 55
		f 4 -2236 2233 -48 -1103
		mu 0 4 939 1322 998 61
		f 4 -2238 2238 1005 -1154
		mu 0 4 999 1323 822 141
		f 4 -2239 -2237 1159 194
		mu 0 4 822 1323 1006 140
		f 4 -2240 2237 -47 -1104
		mu 0 4 940 1323 999 60
		f 4 -2242 2242 1023 -1155
		mu 0 4 1000 1324 843 129
		f 4 -2243 -2241 1160 176
		mu 0 4 843 1324 1008 128
		f 4 -2244 2241 -46 -1105
		mu 0 4 941 1324 1000 59
		f 4 -2246 2246 1104 -1156
		mu 0 4 1001 1325 941 59
		f 4 -2247 -2245 1161 95
		mu 0 4 941 1325 1010 52
		f 4 -2248 2245 -45 -1106
		mu 0 4 942 1325 1001 58
		f 4 -2250 2250 1041 -1157
		mu 0 4 1002 1326 864 117
		f 4 -2251 -2249 1162 158
		mu 0 4 864 1326 1012 116
		f 4 -2252 2249 -44 -1107
		mu 0 4 943 1326 1002 57
		f 4 -2254 2254 1106 -1158
		mu 0 4 1003 1327 943 57
		f 4 -2255 -2253 1163 93
		mu 0 4 943 1327 1014 50
		f 4 -2256 2253 -43 -1108
		mu 0 4 945 1327 1003 56
		f 4 -2258 2258 1108 -1165
		mu 0 4 1017 1328 946 48
		f 4 -2259 -2257 1170 91
		mu 0 4 946 1328 1028 41
		f 4 -2260 2257 -36 -1110
		mu 0 4 948 1328 1017 47
		f 4 -2262 2262 1006 -1166
		mu 0 4 1019 1329 823 139
		f 4 -2263 -2261 1171 193
		mu 0 4 823 1329 1029 138
		f 4 -2264 2261 -35 -1111
		mu 0 4 949 1329 1019 46
		f 4 -2266 2266 1024 -1167
		mu 0 4 1021 1330 844 127
		f 4 -2267 -2265 1172 175
		mu 0 4 844 1330 1030 126
		f 4 -2268 2265 -34 -1112
		mu 0 4 950 1330 1021 45
		f 4 -2270 2270 1111 -1168
		mu 0 4 1023 1331 950 45
		f 4 -2271 -2269 1173 88
		mu 0 4 950 1331 1031 38
		f 4 -2272 2269 -33 -1113
		mu 0 4 951 1331 1023 44
		f 4 -2274 2274 1042 -1169
		mu 0 4 1025 1332 865 115
		f 4 -2275 -2273 1174 157
		mu 0 4 865 1332 1032 114
		f 4 -2276 2273 -32 -1114
		mu 0 4 952 1332 1025 43
		f 4 -2278 2278 1113 -1170
		mu 0 4 1027 1333 952 43
		f 4 -2279 -2277 1175 86
		mu 0 4 952 1333 1033 36
		f 4 -2280 2277 -31 -1115
		mu 0 4 954 1333 1027 42
		f 4 -2282 2282 1115 -1171
		mu 0 4 1028 1334 955 41
		f 4 -2283 -2281 1176 84
		mu 0 4 955 1334 1034 34
		f 4 -2284 2281 -30 -1117
		mu 0 4 957 1334 1028 40
		f 4 -2286 2286 1007 -1172
		mu 0 4 1029 1335 824 138
		f 4 -2287 -2285 1177 192
		mu 0 4 824 1335 1035 137
		f 4 -2288 2285 -29 -1118
		mu 0 4 958 1335 1029 39
		f 4 -2290 2290 1025 -1173
		mu 0 4 1030 1336 845 126
		f 4 -2291 -2289 1178 174
		mu 0 4 845 1336 1036 125
		f 4 -2292 2289 -28 -1119
		mu 0 4 959 1336 1030 38
		f 4 -2294 2294 1118 -1174
		mu 0 4 1031 1337 959 38
		f 4 -2295 -2293 1179 81
		mu 0 4 959 1337 1037 31
		f 4 -2296 2293 -27 -1120
		mu 0 4 960 1337 1031 37
		f 4 -2298 2298 1043 -1175
		mu 0 4 1032 1338 866 114
		f 4 -2299 -2297 1180 156
		mu 0 4 866 1338 1038 113
		f 4 -2300 2297 -26 -1121
		mu 0 4 961 1338 1032 36
		f 4 -2302 2302 1120 -1176
		mu 0 4 1033 1339 961 36
		f 4 -2303 -2301 1181 79
		mu 0 4 961 1339 1039 29
		f 4 -2304 2301 -25 -1122
		mu 0 4 963 1339 1033 35
		f 4 -2306 2306 1122 -1177
		mu 0 4 1034 1340 964 34
		f 4 -2307 -2305 1182 77
		mu 0 4 964 1340 1040 27
		f 4 -2308 2305 -24 -1124
		mu 0 4 966 1340 1034 33
		f 4 -2310 2310 1008 -1178
		mu 0 4 1035 1341 825 137
		f 4 -2311 -2309 1183 191
		mu 0 4 825 1341 1041 136
		f 4 -2312 2309 -23 -1125
		mu 0 4 967 1341 1035 32
		f 4 -2314 2314 1026 -1179
		mu 0 4 1036 1342 846 125
		f 4 -2315 -2313 1184 173
		mu 0 4 846 1342 1042 124
		f 4 -2316 2313 -22 -1126
		mu 0 4 968 1342 1036 31
		f 4 -2318 2318 1125 -1180
		mu 0 4 1037 1343 968 31
		f 4 -2319 -2317 1185 74
		mu 0 4 968 1343 1043 24
		f 4 -2320 2317 -21 -1127
		mu 0 4 969 1343 1037 30
		f 4 -2322 2322 1044 -1181
		mu 0 4 1038 1344 867 113
		f 4 -2323 -2321 1186 155
		mu 0 4 867 1344 1044 112
		f 4 -2324 2321 -20 -1128
		mu 0 4 970 1344 1038 29
		f 4 -2326 2326 1127 -1182
		mu 0 4 1039 1345 970 29
		f 4 -2327 -2325 1187 72
		mu 0 4 970 1345 1045 22
		f 4 -2328 2325 -19 -1129
		mu 0 4 972 1345 1039 28
		f 4 -2330 2330 1129 233
		mu 0 4 779 1346 973 160
		f 4 -2331 -2329 1188 70
		mu 0 4 973 1346 1046 20
		f 4 -2332 2329 966 -1131
		mu 0 4 975 1346 779 162
		f 4 -2334 2334 1009 235
		mu 0 4 777 1347 826 163
		f 4 -2335 -2333 1189 190
		mu 0 4 826 1347 1047 135
		f 4 -2336 2333 964 -1132
		mu 0 4 976 1347 777 164
		f 4 -2338 2338 1027 237
		mu 0 4 775 1348 847 165
		f 4 -2339 -2337 1190 172
		mu 0 4 847 1348 1048 123
		f 4 -2340 2337 962 -1133
		mu 0 4 977 1348 775 166
		f 4 -2342 2342 1132 238
		mu 0 4 774 1349 977 166
		f 4 -2343 -2341 1191 67
		mu 0 4 977 1349 1049 17
		f 4 -2344 2341 961 -1134
		mu 0 4 978 1349 774 167
		f 4 -2346 2346 1045 240
		mu 0 4 772 1350 868 168
		f 4 -2347 -2345 1192 154
		mu 0 4 868 1350 1050 111
		f 4 -2348 2345 959 -1135
		mu 0 4 979 1350 772 169
		f 4 -2350 2350 1134 241
		mu 0 4 771 1351 979 169
		f 4 -2351 -2349 1193 65
		mu 0 4 979 1351 1051 15
		f 4 -2352 2349 958 -1136
		mu 0 4 981 1351 771 145
		f 4 -2354 2354 901 -900
		mu 0 4 712 1352 714 190
		f 4 -2355 -2353 925 298
		mu 0 4 714 1352 738 181
		f 4 -2356 2353 -301 -899
		mu 0 4 711 1352 712 191
		f 4 -2358 2358 906 -905
		mu 0 4 717 1353 719 188
		f 4 -2359 -2357 932 293
		mu 0 4 719 1353 745 134
		f 4 -2360 2357 -296 -904
		mu 0 4 716 1353 717 189
		f 4 -2362 2362 909 -909
		mu 0 4 721 1354 722 187
		f 4 -2363 -2361 937 290
		mu 0 4 722 1354 750 122
		f 4 -2364 2361 -292 -915
		mu 0 4 727 1354 721 185
		f 4 -2366 2366 914 -913
		mu 0 4 725 1355 727 185
		f 4 -2367 -2365 942 285
		mu 0 4 727 1355 755 10
		f 4 -2368 2365 -288 -912
		mu 0 4 724 1355 725 186
		f 4 -2370 2370 917 -917
		mu 0 4 729 1356 730 184
		f 4 -2371 -2369 947 282
		mu 0 4 730 1356 760 110
		f 4 -2372 2369 -284 -923
		mu 0 4 735 1356 729 182
		f 4 -2374 2374 922 -921
		mu 0 4 733 1357 735 182
		f 4 -2375 -2373 952 277
		mu 0 4 735 1357 765 8
		f 4 -2376 2373 -280 -920
		mu 0 4 732 1357 733 183
		f 4 -2378 2378 926 -926
		mu 0 4 738 1358 739 181
		f 4 -2379 -2377 928 273
		mu 0 4 739 1358 741 180
		f 4 -2380 2377 -275 -925
		mu 0 4 737 1358 738 12
		f 4 -2382 2382 933 -933
		mu 0 4 745 1359 746 134
		f 4 -2383 -2381 934 266
		mu 0 4 746 1359 747 178
		f 4 -2384 2381 -268 -932
		mu 0 4 744 1359 745 11
		f 4 -2386 2386 938 -938
		mu 0 4 750 1360 751 122
		f 4 -2387 -2385 939 261
		mu 0 4 751 1360 752 176
		f 4 -2388 2385 -263 -944
		mu 0 4 756 1360 750 10
		f 4 -2390 2390 943 -943
		mu 0 4 755 1361 756 10
		f 4 -2391 -2389 944 256
		mu 0 4 756 1361 757 175
		f 4 -2392 2389 -258 -942
		mu 0 4 754 1361 755 9
		f 4 -2394 2394 948 -948
		mu 0 4 760 1362 761 110
		f 4 -2395 -2393 949 251
		mu 0 4 761 1362 762 173
		f 4 -2396 2393 -253 -955
		mu 0 4 767 1362 760 8
		f 4 -2398 2398 954 -953
		mu 0 4 765 1363 767 8
		f 4 -2399 -2397 955 245
		mu 0 4 767 1363 768 171
		f 4 -2400 2397 -248 -952
		mu 0 4 764 1363 765 172;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "output";
	rename -uid "A48DFCD5-4A1E-6311-EC3C-F1AD4873208E";
createNode mesh -n "outputShape" -p "output";
	rename -uid "AEF9AAFF-4BF3-13F0-1912-3EBC4CE84D99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "24586B32-4161-4959-262F-A482CE8F8B1F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2AD9A099-407D-2D9A-A2AC-7F84ECE7960F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9B0AF9C7-4F85-E18D-565F-56AB723081B4";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F39F9B8-4EB1-A2E9-F67D-D7B311A0B765";
createNode displayLayer -n "defaultLayer";
	rename -uid "C4CFE711-42CD-F7E9-B490-0F9350ACE67E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A6E1A0B1-4AD1-0436-82EC-1D8BB7524F8B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8D94D625-4A87-6173-8F6B-4182EE0AF85A";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2A9DD2B6-4DEE-917E-1E50-1CAFCB5DAAE9";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "9C336097-4DC6-A1A0-343E-E2BD29F5D5AB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F04051E1-4160-8FEF-297C-D68BB0C46128";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "16D2C885-4822-835B-8383-17B2CBF93312";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EEC6F42B-468B-FFE4-6033-E8B47BA144EC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1071\n            -height 829\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1071\\n    -height 829\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1071\\n    -height 829\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C07172D0-4880-43EB-0CD4-7DAD5CE2D81F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "53840BE3-4382-E2A7-E24C-5FBD51D2D1E2";
	setAttr ".cuv" 4;
createNode bifrostGeoToMaya -n "bifrostGeoToMaya1";
	rename -uid "12650E87-4B39-DE91-0F9A-E4A7E4084124";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2F084FFB-44EA-3D6A-E1A2-EB9B4EF4FE14";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -795.23807298792144 -435.81931556929982 ;
	setAttr ".tgi[0].vh" -type "double2" 804.76188213328874 446.53360085783805 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 368.57144165039062;
	setAttr ".tgi[0].ni[0].y" 148.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 368.57144165039062;
	setAttr ".tgi[0].ni[1].y" 47.142856597900391;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 61.428569793701172;
	setAttr ".tgi[0].ni[2].y" 148.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -553.69744873046875;
	setAttr ".tgi[0].ni[3].y" 198.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -245.71427917480469;
	setAttr ".tgi[0].ni[4].y" 97.142860412597656;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -552.85711669921875;
	setAttr ".tgi[0].ni[5].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 368.57144165039062;
	setAttr ".tgi[0].ni[6].y" -134.28572082519531;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -552.85711669921875;
	setAttr ".tgi[0].ni[7].y" 97.142860412597656;
	setAttr ".tgi[0].ni[7].nvs" 18304;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "1F2775A3-48FC-C989-884C-0ABD9657C1A4";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
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
connectAttr "inputShape.w" "mesh_collisionShape.deform_mesh";
connectAttr "collision_meshShape.w" "mesh_collisionShape.collision_mesh";
connectAttr ":time1.o" "mesh_collisionShape.JobPorts__time";
connectAttr "bifrostGeoToMaya1.mm[0]" "outputShape.i";
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
connectAttr "mesh_collisionShape.out_geometry" "bifrostGeoToMaya1.bg";
connectAttr "outputShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr ":initialShadingGroup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "bifrostGeoToMaya1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "collision_meshShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "mesh_collisionShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "inputShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "mesh_collision.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr ":time1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "mesh_collisionShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "outputShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "collision_meshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "inputShape.iog" ":initialShadingGroup.dsm" -na;
// End of mesh_collision_sample.ma
