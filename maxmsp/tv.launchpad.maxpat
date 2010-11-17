{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 44.0, 1162.0, 966.0 ],
		"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 44.0, 1162.0, 966.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "col",
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 473.0, 246.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t lights.on",
					"id" : "obj-22",
					"numoutlets" : 1,
					"outlettype" : [ "lights.on" ],
					"fontname" : "Arial",
					"patching_rect" : [ 336.0, 796.0, 62.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t lights.off",
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "lights.off" ],
					"fontname" : "Arial",
					"patching_rect" : [ 276.0, 796.0, 62.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.status",
					"id" : "obj-20",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 276.0, 828.0, 65.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Reload",
					"presentation" : 1,
					"id" : "obj-26",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.411765, 0.470588, 0.533333, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 113.0, 98.5, 101.0, 19.0 ],
					"patching_rect" : [ 749.0, 220.5, 52.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Open Folder...",
					"presentation" : 1,
					"id" : "obj-23",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.411765, 0.470588, 0.533333, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 8.0, 98.5, 101.0, 19.0 ],
					"patching_rect" : [ 623.0, 217.5, 95.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "version 100213",
					"presentation" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande",
					"presentation_rect" : [ 984.0, 37.0, 91.0, 18.0 ],
					"patching_rect" : [ 433.0, 53.0, 173.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[ a n y m a | launchpad ]",
					"presentation" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 851.0, 11.0, 235.0, 28.0 ],
					"patching_rect" : [ 249.0, 43.0, 315.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p remainingTime",
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 422.0, 457.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-104",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 280.0, 193.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frgb 255 50 50",
									"id" : "obj-100",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 354.0, 228.0, 88.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frgb 219 219 219",
									"id" : "obj-98",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 230.0, 101.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "togedge",
									"id" : "obj-95",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 307.0, 199.0, 54.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_timescale",
									"id" : "obj-94",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 252.0, 100.0, 107.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> -30",
									"id" : "obj-91",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 308.0, 174.0, 38.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/",
									"id" : "obj-89",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 308.0, 151.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 119.0, 203.0, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p niceTime",
									"id" : "obj-64",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 119.0, 181.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 1.",
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_timescale",
													"id" : "obj-60",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"id" : "obj-31",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t +",
													"id" : "obj-52",
													"numoutlets" : 1,
													"outlettype" : [ "+" ],
													"fontname" : "Arial",
													"patching_rect" : [ 80.0, 219.0, 24.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t -",
													"id" : "obj-51",
													"numoutlets" : 1,
													"outlettype" : [ "-" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-50",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"id" : "obj-49",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_fps",
													"id" : "obj-48",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"id" : "obj-47",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-44",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"id" : "obj-43",
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<= 0.",
													"id" : "obj-42",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 74.0, 142.0, 38.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%.2d:%.2d:%.2d",
													"id" : "obj-38",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 60",
													"id" : "obj-36",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 60",
													"id" : "obj-35",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-53",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-54",
													"numoutlets" : 0,
													"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-38", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-38", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0",
									"id" : "obj-63",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 119.0, 155.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_outpoint",
									"id" : "obj-61",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 133.0, 105.0, 99.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-58",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 105.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 308.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 140.0, 128.5, 140.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-89", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 1 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "select 0 0",
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ -11.0, 267.0, 62.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"id" : "obj-4",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 139.0, 262.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights on",
					"presentation" : 1,
					"id" : "obj-118",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 980.0, 420.0, 59.0, 20.0 ],
					"patching_rect" : [ 803.0, 16.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights off",
					"presentation" : 1,
					"id" : "obj-117",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 626.0, 420.0, 59.0, 20.0 ],
					"patching_rect" : [ 782.0, 11.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "No lights on",
					"presentation" : 1,
					"id" : "obj-116",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 970.0, 467.5, 103.0, 19.0 ],
					"patching_rect" : [ 279.0, 481.5, 86.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "No lights off",
					"presentation" : 1,
					"id" : "obj-115",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 592.0, 468.5, 106.0, 19.0 ],
					"patching_rect" : [ 175.0, 471.5, 88.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights on",
					"presentation" : 1,
					"id" : "obj-114",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 519.0, 164.0, 59.0, 20.0 ],
					"patching_rect" : [ 795.0, 12.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights off",
					"presentation" : 1,
					"id" : "obj-113",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 438.0, 164.0, 59.0, 20.0 ],
					"patching_rect" : [ 801.0, 15.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Duration",
					"presentation" : 1,
					"id" : "obj-112",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 358.0, 164.0, 56.0, 20.0 ],
					"patching_rect" : [ 790.0, 16.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Movie",
					"presentation" : 1,
					"id" : "obj-109",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 36.0, 165.0, 150.0, 20.0 ],
					"patching_rect" : [ 13.0, 165.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t stop",
					"id" : "obj-87",
					"numoutlets" : 1,
					"outlettype" : [ "stop" ],
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 716.0, 40.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t start",
					"id" : "obj-83",
					"numoutlets" : 1,
					"outlettype" : [ "start" ],
					"fontname" : "Arial",
					"patching_rect" : [ 95.0, 717.0, 41.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"id" : "obj-82",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 691.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "remaining",
					"presentation" : 1,
					"id" : "obj-74",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 777.0, 199.0, 150.0, 20.0 ],
					"patching_rect" : [ 799.0, 14.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elapsed",
					"presentation" : 1,
					"id" : "obj-73",
					"numoutlets" : 0,
					"underline" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 597.0, 199.0, 150.0, 20.0 ],
					"patching_rect" : [ 785.0, 13.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoncolor" : [ 0.345098, 0.094118, 0.101961, 1.0 ],
					"presentation" : 1,
					"id" : "obj-71",
					"bgcolor" : [ 0.258824, 0.329412, 0.258824, 1.0 ],
					"texton" : "Stop",
					"numoutlets" : 3,
					"textcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"mode" : 1,
					"textoveroncolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"textovercolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"text" : "Start",
					"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgovercolor" : [ 0.247059, 0.376471, 0.14902, 1.0 ],
					"presentation_rect" : [ 592.0, 339.0, 480.0, 55.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoveroncolor" : [ 0.654902, 0.223529, 0.2, 1.0 ],
					"patching_rect" : [ 56.0, 641.0, 132.0, 43.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 20 20 20",
					"id" : "obj-70",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 986.0, 21.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 1,
					"id" : "obj-60",
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 1040.0, 416.0, 31.0, 31.0 ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 491.0, 743.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "togedge",
					"id" : "obj-62",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 456.0, 718.0, 54.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "<",
					"id" : "obj-65",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 456.0, 689.0, 32.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"id" : "obj-66",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 456.0, 653.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_is_running",
					"id" : "obj-67",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 456.0, 610.0, 112.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r lights_on_point",
					"id" : "obj-68",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 496.5, 653.5, 99.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_time",
					"id" : "obj-69",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 571.0, 609.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 1,
					"id" : "obj-59",
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 593.0, 416.0, 30.0, 30.0 ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 246.0, 747.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "togedge",
					"id" : "obj-51",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 246.0, 718.0, 54.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : ">",
					"id" : "obj-49",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 246.0, 689.0, 32.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"id" : "obj-48",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 246.0, 653.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_is_running",
					"id" : "obj-47",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 246.0, 610.0, 112.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r lights_off_point",
					"id" : "obj-46",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 286.5, 653.5, 99.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_time",
					"id" : "obj-45",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 361.0, 609.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s to_movie",
					"id" : "obj-44",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 744.0, 69.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 615.0, 74.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 56.0, 588.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_is_running",
					"id" : "obj-28",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 558.0, 112.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Lights on here",
					"presentation" : 1,
					"id" : "obj-78",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 970.0, 448.0, 101.0, 19.0 ],
					"patching_rect" : [ 269.0, 450.5, 101.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Lights off here",
					"presentation" : 1,
					"id" : "obj-54",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"textcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 592.0, 448.0, 103.0, 19.0 ],
					"patching_rect" : [ 157.0, 449.5, 103.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p handler",
					"id" : "obj-25",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 55.0, 501.5, 61.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 4.0, 95.0, 1395.0, 645.0 ],
						"bglocked" : 0,
						"defrect" : [ 4.0, 95.0, 1395.0, 645.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ -16.0, 391.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 100",
									"id" : "obj-36",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 769.0, 183.0, 41.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_duration",
									"id" : "obj-34",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 769.0, 157.0, 100.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-33",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1327.0, 340.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_duration",
									"id" : "obj-30",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1281.0, 248.0, 100.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-24",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1275.0, 158.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s save_coll_change",
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1265.0, 379.5, 116.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b -",
									"id" : "obj-26",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "-" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1264.0, 306.5, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1150.0, 210.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s save_coll_change",
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1140.0, 431.5, 116.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0 -",
									"id" : "obj-16",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "-" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1139.0, 358.5, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 110.0, 120.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak select 0 0",
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 29.0, 249.0, 85.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 269.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 31.0, 221.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r select_next_movie",
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 30.0, 139.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 31.0, 195.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r save_coll",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 39.0, 325.0, 68.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 983.0, 219.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 903.0, 220.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mousefilter",
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 137.5, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t -1",
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 638.0, 317.5, 28.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 525.0, 311.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
									"linecount" : 3,
									"id" : "obj-92",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 369.5, 109.0, 46.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf write \\\"%sfilmlist.txt\\\"",
									"id" : "obj-89",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 51.0, 425.5, 156.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r film_folder",
									"id" : "obj-90",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 107.0, 323.5, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-87",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 643.0, 297.5, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-85",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 616.0, 300.5, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s collchange",
									"id" : "obj-83",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 132.0, 395.5, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s save_coll_change",
									"id" : "obj-82",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 973.0, 440.5, 116.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s save_coll_change",
									"id" : "obj-80",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 826.0, 441.5, 116.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r save_coll_change",
									"id" : "obj-79",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 197.0, 336.5, 114.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p niceTime",
									"id" : "obj-70",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 999.0, 399.5, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 1.",
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_timescale",
													"id" : "obj-60",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"id" : "obj-31",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t \" \"",
													"id" : "obj-52",
													"numoutlets" : 1,
													"outlettype" : [ " " ],
													"fontname" : "Arial",
													"patching_rect" : [ 80.0, 219.0, 29.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t -",
													"id" : "obj-51",
													"numoutlets" : 1,
													"outlettype" : [ "-" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-50",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"id" : "obj-49",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_fps",
													"id" : "obj-48",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"id" : "obj-47",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-44",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"id" : "obj-43",
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.",
													"id" : "obj-42",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 74.0, 142.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%.2d:%.2d:%.2d",
													"id" : "obj-38",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 60",
													"id" : "obj-36",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 60",
													"id" : "obj-35",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-53",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-54",
													"numoutlets" : 0,
													"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-38", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-38", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"id" : "obj-71",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 972.0, 367.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-73",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 933.0, 314.5, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-76",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 972.0, 342.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-77",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 986.0, 308.5, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p niceTime",
									"id" : "obj-67",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 854.0, 402.5, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 1.",
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_timescale",
													"id" : "obj-60",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"id" : "obj-31",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t \" \"",
													"id" : "obj-52",
													"numoutlets" : 1,
													"outlettype" : [ " " ],
													"fontname" : "Arial",
													"patching_rect" : [ 80.0, 219.0, 29.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t -",
													"id" : "obj-51",
													"numoutlets" : 1,
													"outlettype" : [ "-" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-50",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"id" : "obj-49",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r movie_fps",
													"id" : "obj-48",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"id" : "obj-47",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-44",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"id" : "obj-43",
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"fontname" : "Arial",
													"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.",
													"id" : "obj-42",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 74.0, 142.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%.2d:%.2d:%.2d",
													"id" : "obj-38",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 60",
													"id" : "obj-36",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 60",
													"id" : "obj-35",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-53",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-54",
													"numoutlets" : 0,
													"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-38", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-38", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"id" : "obj-66",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 826.0, 372.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-65",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 787.0, 319.5, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-62",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 826.0, 347.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-57",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 840.0, 313.5, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll filmlist -1",
									"id" : "obj-52",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 468.5, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 s s s s 0 0",
									"id" : "obj-51",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 439.5, 480.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel -",
									"id" : "obj-48",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 661.0, 275.5, 33.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-49",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 676.0, 306.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s lights_on_point",
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 674.5, 355.5, 101.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel -",
									"id" : "obj-43",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 546.0, 271.5, 33.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-42",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 557.0, 306.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s lights_off_point",
									"id" : "obj-41",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 555.5, 355.5, 101.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_outpoint",
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 703.5, 214.5, 101.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_movie",
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 278.5, 275.5, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_preview_movie",
									"id" : "obj-39",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 369.5, 273.5, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
									"id" : "obj-37",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 279.0, 223.5, 344.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r film_folder",
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 595.0, 201.5, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"id" : "obj-29",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 282.0, 196.5, 33.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf read \\\"%s%s\\\"",
									"id" : "obj-28",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 279.0, 245.5, 122.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 395.5, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s s s s 0 0",
									"id" : "obj-23",
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 282.0, 171.5, 409.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll filmlist -1",
									"id" : "obj-21",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 283.0, 125.5, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0",
									"id" : "obj-20",
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 253.0, 101.5, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-22",
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 502.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-51", 6 ],
									"hidden" : 0,
									"midpoints" : [ 1336.5, 360.0, 1197.0, 360.0, 1197.0, 417.0, 1101.0, 417.0, 1101.0, 471.0, 702.0, 471.0, 702.0, 435.0, 680.5, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-51", 4 ],
									"hidden" : 0,
									"midpoints" : [ 1300.5, 345.0, 1101.0, 345.0, 1101.0, 471.0, 702.0, 471.0, 702.0, 426.0, 526.833313, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-51", 5 ],
									"hidden" : 0,
									"midpoints" : [ 1162.0, 417.0, 1101.0, 417.0, 1101.0, 471.0, 702.0, 471.0, 702.0, 426.0, 603.666687, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-51", 3 ],
									"hidden" : 0,
									"midpoints" : [ 1175.5, 417.0, 1101.0, 417.0, 1101.0, 471.0, 702.0, 471.0, 702.0, 426.0, 450.0, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-92", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 1 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-51", 6 ],
									"hidden" : 0,
									"midpoints" : [ 995.0, 434.5, 680.5, 434.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-51", 4 ],
									"hidden" : 0,
									"midpoints" : [ 1008.5, 430.5, 526.833313, 430.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-76", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-51", 3 ],
									"hidden" : 0,
									"midpoints" : [ 863.5, 426.5, 450.0, 426.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-51", 5 ],
									"hidden" : 0,
									"midpoints" : [ 849.0, 425.5, 603.666687, 425.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-62", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-51", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-51", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-51", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 3 ],
									"destination" : [ "obj-51", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 4 ],
									"destination" : [ "obj-51", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 5 ],
									"destination" : [ "obj-51", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 5 ],
									"destination" : [ "obj-49", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 3 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 4 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 122.5, 268.0, 122.5, 268.0, 209.5, 233.0, 209.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 5 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 288.5, 265.5, 379.0, 265.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 288.5, 265.5, 288.0, 265.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 331.0, 118.0, 74.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 404.0, 120.0, 81.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_name",
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 332.0, 95.0, 87.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "06_Recup.mov",
					"linecount" : 3,
					"presentation" : 1,
					"id" : "obj-12",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 4,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 592.0, 121.0, 480.0, 63.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 490.0, 120.0, 143.0, 19.0 ],
					"fontsize" : 48.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 130.0, 242.0, 60.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 490.0, 74.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "00:00:00",
					"presentation" : 1,
					"id" : "obj-33",
					"bgcolor" : [ 0.043137, 1.0, 1.0, 0.0 ],
					"readonly" : 1,
					"numoutlets" : 4,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 596.0, 249.0, 131.0, 34.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"patching_rect" : [ 782.0, 507.0, 131.0, 63.0 ],
					"fontsize" : 24.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "-05:50:05",
					"presentation" : 1,
					"id" : "obj-30",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 0.0 ],
					"readonly" : 1,
					"numoutlets" : 4,
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 723.0, 206.0, 347.0, 82.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"patching_rect" : [ 422.0, 487.0, 354.0, 82.0 ],
					"fontsize" : 64.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights on ",
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 457.0, 287.0, 69.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lights off \n",
					"id" : "obj-14",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 374.0, 287.0, 64.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Duration",
					"id" : "obj-13",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 301.0, 287.0, 56.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r collchange",
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 53.0, 242.0, 75.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p dim",
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 193.0, 266.0, 40.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 511.0, 185.0, 1142.0, 485.0 ],
						"bglocked" : 0,
						"defrect" : [ 511.0, 185.0, 1142.0, 485.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "selmode 3",
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 269.0, 398.0, 64.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 0, just 2",
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 862.0, 119.0, 81.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 0, just 2",
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 761.0, 116.0, 81.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 80, just 2, frgb 100 100 100",
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 639.0, 127.0, 182.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 80, just 2, frgb 100 100 100",
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 506.0, 80.0, 182.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 80, just 2",
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 414.0, 126.0, 88.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 300, just 0",
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 273.0, 128.0, 94.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width 26, just 2",
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 122.0, 123.0, 88.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend col",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 122.0, 384.0, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 7",
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"fontname" : "Arial",
									"patching_rect" : [ 122.0, 361.0, 100.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 122.0, 411.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-6", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 645.0, 335.0, 59.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p path_prefs",
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 352.0, 61.5, 77.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 366.0, 73.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 541.0, 41.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
									"linecount" : 6,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 503.0, 150.0, 50.0, 87.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p create_filmlist",
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 77.0, 257.0, 94.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 457.0, 44.0, 958.0, 830.0 ],
										"bglocked" : 0,
										"defrect" : [ 457.0, 44.0, 958.0, 830.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s save_coll",
													"id" : "obj-4",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ -13.0, 113.0, 70.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-36",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 467.0, 529.0, 24.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p niceTime",
													"id" : "obj-30",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 420.0, 558.0, 69.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 1.",
																	"id" : "obj-1",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r movie_timescale",
																	"id" : "obj-60",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 1.",
																	"id" : "obj-31",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t \" \"",
																	"id" : "obj-52",
																	"numoutlets" : 1,
																	"outlettype" : [ " " ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 80.0, 219.0, 29.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t -",
																	"id" : "obj-51",
																	"numoutlets" : 1,
																	"outlettype" : [ "-" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1 0",
																	"id" : "obj-50",
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1.",
																	"id" : "obj-49",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r movie_fps",
																	"id" : "obj-48",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 0.",
																	"id" : "obj-47",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"id" : "obj-44",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"id" : "obj-43",
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"id" : "obj-42",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 74.0, 142.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s%.2d:%.2d:%.2d",
																	"id" : "obj-38",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "% 60",
																	"id" : "obj-36",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 60",
																	"id" : "obj-35",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-53",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-54",
																	"numoutlets" : 0,
																	"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 0 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 0 ],
																	"destination" : [ "obj-51", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-49", 0 ],
																	"destination" : [ "obj-38", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-47", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-49", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-47", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-38", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-38", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-31", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p niceTime",
													"id" : "obj-55",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 628.0, 409.0, 69.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 1.",
																	"id" : "obj-1",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r movie_timescale",
																	"id" : "obj-60",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 1.",
																	"id" : "obj-31",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t \" \"",
																	"id" : "obj-52",
																	"numoutlets" : 1,
																	"outlettype" : [ " " ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 80.0, 219.0, 29.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t -",
																	"id" : "obj-51",
																	"numoutlets" : 1,
																	"outlettype" : [ "-" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1 0",
																	"id" : "obj-50",
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1.",
																	"id" : "obj-49",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r movie_fps",
																	"id" : "obj-48",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 0.",
																	"id" : "obj-47",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"id" : "obj-44",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"id" : "obj-43",
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "float" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"id" : "obj-42",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 74.0, 142.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s%.2d:%.2d:%.2d",
																	"id" : "obj-38",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "% 60",
																	"id" : "obj-36",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 60",
																	"id" : "obj-35",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-53",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-54",
																	"numoutlets" : 0,
																	"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 0 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 0 ],
																	"destination" : [ "obj-51", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-49", 0 ],
																	"destination" : [ "obj-38", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-47", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-49", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-47", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-38", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-38", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-31", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s movie_timescale",
													"id" : "obj-59",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 496.5, 399.0, 109.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s movie_fps",
													"id" : "obj-33",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 722.5, 399.0, 75.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s movie_time",
													"id" : "obj-27",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 349.5, 423.0, 81.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "gettimescale, getduration, getfps",
													"id" : "obj-25",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 463.5, 457.0, 184.0, 18.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"id" : "obj-23",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 463.5, 427.0, 36.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s 0",
													"id" : "obj-22",
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 413.5, 399.0, 69.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route time read timescale duration fps",
													"id" : "obj-26",
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 350.5, 366.0, 482.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qt.movie 2 2 @autostart 0",
													"id" : "obj-21",
													"numoutlets" : 2,
													"outlettype" : [ "jit_matrix", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 354.0, 315.0, 160.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf read \\\"%s%s\\\"",
													"id" : "obj-20",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 256.0, 286.0, 122.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
													"id" : "obj-19",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 269.0, 256.0, 289.0, 18.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r film_folder",
													"id" : "obj-18",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 540.0, 228.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s collchange",
													"id" : "obj-17",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 62.0, 113.0, 77.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-16",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 124.0, 34.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 s s s s 0 0",
													"id" : "obj-15",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 129.0, 597.0, 596.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 7
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s b s",
													"id" : "obj-14",
													"numoutlets" : 4,
													"outlettype" : [ "bang", "", "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 150.0, 247.0, 59.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"id" : "obj-13",
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 132.0, 293.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b 0 clear",
													"id" : "obj-12",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "clear" ],
													"fontname" : "Arial",
													"patching_rect" : [ 155.0, 51.0, 63.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route append",
													"id" : "obj-11",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 150.0, 218.0, 81.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"id" : "obj-10",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 202.0, 135.0, 60.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "types MooV",
													"id" : "obj-9",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 190.0, 161.0, 74.0, 18.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 156.0, 25.0, 20.0, 20.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 149.0, 112.0, 289.0, 18.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r film_folder",
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 419.0, 85.0, 73.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "folder",
													"id" : "obj-2",
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 150.0, 179.0, 41.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll filmlist -1",
													"id" : "obj-1",
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 201.0, 688.0, 79.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-15", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [ 173.0, 279.0, 234.666672, 279.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-15", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-15", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 3 ],
													"destination" : [ "obj-15", 6 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-15", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 3 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 2 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 4 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 3 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set",
									"id" : "obj-125",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 283.0, 224.5, 32.5, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "write tv.launchpad.prefs.txt",
									"id" : "obj-124",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 444.0, 258.5, 153.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l clear",
									"id" : "obj-123",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "clear" ],
									"fontname" : "Arial",
									"patching_rect" : [ 369.0, 213.5, 59.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend folder",
									"id" : "obj-122",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 374.0, 181.5, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s film_folder",
									"id" : "obj-120",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 492.0, 203.5, 75.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s film_folder",
									"id" : "obj-118",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 239.0, 329.5, 75.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route folder",
									"id" : "obj-117",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 239.0, 302.5, 71.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"id" : "obj-116",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 278.5, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-115",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 196.5, 60.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "line 0",
									"id" : "obj-114",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 223.5, 39.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-110",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 452.0, 103.5, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "text tv.launchpad.prefs.txt",
									"id" : "obj-109",
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 254.5, 147.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog fold",
									"id" : "obj-106",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 361.0, 102.5, 92.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 42.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numoutlets" : 0,
									"patching_rect" : [ 367.0, 409.5, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 2 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 1 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-125", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-123", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-117", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 550.5, 107.5, 512.5, 107.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf read \\\"%sfilmlist.txt\\\"",
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 645.0, 359.0, 155.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r film_folder",
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 645.0, 310.0, 73.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "speedy:/Users/tv/Movies/Sujets_28_Aout/",
					"presentation" : 1,
					"id" : "obj-111",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"readonly" : 1,
					"numoutlets" : 4,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 8.0, 121.0, 569.0, 28.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 430.0, 62.0, 462.0, 25.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "refer filmlist",
					"id" : "obj-105",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 54.0, 267.0, 72.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll filmlist -1",
					"id" : "obj-103",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 645.0, 385.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p movie_engine",
					"id" : "obj-102",
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Arial",
					"patching_rect" : [ 79.5, 33.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 1255.0, 711.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 1255.0, 711.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p placeOnSecondScreen",
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 177.5, 611.0, 144.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "fullscreen 1",
													"id" : "obj-55",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 78.5, 326.0, 70.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-53",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 143.5, 282.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack pos 0 0",
													"id" : "obj-52",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 156.5, 321.0, 79.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"id" : "obj-51",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 198.5, 238.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"id" : "obj-50",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 163.5, 238.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0 0",
													"id" : "obj-49",
													"numoutlets" : 5,
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 143.5, 210.0, 99.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "coords 1",
													"id" : "obj-48",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.5, 253.0, 55.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"id" : "obj-45",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 64.5, 100.0, 60.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"id" : "obj-44",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.5, 229.0, 36.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 1",
													"id" : "obj-43",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.5, 205.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route count coords",
													"id" : "obj-42",
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 65.5, 181.0, 175.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "count",
													"id" : "obj-64",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 64.5, 127.0, 37.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.displays",
													"id" : "obj-65",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 64.5, 157.0, 62.0, 20.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-17",
													"numoutlets" : 0,
													"patching_rect" : [ 117.5, 404.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 74.0, 147.0, 74.0, 147.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 75.0, 273.0, 51.5, 273.0, 51.5, 153.0, 74.0, 153.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 2 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-52", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-58",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 674.0, 322.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_is_running",
									"id" : "obj-56",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 704.0, 333.0, 114.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s select_next_movie",
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 906.0, 499.0, 119.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 500",
									"id" : "obj-39",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 906.0, 467.0, 63.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_is_running",
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 992.0, 469.0, 114.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"id" : "obj-38",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 977.0, 435.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"id" : "obj-36",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 975.0, 405.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "==",
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 975.0, 380.0, 67.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_duration",
									"id" : "obj-34",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1023.5, 346.0, 100.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-32",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 989.5, 318.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 975.0, 346.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_is_running",
									"id" : "obj-28",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 975.0, 294.0, 112.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_is_running",
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 596.0, 177.0, 114.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 626.0, 142.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 596.0, 142.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel start stop",
									"id" : "obj-18",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 596.0, 109.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"Error loading movie\"",
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 470.5, 369.0, 123.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 377.0, 331.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.window proj",
									"id" : "obj-12",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 178.0, 637.0, 86.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 877.5, 133.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_movie",
									"id" : "obj-7",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 550.5, 621.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_preview_movie",
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 631.5, 624.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 929.5, 105.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to_preview_movie",
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 983.5, 180.0, 115.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"id" : "obj-100",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 54.5, 51.0, 72.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to_movie",
									"id" : "obj-92",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 536.5, 42.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend time",
									"id" : "obj-84",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 929.5, 132.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qball",
									"id" : "obj-83",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 910.5, 178.0, 48.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qt.movie 360 288 @loop 0 @autostart 0",
									"id" : "obj-82",
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 909.5, 212.0, 235.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend read",
									"id" : "obj-80",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 584.5, 579.0, 82.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-79",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 748.5, 474.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"boxon:/Users/me/Movies/004-013 carnet\"",
									"linecount" : 2,
									"id" : "obj-77",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 585.5, 543.0, 184.0, 32.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"id" : "obj-76",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 752.5, 497.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_timescale",
									"id" : "obj-59",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 495.5, 278.0, 109.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_duration",
									"id" : "obj-57",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 610.5, 278.0, 102.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_fps",
									"id" : "obj-33",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 721.5, 278.0, 75.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_time",
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 275.5, 307.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s movie_name",
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 406.5, 398.0, 89.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "gettimescale, getduration, getfps",
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 462.5, 336.0, 184.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-23",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 462.5, 306.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s 0",
									"id" : "obj-22",
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 412.5, 278.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "time 0",
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 238.5, 181.0, 43.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route time read timescale duration fps",
									"id" : "obj-16",
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 349.5, 245.0, 482.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 413.5, 180.0, 33.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "start",
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 368.5, 181.0, 34.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 327.5, 182.0, 35.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t gettime b",
									"id" : "obj-8",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 54.5, 135.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 54.5, 80.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 20",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 54.5, 109.0, 58.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qt.movie 720 288 @loop 0 @autostart 0 @window proj",
									"id" : "obj-1",
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 55.5, 220.0, 314.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-101",
									"numoutlets" : 0,
									"patching_rect" : [ 908.5, 260.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 337.0, 201.0, 291.0, 201.0, 291.0, 206.0, 65.0, 206.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 378.0, 201.0, 363.0, 201.0, 363.0, 207.0, 65.0, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 423.0, 198.0, 402.0, 198.0, 402.0, 208.0, 65.0, 208.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 248.0, 201.0, 189.0, 201.0, 189.0, 207.0, 65.0, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 112.0, 165.0, 65.0, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 64.0, 156.0, 65.0, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 472.0, 356.0, 351.5, 356.0, 351.5, 356.0, 51.5, 356.0, 51.5, 215.0, 65.0, 215.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 546.0, 198.0, 65.0, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [ 919.0, 234.0, 918.0, 234.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [ 939.0, 174.0, 920.0, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-77", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 4 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [ 993.0, 201.0, 922.0, 201.0, 922.0, 207.0, 919.0, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 939.0, 126.0, 887.0, 126.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [ 887.0, 165.0, 920.0, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p slider_handler",
					"id" : "obj-99",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 597.0, 153.0, 96.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_movie",
									"id" : "obj-96",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 53.0, 253.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend time",
									"id" : "obj-93",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 227.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qball",
									"id" : "obj-91",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 280.0, 183.0, 48.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak set 1 0",
									"id" : "obj-90",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 218.0, 207.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak range 0 0",
									"id" : "obj-89",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 128.0, 84.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_duration",
									"id" : "obj-88",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 329.0, 100.0, 100.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_time",
									"id" : "obj-87",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 285.0, 159.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-97",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-98",
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 333.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-90", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-89", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"id" : "obj-86",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"presentation_rect" : [ 592.0, 298.0, 480.0, 30.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 8755.0 ],
					"patching_rect" : [ 346.0, 154.0, 246.0, 20.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "preview",
					"presentation" : 1,
					"id" : "obj-81",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 592.0, 501.0, 480.0, 270.0 ],
					"patching_rect" : [ 80.0, 60.0, 240.0, 144.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_time",
					"id" : "obj-56",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 442.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p niceTime",
					"id" : "obj-55",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 467.0, 69.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "abs 1.",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 177.0, 123.0, 43.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_timescale",
									"id" : "obj-60",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 233.0, 37.0, 107.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 165.0, 70.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t \" \"",
									"id" : "obj-52",
									"numoutlets" : 1,
									"outlettype" : [ " " ],
									"fontname" : "Arial",
									"patching_rect" : [ 80.0, 219.0, 29.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t -",
									"id" : "obj-51",
									"numoutlets" : 1,
									"outlettype" : [ "-" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 219.0, 21.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-50",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 184.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"id" : "obj-49",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 237.0, 218.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r movie_fps",
									"id" : "obj-48",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 196.0, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"id" : "obj-47",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 193.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-44",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 244.0, 166.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t f f",
									"id" : "obj-43",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 164.0, 100.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 0.",
									"id" : "obj-42",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 74.0, 142.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s%.2d:%.2d:%.2d",
									"id" : "obj-38",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 113.0, 284.0, 152.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 60",
									"id" : "obj-36",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 201.0, 38.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 60",
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 144.0, 201.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-53",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 21.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-54",
									"numoutlets" : 0,
									"patching_rect" : [ 118.0, 364.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-38", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-38", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"hscroll" : 0,
					"presentation" : 1,
					"id" : "obj-24",
					"rowheight" : 28,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 4,
					"gridlinecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"outlettype" : [ "list", "", "", "" ],
					"hcellcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"selmode" : 3,
					"fontname" : "Lucida Grande Bold",
					"rows" : 8,
					"fgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"presentation_rect" : [ 8.0, 185.0, 569.0, 589.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"cols" : 7,
					"patching_rect" : [ 54.0, 311.0, 580.0, 122.0 ],
					"fontsize" : 14.0,
					"numinlets" : 2,
					"coldef" : [ [ 0, 26, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, 2, -1, -1 ], [ 1, 300, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, 0, -1, -1 ], [ 2, 80, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, 2, -1, -1 ], [ 3, 80, 0, 0.390625, 0.390625, 0.390625, 1, 1.0, 1.0, 1.0, 2, -1, -1 ], [ 4, 80, 0, 0.390625, 0.390625, 0.390625, 1, 1.0, 1.0, 1.0, 2, -1, -1 ], [ 5, 5, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, 2, -1, -1 ], [ 6, 5, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, 2, -1, -1 ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-75",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"border" : 1,
					"presentation_rect" : [ 592.0, 185.0, 480.0, 111.0 ],
					"patching_rect" : [ 964.0, 19.0, 19.0, 18.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-25", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-25", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 1 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-66", 1 ],
					"hidden" : 0,
					"midpoints" : [ 580.5, 640.0, 480.5, 640.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [ 370.5, 640.0, 270.5, 640.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 202.5, 289.0, 63.5, 289.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
