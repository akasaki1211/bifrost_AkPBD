//Maya ASCII 2024 scene
//Name: hinge_joint_sample_ES.ma
//Last modified: Tue, Mar 19, 2024 03:54:48 PM
//Codeset: 932
requires maya "2024";
requires -nodeType "bifrostGraphShape" -dataType "bifData" "bifrostGraph" "2.7.1.1-202310160905-e41ddfc";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "BC80AC93-4DE4-0F39-9FCB-B09545C804C2";
createNode transform -n "hingeJoint";
	rename -uid "F5BF9DD9-4F60-6EA5-00A1-FC869645A0BD";
createNode bifrostGraphShape -n "hingeJointShape" -p "hingeJoint";
	rename -uid "63E8CB7B-46A9-C9BF-9F57-04BCE455C981";
	addAttr -r false -ci true -k true -sn "initial_position" -ln "initial_position" 
		-at "float3" -nc 3;
	addAttr -r false -ci true -k true -sn "initial_positionx" -ln "initial_positionx" 
		-at "float" -p "initial_position";
	addAttr -r false -ci true -k true -sn "initial_positiony" -ln "initial_positiony" 
		-at "float" -p "initial_position";
	addAttr -r false -ci true -k true -sn "initial_positionz" -ln "initial_positionz" 
		-at "float" -p "initial_position";
	addAttr -r false -ci true -k true -sn "initial_velocity" -ln "initial_velocity" 
		-at "float3" -nc 3;
	addAttr -r false -ci true -k true -sn "initial_velocityx" -ln "initial_velocityx" 
		-at "float" -p "initial_velocity";
	addAttr -r false -ci true -k true -sn "initial_velocityy" -ln "initial_velocityy" 
		-at "float" -p "initial_velocity";
	addAttr -r false -ci true -k true -sn "initial_velocityz" -ln "initial_velocityz" 
		-at "float" -p "initial_velocity";
	addAttr -r false -ci true -k true -sn "start_frame" -ln "start_frame" -at "float";
	addAttr -r false -ci true -k true -sn "damping" -ln "damping" -at "float";
	addAttr -r false -ci true -k true -sn "elasticity" -ln "elasticity" -at "float";
	addAttr -r false -ci true -k true -sn "mass" -ln "mass" -at "float";
	addAttr -r false -ci true -k true -sn "stiffness" -ln "stiffness" -at "float";
	addAttr -r false -ci true -k true -sn "use_gravity" -ln "use_gravity" -min 0 -max 
		1 -at "bool";
	addAttr -w false -ci true -sn "output_position" -ln "output_position" -at "float3" 
		-nc 3;
	addAttr -w false -ci true -sn "output_positionx" -ln "output_positionx" -at "float" 
		-p "output_position";
	addAttr -w false -ci true -sn "output_positiony" -ln "output_positiony" -at "float" 
		-p "output_position";
	addAttr -w false -ci true -sn "output_positionz" -ln "output_positionz" -at "float" 
		-p "output_position";
	addAttr -w false -ci true -sn "output_velocity" -ln "output_velocity" -at "float3" 
		-nc 3;
	addAttr -w false -ci true -sn "output_velocityx" -ln "output_velocityx" -at "float" 
		-p "output_velocity";
	addAttr -w false -ci true -sn "output_velocityy" -ln "output_velocityy" -at "float" 
		-p "output_velocity";
	addAttr -w false -ci true -sn "output_velocityz" -ln "output_velocityz" -at "float" 
		-p "output_velocity";
	addAttr -r false -ci true -k true -sn "parent_position" -ln "parent_position" -at "float3" 
		-nc 3;
	addAttr -r false -ci true -k true -sn "parent_positionx" -ln "parent_positionx" 
		-at "float" -p "parent_position";
	addAttr -r false -ci true -k true -sn "parent_positiony" -ln "parent_positiony" 
		-at "float" -p "parent_position";
	addAttr -r false -ci true -k true -sn "parent_positionz" -ln "parent_positionz" 
		-at "float" -p "parent_position";
	addAttr -r false -ci true -k true -sn "plane_matrix" -ln "plane_matrix" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "JobPorts__time" -ln "JobPorts__time" -at "time";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"namespaces\": [],\n    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"hingeJointShape\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"input\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-892.94 -70.7649\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"initial_position\"\n                                                },\n                                                {\n                                                    \"metaName\": \"initial_velocity\"\n                                                },\n                                                {\n                                                    \"metaName\": \"start_frame\"\n                                                },\n                                                {\n                                                    \"metaName\": \"damping\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"elasticity\"\n                                                },\n                                                {\n                                                    \"metaName\": \"mass\"\n                                                },\n                                                {\n                                                    \"metaName\": \"stiffness\"\n                                                },\n                                                {\n                                                    \"metaName\": \"use_gravity\"\n                                                },\n                                                {\n                                                    \"metaName\": \"parent_position\"\n                                                },\n                                                {\n                                                    \"metaName\": \"plane_matrix\"\n                                                }\n"
		+ "                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"31.000000\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"output\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-59.7487 -184.412\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"output_position\"\n                                                },\n                                                {\n                                                    \"metaName\": \"output_velocity\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"33.000000\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Core::Constants,float\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,AkPBD::Utils,distance\"\n                },\n                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"-801 -533 1602 1066\"\n                },\n                {\n                    \"metaName\": \"internal\",\n                    \"metaValue\": \"true\"\n                }\n"
		+ "            ],\n            \"ports\": [\n                {\n                    \"portName\": \"initial_position\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"initial_velocity\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"start_frame\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"damping\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"elasticity\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"mass\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n"
		+ "                },\n                {\n                    \"portName\": \"stiffness\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"float\"\n                },\n                {\n                    \"portName\": \"use_gravity\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"bool\"\n                },\n                {\n                    \"portName\": \"output_position\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"output_velocity\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"parent_position\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"plane_matrix\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\"\n"
		+ "                }\n            ],\n            \"compounds\": [\n                {\n                    \"name\": \"pbd\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-1136.94 -174.83\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"position\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"velocity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"initial_position\"\n                                                        },\n                                                        {\n"
		+ "                                                            \"metaName\": \"initial_velocity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"start_frame\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"damping\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"elasticity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"mass\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"stiffness\"\n"
		+ "                                                        },\n                                                        {\n                                                            \"metaName\": \"use_gravity\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"parent_position\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"length\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"plane_matrix\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"32.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1057.53 123.766\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output_position\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"output_velocity\"\n                                                        }\n                                                    ]\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"37.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"Project Force Vector onto Plane\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28c85252\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1159.39 -642.178 501.11 337\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop1\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Project Point onto Plane\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28c85252\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-11.8812 -380.54 305.009 375.861\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Core,verlet\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,AkPBD::Utils,project_onto_plane\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Constants,float\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Conversion,vector4_to_vector3\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Conversion,vector3_to_vector4\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1043.85 -995.325 2428.18 1615.75\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"position\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float3\",\n                            \"linkedFeedbackPort\": \"output_position\"\n                        },\n                        {\n                            \"portName\": \"velocity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float3\",\n                            \"linkedFeedbackPort\": \"output_velocity\"\n                        },\n                        {\n                            \"portName\": \"initial_position\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float3\"\n                        },\n"
		+ "                        {\n                            \"portName\": \"initial_velocity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float3\"\n                        },\n                        {\n                            \"portName\": \"start_frame\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"damping\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"elasticity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"mass\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n"
		+ "                        {\n                            \"portName\": \"stiffness\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"use_gravity\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"bool\"\n                        },\n                        {\n                            \"portName\": \"output_position\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"output_velocity\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"parent_position\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float3\"\n                        },\n                        {\n                            \"portName\": \"length\",\n"
		+ "                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"plane_matrix\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Math::float4x4\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"keep_position\",\n                            \"nodeType\": \"AkPBD::Core::keep_position\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-266.487 -356.805\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"update_velocity\",\n                            \"nodeType\": \"AkPBD::Core::update_velocity\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"526.363 75.8024\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"35.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"reset\",\n                            \"nodeType\": \"AkPBD::Core::reset\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"812.931 124.017\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"distance_constraint\",\n                            \"nodeType\": \"AkPBD::Constraint::distance_constraint\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"288.508 -61.5849\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value\",\n                            \"valueType\": \"Math::float3\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1149.39 -490.412\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"31.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"project_onto_plane\",\n                            \"nodeType\": \"AkPBD::Utils::project_onto_plane\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"30.5 -247\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"project_onto_plane1\",\n                            \"nodeType\": \"AkPBD::Utils::project_onto_plane\",\n                            \"metadata\": [\n                                {\n"
		+ "                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-897.5 -559\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"39.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"verlet\",\n                            \"nodeType\": \"AkPBD::Core::verlet\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"54.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-526.5 -619\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \".initial_velocity\",\n                            \"target\": \"reset.reset_velocity\"\n                        },\n                        {\n                            \"source\": \".stiffness\",\n                            \"target\": \"keep_position.stiffness\"\n"
		+ "                        },\n                        {\n                            \"source\": \".position\",\n                            \"target\": \"keep_position.prev_position\"\n                        },\n                        {\n                            \"source\": \".position\",\n                            \"target\": \"update_velocity.prev_position\"\n                        },\n                        {\n                            \"source\": \"update_velocity.velocity\",\n                            \"target\": \"reset.velocity\"\n                        },\n                        {\n                            \"source\": \".initial_position\",\n                            \"target\": \"reset.reset_position\"\n                        },\n                        {\n                            \"source\": \"reset.output_position\",\n                            \"target\": \".output_position\"\n                        },\n                        {\n                            \"source\": \"reset.output_velocity\",\n                            \"target\": \".output_velocity\"\n"
		+ "                        },\n                        {\n                            \"source\": \".parent_position\",\n                            \"target\": \"distance_constraint.parent_position\"\n                        },\n                        {\n                            \"source\": \".length\",\n                            \"target\": \"distance_constraint.length\"\n                        },\n                        {\n                            \"source\": \"distance_constraint.updated_position\",\n                            \"target\": \"update_velocity.position\"\n                        },\n                        {\n                            \"source\": \"distance_constraint.updated_position\",\n                            \"target\": \"reset.position\"\n                        },\n                        {\n                            \"source\": \".start_frame\",\n                            \"target\": \"reset.start_frame\"\n                        },\n                        {\n                            \"source\": \"keep_position.updated_position\",\n"
		+ "                            \"target\": \"project_onto_plane.input\"\n                        },\n                        {\n                            \"source\": \".plane_matrix\",\n                            \"target\": \"project_onto_plane.plane_matrix\"\n                        },\n                        {\n                            \"source\": \"project_onto_plane.projected_point\",\n                            \"target\": \"distance_constraint.position\"\n                        },\n                        {\n                            \"source\": \".plane_matrix\",\n                            \"target\": \"project_onto_plane1.plane_matrix\"\n                        },\n                        {\n                            \"source\": \"value.output\",\n                            \"target\": \"project_onto_plane1.input\"\n                        },\n                        {\n                            \"source\": \".position\",\n                            \"target\": \"verlet.position\"\n                        },\n                        {\n                            \"source\": \".velocity\",\n"
		+ "                            \"target\": \"verlet.velocity\"\n                        },\n                        {\n                            \"source\": \".initial_position\",\n                            \"target\": \"verlet.initial_position\"\n                        },\n                        {\n                            \"source\": \".damping\",\n                            \"target\": \"verlet.damping\"\n                        },\n                        {\n                            \"source\": \".elasticity\",\n                            \"target\": \"verlet.elasticity\"\n                        },\n                        {\n                            \"source\": \".mass\",\n                            \"target\": \"verlet.mass\"\n                        },\n                        {\n                            \"source\": \".use_gravity\",\n                            \"target\": \"verlet.use_gravity\"\n                        },\n                        {\n                            \"source\": \"project_onto_plane1.projected_vector\",\n                            \"target\": \"verlet.gravity\"\n"
		+ "                        },\n                        {\n                            \"source\": \"verlet.updated_position\",\n                            \"target\": \"keep_position.position\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"reset.position\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"reset.velocity\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value.value\",\n"
		+ "                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"-980f\",\n                                \"z\": \"0f\"\n                            }\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"pbd\",\n                    \"nodeType\": \"pbd\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"-311.334 -184.761\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"35.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"distance\",\n                    \"nodeType\": \"AkPBD::Utils::distance\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-595.421 244.31\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"32.000000\"\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \".initial_position\",\n                    \"target\": \"pbd.initial_position\"\n                },\n                {\n                    \"source\": \".initial_velocity\",\n                    \"target\": \"pbd.initial_velocity\"\n                },\n                {\n                    \"source\": \".initial_position\",\n                    \"target\": \"pbd.position\"\n                },\n                {\n                    \"source\": \".initial_velocity\",\n                    \"target\": \"pbd.velocity\"\n                },\n                {\n                    \"source\": \".damping\",\n                    \"target\": \"pbd.damping\"\n                },\n                {\n                    \"source\": \".elasticity\",\n                    \"target\": \"pbd.elasticity\"\n                },\n                {\n"
		+ "                    \"source\": \".mass\",\n                    \"target\": \"pbd.mass\"\n                },\n                {\n                    \"source\": \".stiffness\",\n                    \"target\": \"pbd.stiffness\"\n                },\n                {\n                    \"source\": \".use_gravity\",\n                    \"target\": \"pbd.use_gravity\"\n                },\n                {\n                    \"source\": \"pbd.output_position\",\n                    \"target\": \".output_position\"\n                },\n                {\n                    \"source\": \"pbd.output_velocity\",\n                    \"target\": \".output_velocity\"\n                },\n                {\n                    \"source\": \".parent_position\",\n                    \"target\": \"pbd.parent_position\"\n                },\n                {\n                    \"source\": \".initial_position\",\n                    \"target\": \"distance.vector_1\"\n                },\n                {\n                    \"source\": \".parent_position\",\n                    \"target\": \"distance.vector_2\"\n"
		+ "                },\n                {\n                    \"source\": \"distance.distance\",\n                    \"target\": \"pbd.length\"\n                },\n                {\n                    \"source\": \".plane_matrix\",\n                    \"target\": \"pbd.plane_matrix\"\n                },\n                {\n                    \"source\": \".start_frame\",\n                    \"target\": \"pbd.start_frame\"\n                }\n            ],\n            \"values\": [\n                {\n                    \"valueName\": \"pbd.position\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"pbd.velocity\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n"
		+ "                {\n                    \"valueName\": \"pbd.initial_position\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"pbd.initial_velocity\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"pbd.start_frame\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.damping\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.elasticity\",\n                    \"valueType\": \"float\",\n"
		+ "                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.mass\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.stiffness\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"pbd.use_gravity\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"pbd.parent_position\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"pbd.length\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                }\n            ],\n            \"reservedNodeNames\": [\n"
		+ "                {\n                    \"name\": \"input\"\n                },\n                {\n                    \"name\": \"output\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr -k on ".initial_position";
	setAttr -k on ".damping" 0.05000000074505806;
	setAttr -k on ".elasticity" 5;
	setAttr -k on ".mass" 1;
	setAttr -k on ".use_gravity" yes;
	setAttr -k on ".parent_position";
	setAttr -k on ".plane_matrix";
	setAttr -k on ".JobPorts__time";
createNode transform -n "root";
	rename -uid "7B4116A1-4D05-B08C-468E-3DB8792D6651";
	setAttr ".t" -type "double3" 0 11.24909552939269 0 ;
	setAttr ".r" -type "double3" 36.685037083247543 -33.84951772354971 27.843478589232809 ;
createNode transform -n "parent" -p "root";
	rename -uid "812D27EE-464D-0C10-8165-C88FCF693FCC";
	setAttr ".v" no;
createNode transform -n "input" -p "root";
	rename -uid "4C490FE1-4DF9-1879-45D6-69A9B3EB09A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10 0 0 ;
createNode locator -n "inputShape" -p "input";
	rename -uid "74D87C5F-494F-16E5-A234-E287C3465AE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "output" -p "root";
	rename -uid "C6423896-4F79-EDBF-FFD0-E1B0D074B44C";
	setAttr ".v" no;
createNode transform -n "plane" -p "root";
	rename -uid "039462D0-4C10-DC0E-0D25-1EB98E8989C9";
	setAttr ".v" no;
createNode nurbsSurface -n "planeShape" -p "plane";
	rename -uid "E7CA68AC-4422-C7C6-8614-48A66C502424";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "group1" -p "root";
	rename -uid "C754A23A-4852-4A59-EEDA-15A5E9A7FBD1";
createNode transform -n "pCylinder1" -p "group1";
	rename -uid "C0508B5F-454F-EB5F-31BF-D9B163511338";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "613436BE-43BF-D69C-FC4C-818037F5F577";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube1" -p "group1";
	rename -uid "B32E3C19-4ABE-2C6D-8FB4-9983DCD2F749";
	setAttr ".t" -type "double3" 5 0 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "9E2DF48B-4289-7C78-E46F-0A9175952C75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 5.7220459e-06 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.7220459e-06 0 0 ;
	setAttr ".pt[5]" -type "float3" 5.7220459e-06 0 0 ;
	setAttr ".pt[7]" -type "float3" 5.7220459e-06 0 0 ;
createNode transform -n "pSphere1" -p "group1";
	rename -uid "50417DD4-4BEB-E48F-C1F9-F5BBFB467B82";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "1B0A9AE7-4016-2630-0440-899CA1D274C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode aimConstraint -n "group2_aimConstraint1" -p "group1";
	rename -uid "A8ECF464-40EF-4507-F3FD-E4A9FE391D79";
	addAttr -dcb 0 -ci true -sn "w0" -ln "outputW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "pCylinder2" -p "root";
	rename -uid "5099CE72-4398-8F29-E1FC-C78DBCA5072B";
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "E31BE768-4D62-6B8A-3A21-0995AF8F509E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "8F0FC6D2-4CDD-56B8-77C6-719C5A9AFA53";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "48A57234-482F-F8A4-CFB4-84B3DCAF7068";
createNode vectorProduct -n "vectorProduct1";
	rename -uid "B3C5F4D0-4D49-2A4D-320D-779D2D99124E";
	setAttr ".op" 4;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "8F6F49BE-4522-1A17-FCD5-14B9FBD67F03";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 36.2;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "5732B028-447E-F3D1-7369-B699767CB149";
	setAttr ".r" 1.5;
	setAttr ".sa" 32;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "materialInfo1";
	rename -uid "D76D84B3-4C8D-171F-C3F0-549EB37A696C";
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "EDF01EAD-4770-2761-D732-50A50541CCA2";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode standardSurface -n "standardSurface2";
	rename -uid "2779BD4A-4BE3-06F9-4E56-2781908BBC98";
	setAttr ".bc" -type "float3" 0.26160002 0.46867761 0.80000001 ;
createNode polyCube -n "polyCube1";
	rename -uid "EDB14FE3-4384-EA85-0BA4-FFAD719EE363";
	setAttr ".w" 10;
	setAttr ".cuv" 4;
createNode polySphere -n "polySphere1";
	rename -uid "E0FA0AC9-483D-3BF3-ECDA-048A59432F4A";
createNode polyCylinder -n "polyCylinder2";
	rename -uid "A7716DCF-4DC5-F3CE-FC9D-019477C6D98A";
	setAttr ".h" 9.6000000000000014;
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8B760B24-409C-D4B5-32A6-9EB450D23076";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
	setAttr -av ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".hfc";
	setAttr -av ".hfcr";
	setAttr -av ".hfcg";
	setAttr -av ".hfcb";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blat";
	setAttr -av ".msaa";
	setAttr -av ".aasc";
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 3 ".dsm";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -av ".outf";
	setAttr -av ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av ".an";
	setAttr -k on ".ar";
	setAttr -av ".fs";
	setAttr -av ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -k on ".me";
	setAttr -k on ".se";
	setAttr -av -k on ".be";
	setAttr -av -k on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -av ".pff";
	setAttr -av ".peie";
	setAttr -av ".ifp";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av ".pram";
	setAttr -av ".poam";
	setAttr -av ".prlm";
	setAttr -av ".polm";
	setAttr -av ".prm";
	setAttr -av ".pom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -cb on ".ope";
	setAttr -av -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -cb on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -cb on ".isu";
	setAttr -av -cb on ".pdu";
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
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
connectAttr "decomposeMatrix1.ot" "hingeJointShape.parent_position";
connectAttr "decomposeMatrix2.ot" "hingeJointShape.initial_position";
connectAttr "plane.wm" "hingeJointShape.plane_matrix";
connectAttr ":time1.o" "hingeJointShape.JobPorts__time";
connectAttr "vectorProduct1.o" "output.t";
connectAttr "makeNurbPlane1.os" "planeShape.cr";
connectAttr "group2_aimConstraint1.crx" "group1.rx";
connectAttr "group2_aimConstraint1.cry" "group1.ry";
connectAttr "group2_aimConstraint1.crz" "group1.rz";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "group1.pim" "group2_aimConstraint1.cpim";
connectAttr "group1.t" "group2_aimConstraint1.ct";
connectAttr "group1.rp" "group2_aimConstraint1.crp";
connectAttr "group1.rpt" "group2_aimConstraint1.crt";
connectAttr "group1.ro" "group2_aimConstraint1.cro";
connectAttr "output.t" "group2_aimConstraint1.tg[0].tt";
connectAttr "output.rp" "group2_aimConstraint1.tg[0].trp";
connectAttr "output.rpt" "group2_aimConstraint1.tg[0].trt";
connectAttr "output.pm" "group2_aimConstraint1.tg[0].tpm";
connectAttr "group2_aimConstraint1.w0" "group2_aimConstraint1.tg[0].tw";
connectAttr "root.wm" "group2_aimConstraint1.wum";
connectAttr "polyCylinder2.out" "pCylinderShape2.i";
connectAttr "parent.wm" "decomposeMatrix1.imat";
connectAttr "input.wm" "decomposeMatrix2.imat";
connectAttr "output.pim" "vectorProduct1.m";
connectAttr "hingeJointShape.output_position" "vectorProduct1.i1";
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "pSphereShape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "pCubeShape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "standardSurface2SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "vectorProduct1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hingeJointShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "planeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
// End of hinge_joint_sample_ES.ma
