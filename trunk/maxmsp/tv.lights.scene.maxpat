{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 549.0, 44.0, 891.0, 799.0 ],
		"bglocked" : 0,
		"defrect" : [ 549.0, 44.0, 891.0, 799.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 586.0, 57.0, 20.0, 20.0 ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 378.0, 124.0, 59.0, 20.0 ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 355.0, 34.0, 20.0 ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t #1",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 232.0, 31.0, 20.0 ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 34.0, 208.0, 36.0, 20.0 ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.lights.select",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 254.0, 95.0, 20.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 607.0, 20.0, 74.0, 20.0 ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.lights.fadeto",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 588.0, 97.0, 20.0 ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.lights.fadetime",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 211.0, 425.0, 110.0, 20.0 ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 211.0, 390.0, 32.5, 20.0 ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 141.0, 330.0, 36.0, 20.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 209.0, 466.0, 32.5, 20.0 ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "closebang",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 34.0, 527.0, 65.0, 20.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 12.0, 74.0, 20.0 ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess #1",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 697.0, 98.0, 79.0, 20.0 ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack s 0 0 0 0 0 0 0 0 0 0 0 0 0",
					"fontsize" : 12.0,
					"numoutlets" : 14,
					"hidden" : 1,
					"outlettype" : [ "", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 336.0, 12.0, 194.5, 20.0 ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend store",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 612.0, 100.0, 85.0, 20.0 ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p stickyFaders",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 579.0, 161.0, 88.0, 20.0 ],
					"id" : "obj-22",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 941.0, 729.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 941.0, 729.0 ],
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
									"text" : "t b b",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 238.0, 466.0, 34.0, 20.0 ],
									"id" : "obj-127"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 317.0, 250.0, 20.0, 20.0 ],
									"id" : "obj-122"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p show_StickValues",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 319.0, 282.0, 118.0, 20.0 ],
									"id" : "obj-118",
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
													"text" : "- 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 74.0, 141.0, 32.5, 20.0 ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 178.0, 353.0, 50.0, 18.0 ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"numinlets" : 1,
													"patching_rect" : [ 78.0, 381.0, 25.0, 25.0 ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 s 0 0 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"numinlets" : 5,
													"patching_rect" : [ 65.0, 341.0, 85.0, 20.0 ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "frgb 10 255 10",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 132.0, 253.0, 88.0, 18.0 ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 209.0, 46.0, 20.0 ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 75.0, 160.0, 32.5, 20.0 ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "frgb 189 189 189",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 88.0, 281.0, 101.0, 18.0 ],
													"id" : "obj-120"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 102.0, 20.0, 20.0 ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 12",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 122.0, 46.0, 20.0 ],
													"id" : "obj-102"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #1_dimmer_stick",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 91.0, 183.0, 131.0, 20.0 ],
													"id" : "obj-100",
													"showeditor" : 0,
													"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
													"saved_object_attributes" : 													{
														"name" : "#1_dimmer_stick",
														"showeditor" : 0,
														"signed" : 0,
														"embed" : 0,
														"notename" : 0,
														"size" : 128,
														"range" : 128
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-105",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-100", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-100", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-120", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-120", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 390.0, 34.0, 20.0 ],
									"id" : "obj-116"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 59.0, 316.0, 32.5, 20.0 ],
									"id" : "obj-113"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 417.0, 56.0, 20.0 ],
									"id" : "obj-112"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 59.0, 292.0, 61.0, 20.0 ],
									"id" : "obj-111"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "table #1_dimmer_stick",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 83.0, 348.0, 131.0, 20.0 ],
									"id" : "obj-110",
									"showeditor" : 0,
									"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
									"saved_object_attributes" : 									{
										"name" : "#1_dimmer_stick",
										"showeditor" : 0,
										"signed" : 0,
										"embed" : 0,
										"notename" : 0,
										"size" : 128,
										"range" : 128
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "table #1_dimmer_stick",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 328.0, 497.0, 131.0, 20.0 ],
									"id" : "obj-100",
									"showeditor" : 0,
									"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
									"saved_object_attributes" : 									{
										"name" : "#1_dimmer_stick",
										"showeditor" : 0,
										"signed" : 0,
										"embed" : 0,
										"notename" : 0,
										"size" : 128,
										"range" : 128
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 328.0, 417.0, 74.0, 20.0 ],
									"id" : "obj-109"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 328.0, 470.0, 56.0, 20.0 ],
									"id" : "obj-108"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 242.0, 429.0, 36.0, 20.0 ],
									"id" : "obj-107"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p reset_StickValues",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 450.0, 282.0, 117.0, 20.0 ],
									"id" : "obj-106",
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
													"text" : "- 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 84.0, 158.0, 32.5, 20.0 ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 77.0, 186.0, 34.0, 18.0 ],
													"id" : "obj-104"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 12",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 129.0, 46.0, 20.0 ],
													"id" : "obj-102"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 100.0, 36.0, 20.0 ],
													"id" : "obj-101"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #1_dimmer_stick",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 77.0, 215.0, 131.0, 20.0 ],
													"id" : "obj-100",
													"showeditor" : 0,
													"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
													"saved_object_attributes" : 													{
														"name" : "#1_dimmer_stick",
														"showeditor" : 0,
														"signed" : 0,
														"embed" : 0,
														"notename" : 0,
														"size" : 128,
														"range" : 128
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-105",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-100", 0 ],
													"hidden" : 0,
													"midpoints" : [ 86.5, 210.0, 86.5, 210.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-104", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-101", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-101", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 220.0, 56.0, 20.0 ],
									"id" : "obj-72"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 11",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 60.0, 193.0, 59.0, 20.0 ],
									"id" : "obj-71"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 12",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 172.0, 32.5, 20.0 ],
									"id" : "obj-70"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 148.0, 61.0, 20.0 ],
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 59.0, 260.0, 32.5, 20.0 ],
									"id" : "obj-64"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 242.0, 402.0, 34.0, 20.0 ],
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "abs",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 242.0, 374.0, 30.0, 20.0 ],
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 242.0, 347.0, 32.5, 20.0 ],
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 242.0, 290.0, 61.0, 20.0 ],
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "table #1_dimmer_values",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 242.0, 317.0, 141.0, 20.0 ],
									"id" : "obj-35",
									"showeditor" : 0,
									"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
									"saved_object_attributes" : 									{
										"name" : "#1_dimmer_values",
										"showeditor" : 0,
										"signed" : 0,
										"embed" : 0,
										"notename" : 0,
										"size" : 128,
										"range" : 128
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 124.0, 34.0, 20.0 ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r tv.lights.faders",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 100.0, 95.0, 20.0 ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 270.666656, 40.0, 25.0, 25.0 ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 179.5, 577.0, 25.0, 25.0 ],
									"id" : "obj-21",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-118", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 1 ],
									"destination" : [ "obj-58", 1 ],
									"hidden" : 1,
									"midpoints" : [ 293.5, 340.0, 265.0, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [ 82.0, 286.5, 251.5, 286.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [ 251.5, 341.0, 251.5, 341.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 1,
									"midpoints" : [ 111.5, 193.5, 106.5, 193.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 1,
									"midpoints" : [ 251.5, 343.0, 337.5, 343.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 1 ],
									"destination" : [ "obj-112", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 1 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 1,
									"midpoints" : [ 82.0, 338.0, 92.5, 338.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 1,
									"midpoints" : [ 92.5, 375.0, 59.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-116", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-127", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-127", 1 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-127", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write tv.lights.scenes.txt",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 34.0, 637.0, 137.0, 18.0 ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 556.0, 34.0, 20.0 ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 135.0, 84.0, 20.0 ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 377.0, 103.0, 61.0, 20.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack #1 s 0 0 0 0 0 0 0 0 0 0 0 0 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 15,
					"patching_rect" : [ 364.0, 165.0, 208.0, 20.0 ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "Live",
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 43.0, 86.0, 20.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll tv.lights.scenes.txt",
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"hidden" : 1,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 614.0, 125.0, 130.0, 20.0 ],
					"id" : "obj-3",
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 511.0, 74.0, 20.0 ],
					"id" : "obj-95"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 141.0, 561.0, 56.0, 20.0 ],
					"id" : "obj-94"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 12",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "bang", "bang", "int" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 141.0, 450.0, 46.0, 20.0 ],
					"id" : "obj-93"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "table #1_dimmer_values",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 210.0, 489.0, 141.0, 20.0 ],
					"id" : "obj-92",
					"showeditor" : 0,
					"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
					"saved_object_attributes" : 					{
						"name" : "#1_dimmer_values",
						"showeditor" : 0,
						"signed" : 0,
						"embed" : 0,
						"notename" : 0,
						"size" : 128,
						"range" : 128
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "table #1_dimmer_values",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 274.0, 195.0, 141.0, 20.0 ],
					"id" : "obj-42",
					"showeditor" : 0,
					"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
					"saved_object_attributes" : 					{
						"name" : "#1_dimmer_values",
						"showeditor" : 0,
						"signed" : 0,
						"embed" : 0,
						"notename" : 0,
						"size" : 128,
						"range" : 128
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "spray 12 0 1",
					"fontsize" : 12.0,
					"numoutlets" : 12,
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 161.0, 12.0, 167.5, 20.0 ],
					"id" : "obj-91"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 346.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 327.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 308.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 289.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-88"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 270.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-89"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 251.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-90"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 225.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 206.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 187.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 168.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "funnel 12",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "list" ],
					"fontname" : "Arial",
					"numinlets" : 12,
					"patching_rect" : [ 129.0, 168.0, 233.5, 20.0 ],
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 149.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"spacing" : 4,
					"settype" : 0,
					"outlettype" : [ "", "" ],
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 19,
					"border_left" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"border_bottom" : 0,
					"thickness" : 4,
					"numinlets" : 1,
					"border_right" : 0,
					"patching_rect" : [ 130.0, 44.0, 19.0, 112.0 ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.lights.fadeto",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 249.0, 356.0, 97.0, 20.0 ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 249.0, 331.0, 34.0, 20.0 ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 582.0, -7.0, 24.0, 20.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 558.0, -6.0, 24.0, 20.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel #1",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 558.0, -31.0, 43.0, 20.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r tv.lights.select",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 558.0, -55.0, 93.0, 20.0 ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"bgovercolor" : [ 0.376471, 0.376471, 0.376471, 1.0 ],
					"bgcolor" : [ 0.07451, 0.07451, 0.07451, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"bgoveroncolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"mode" : 1,
					"bgoncolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"fontname" : "Arial",
					"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 35.0, 339.0, 129.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 595.5, 272.0, 150.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 595.5, 274.0, 258.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 595.5, 85.0, 588.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1,
					"midpoints" : [ 150.5, 412.0, 150.5, 412.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 165.5, 379.0, 220.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 706.5, 118.0, 623.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 2 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 3 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 4 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 5 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 6 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 7 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 8 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 9 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 10 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 11 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 1,
					"midpoints" : [ 138.5, 212.0, 273.5, 212.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-94", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 138.5, 191.0, 283.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-80", 11 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-80", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-80", 9 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-80", 8 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-80", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-80", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-80", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-80", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-80", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-80", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 687.0, 749.0, 687.0, 749.0, 116.0, 623.5, 116.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [ 588.5, 192.0, 18.0, 192.0, 18.0, 2.0, 170.5, 2.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 4 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 5 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 6 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 7 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 8 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 9 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 10 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 11 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 12 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 13 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-10", 14 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-10", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-10", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-10", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-10", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-10", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-10", 8 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-10", 9 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-10", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-10", 11 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-10", 12 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-10", 13 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 627.5, 43.5, 627.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 58.5, 668.0, 373.5, 668.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 1,
					"midpoints" : [ 49.5, 197.0, 234.0, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
