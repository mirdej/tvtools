{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 87.0, 1416.0, 993.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 2,
		"toptoolbarpinned" : 2,
		"righttoolbarpinned" : 2,
		"bottomtoolbarpinned" : 2,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 702.0, 312.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 758.0, 413.0, 53.0, 22.0 ],
					"text" : "TV.Clips"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 802.5, 534.5, 150.0, 22.0 ],
					"text" : "conformpath max absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 729.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 459.0, 758.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 162.0, 712.0, 116.0, 22.0 ],
					"text" : "route playlist update"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 498.0, 753.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 498.0, 780.0, 93.0, 22.0 ],
					"text" : "#0_playllist_dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 841.0, 53.0, 22.0 ],
					"text" : "pack s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 871.0, 76.0, 22.0 ],
					"text" : "s #0_jweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 804.0, 45.0, 22.0 ],
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.5, 470.0, 79.0, 22.0 ],
					"text" : "prepend path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 894.0, 197.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.5, 369.5, 57.0, 22.0 ],
					"text" : "~/Movies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 889.5, 389.0, 159.0, 22.0 ],
					"text" : "conformpath native absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.5, 432.5, 115.0, 22.0 ],
					"text" : "combine s / TV.Quiz"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 698.0, 695.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 687.0, 630.5, 65.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.0, 630.5, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 162.0, 675.0, 268.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 1,
						"defer" : 0,
						"watch" : 1
					}
,
					"text" : "node.script autoloader.js @autostart 1 @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 600.5, 340.0, 37.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 618.5, 312.0, 43.0, 22.0 ],
					"text" : "* 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 600.5, 278.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.5, 247.0, 77.0, 22.0 ],
					"text" : "loadmess #1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 781.0, 226.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 150.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 698.0, 356.0, 80.0, 22.0 ],
					"text" : "loadmess #2 "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.75, 442.0, 82.0, 22.0 ],
					"text" : "prepend send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 319.75, 416.0, 105.0, 22.0 ],
					"text" : "combine s _movie"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.75, 389.0, 77.0, 22.0 ],
					"text" : "loadmess #1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.75, 398.0, 80.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.75, 498.0, 49.0, 22.0 ],
					"text" : "forward"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 201.0, 159.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 364.0, 275.0, 52.0, 22.0 ],
									"text" : "togedge"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 364.0, 249.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 364.0, 217.0, 42.0, 22.0 ],
									"text" : "> 0.99"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 192.0, 187.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 189.0, 145.0, 81.0, 22.0 ],
									"text" : "route position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 86.0, 70.0, 22.0 ],
									"text" : "get position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 170.0, 60.0, 76.0, 22.0 ],
									"text" : "qmetro 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 170.0, 113.0, 76.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "dict Movie_1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 406.5, 75.0, 22.0 ],
									"text" : "s #0_jweb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 343.5, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 39.0, 70.0, 22.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 376.5, 31.0, 22.0 ],
									"text" : "next"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-107",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 76.0, 209.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-109",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 72.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 1,
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 140.25, 573.0, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p autostep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.25, 604.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 182.25, 615.0, 150.0, 20.0 ],
					"text" : "Autostep",
					"textcolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.25, 738.0, 86.0, 22.0 ],
					"text" : "r #0_playlist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.0, 325.0, 51.0, 49.0 ],
									"text" : "r #0_jweb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 276.0, 111.0, 22.0 ],
									"text" : "readfile filmlist.html"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 83.5, 100.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 145.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 351.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 175.0, 150.0, 83.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p jwebhandler"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 175.0, 356.0, 111.0, 22.0 ],
					"text" : "route selected path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 175.0, 189.0, 329.0, 155.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 3.0, 332.0, 978.0 ],
					"rendermode" : 0,
					"url" : "file://filmlist.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 293.25, 860.0, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict #0_playllist_dict"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 20.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/00-Jingle.mov",
								"filename" : "00-Jingle.mov",
								"filekind" : "moviefile",
								"id" : "u099004019",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/01_Dosenbach.mov",
								"filename" : "01_Dosenbach.mov",
								"filekind" : "moviefile",
								"id" : "u489004032",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/02_Coop.mov",
								"filename" : "02_Coop.mov",
								"filekind" : "moviefile",
								"id" : "u954004045",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/03-La posta.mov",
								"filename" : "03-La posta.mov",
								"filekind" : "moviefile",
								"id" : "u996004058",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/04_Spitex.mov",
								"filename" : "04_Spitex.mov",
								"filekind" : "moviefile",
								"id" : "u335004071",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/05_1_Quiz_Deutsch.mov",
								"filename" : "05_1_Quiz_Deutsch.mov",
								"filekind" : "moviefile",
								"id" : "u605004088",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/05_2_Quiz_Tamilisch.mov",
								"filename" : "05_2_Quiz_Tamilisch.mov",
								"filekind" : "moviefile",
								"id" : "u147004101",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/05_3_Quiz_Portugiesisch.mov",
								"filename" : "05_3_Quiz_Portugiesisch.mov",
								"filekind" : "moviefile",
								"id" : "u047004114",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/05_4_Quiz_Albanisch.mov",
								"filename" : "05_4_Quiz_Albanisch.mov",
								"filekind" : "moviefile",
								"id" : "u331004127",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/05_5_Quiz_Yoroba.mov",
								"filename" : "05_5_Quiz_Yoroba.mov",
								"filekind" : "moviefile",
								"id" : "u902004140",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/13_WetzikonDoku.mov",
								"filename" : "13_WetzikonDoku.mov",
								"filekind" : "moviefile",
								"id" : "u136004153",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/14_Berrylicious.mov",
								"filename" : "14_Berrylicious.mov",
								"filekind" : "moviefile",
								"id" : "u576004166",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/15_Schreinerei.mov",
								"filename" : "15_Schreinerei.mov",
								"filekind" : "moviefile",
								"id" : "u472004179",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/16_yara shop.mov",
								"filename" : "16_yara shop.mov",
								"filekind" : "moviefile",
								"id" : "u305004192",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/17-takko.mov",
								"filename" : "17-takko.mov",
								"filekind" : "moviefile",
								"id" : "u291004205",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/18_Sky Bowling.mov",
								"filename" : "18_Sky Bowling.mov",
								"filekind" : "moviefile",
								"id" : "u697004218",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/99-SchulTV-Abspann1080p25.mov",
								"filename" : "99-SchulTV-Abspann1080p25.mov",
								"filekind" : "moviefile",
								"id" : "u115004231",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/C_Horizont1.m4v",
								"filename" : "C_Horizont1.m4v",
								"filekind" : "moviefile",
								"id" : "u263004244",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/D_Luft1.m4v",
								"filename" : "D_Luft1.m4v",
								"filekind" : "moviefile",
								"id" : "u116004257",
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "/Users/tv//Movies/TV.Clips/demoteam.m4v",
								"filename" : "demoteam.m4v",
								"filekind" : "moviefile",
								"id" : "u426004270",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"drawto" : "",
					"id" : "obj-28",
					"loop" : 0,
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "", "dictionary" ],
					"output_texture" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 162.25, 756.5, 150.0, 92.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 696.5, 664.75, 171.5, 664.75 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 623.5, 664.75, 171.5, 664.75 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 610.0, 657.0, 171.5, 657.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "00-Jingle.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "01_Dosenbach.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "02_Coop.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "03-La posta.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "04_Spitex.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "05_1_Quiz_Deutsch.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "05_2_Quiz_Tamilisch.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "05_3_Quiz_Portugiesisch.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "05_4_Quiz_Albanisch.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "05_5_Quiz_Yoroba.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "13_WetzikonDoku.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "14_Berrylicious.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "15_Schreinerei.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "16_yara shop.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "17-takko.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "18_Sky Bowling.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "99-SchulTV-Abspann1080p25.mov",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "C_Horizont1.m4v",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "M4V",
				"implicit" : 1
			}
, 			{
				"name" : "D_Luft1.m4v",
				"bootpath" : "~/Movies/Melchior/melchior_stuff_july_2022/Initiation2018/examples",
				"patcherrelativepath" : "../../../Movies/Melchior/melchior_stuff_july_2022/Initiation2018/examples",
				"type" : "M4V",
				"implicit" : 1
			}
, 			{
				"name" : "autoloader.js",
				"bootpath" : "~/Documents/titler2023/Support",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "demoteam.m4v",
				"bootpath" : "~/Movies/TV.Clips",
				"patcherrelativepath" : "../../../Movies/TV.Clips",
				"type" : "M4V",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
