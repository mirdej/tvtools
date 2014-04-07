{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1105.0, 50.0, 426.0, 960.0 ],
		"bgcolor" : [ 0.082353, 0.082353, 0.082353, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 1105.0, 50.0, 426.0, 960.0 ],
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
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-40",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 690.0, 704.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-39",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 803.0, 790.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"id" : "obj-36",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 818.0, 714.0, 32.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack i i",
					"id" : "obj-31",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 791.0, 739.0, 48.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 255.",
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 818.0, 685.0, 42.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float",
					"id" : "obj-28",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 794.0, 656.0, 80.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 1",
					"id" : "obj-25",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 734.0, 629.0, 57.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dmx_direct",
					"id" : "obj-41",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 393.0, 77.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"id" : "obj-35",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 509.0, 69.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 480.0, 27.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"id" : "obj-33",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 420.0, 69.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 576.0, 424.0, 35.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll tv.lights.groups.txt",
					"id" : "obj-30",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 448.0, 129.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation" : 1,
					"id" : "obj-27",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Arial",
					"text" : "Softpatch",
					"presentation_rect" : [ 279.0, 116.0, 84.0, 25.0 ],
					"patching_rect" : [ 689.0, 444.0, 84.0, 25.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-26",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 792.0, 517.0, 37.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 749.0, 557.0, 53.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tv.lights.patch",
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 700.0, 591.0, 84.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s tv.lights.select",
					"id" : "obj-21",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 764.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 3",
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 65.0, 723.0, 24.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 2",
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 722.0, 24.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel lights.off lights.on",
					"id" : "obj-12",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 38.0, 695.0, 122.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r tv.status",
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 38.0, 670.0, 63.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "version 100821",
					"presentation" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande",
					"presentation_rect" : [ 288.0, 38.0, 91.0, 18.0 ],
					"patching_rect" : [ 448.0, 68.0, 173.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[ a n y m a | tv-lights ]",
					"presentation" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"presentation_rect" : [ 155.0, 12.0, 235.0, 28.0 ],
					"patching_rect" : [ 264.0, 58.0, 315.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"id" : "obj-3",
					"name" : "tv.lights.scene.maxpat",
					"numoutlets" : 0,
					"embed" : 1,
					"presentation_rect" : [ 14.0, 552.0, 350.0, 137.0 ],
					"args" : [ 4 ],
					"patching_rect" : [ 104.0, 459.0, 350.0, 137.0 ],
					"offset" : [ -29.0, -32.0 ],
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 552.0, 350.0, 137.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 552.0, 350.0, 137.0 ],
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
									"text" : "tosymbol",
									"id" : "obj-30",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 164.0, 228.0, 59.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"id" : "obj-12",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 133.0, 313.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t #1",
									"id" : "obj-29",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 6.0, 242.0, 31.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"id" : "obj-28",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 6.0, 218.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s tv.lights.select",
									"id" : "obj-20",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 6.0, 264.0, 95.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-17",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 538.0, 29.0, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s tv.lights.fadeto",
									"id" : "obj-27",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 129.0, 546.0, 97.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s tv.lights.fadetime",
									"id" : "obj-26",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 203.0, 383.0, 110.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-21",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 203.0, 348.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"id" : "obj-16",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 133.0, 288.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"id" : "obj-13",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 198.0, 424.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "closebang",
									"id" : "obj-9",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 48.0, 521.0, 65.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-8",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 420.0, 373.0, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess #1",
									"id" : "obj-25",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 592.0, 262.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s 0 0 0 0 0 0 0 0 0 0 0 0 0",
									"id" : "obj-24",
									"numoutlets" : 14,
									"hidden" : 1,
									"outlettype" : [ "", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 336.0, 12.0, 194.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"id" : "obj-23",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 581.0, 101.0, 85.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p stickyFaders",
									"id" : "obj-22",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 32.0, 176.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
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
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-127",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "bang", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 238.0, 466.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"id" : "obj-122",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 317.0, 250.0, 20.0, 20.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p show_StickValues",
													"id" : "obj-118",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 319.0, 282.0, 118.0, 20.0 ],
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
																	"text" : "- 1",
																	"id" : "obj-10",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 74.0, 141.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"id" : "obj-9",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 178.0, 353.0, 50.0, 18.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-7",
																	"numoutlets" : 0,
																	"patching_rect" : [ 78.0, 381.0, 25.0, 25.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 s 0 0 0",
																	"id" : "obj-6",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 65.0, 341.0, 85.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "frgb 10 255 10",
																	"id" : "obj-5",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 132.0, 253.0, 88.0, 18.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"id" : "obj-4",
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 91.0, 209.0, 46.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i i",
																	"id" : "obj-3",
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 75.0, 160.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "frgb 189 189 189",
																	"id" : "obj-120",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 88.0, 281.0, 101.0, 18.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-2",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 102.0, 20.0, 20.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 12",
																	"id" : "obj-102",
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 122.0, 46.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "table #1_dimmer_stick",
																	"id" : "obj-100",
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 91.0, 183.0, 131.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2,
																	"showeditor" : 0,
																	"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
																	"saved_object_attributes" : 																	{
																		"name" : "4_dimmer_stick",
																		"showeditor" : 0,
																		"embed" : 0,
																		"signed" : 0,
																		"notename" : 0,
																		"size" : 128,
																		"range" : 128
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-105",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-102", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-105", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-100", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-100", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-120", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-102", 2 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-120", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-5", 0 ],
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
													"text" : "gate",
													"id" : "obj-116",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 390.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"id" : "obj-113",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 59.0, 316.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0",
													"id" : "obj-112",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 417.0, 56.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i",
													"id" : "obj-111",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 59.0, 292.0, 61.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #1_dimmer_stick",
													"id" : "obj-110",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 83.0, 348.0, 131.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"showeditor" : 0,
													"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
													"saved_object_attributes" : 													{
														"name" : "4_dimmer_stick",
														"showeditor" : 0,
														"embed" : 0,
														"signed" : 0,
														"notename" : 0,
														"size" : 128,
														"range" : 128
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #1_dimmer_stick",
													"id" : "obj-100",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 328.0, 497.0, 131.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"showeditor" : 0,
													"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
													"saved_object_attributes" : 													{
														"name" : "4_dimmer_stick",
														"showeditor" : 0,
														"embed" : 0,
														"signed" : 0,
														"notename" : 0,
														"size" : 128,
														"range" : 128
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"id" : "obj-109",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 328.0, 417.0, 74.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 1",
													"id" : "obj-108",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 328.0, 470.0, 56.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"id" : "obj-107",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 429.0, 36.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p reset_StickValues",
													"id" : "obj-106",
													"numoutlets" : 0,
													"hidden" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 450.0, 282.0, 117.0, 20.0 ],
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
																	"text" : "- 1",
																	"id" : "obj-1",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 84.0, 158.0, 32.5, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 0",
																	"id" : "obj-104",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 77.0, 186.0, 34.0, 18.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 12",
																	"id" : "obj-102",
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 129.0, 46.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0",
																	"id" : "obj-101",
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 100.0, 36.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "table #1_dimmer_stick",
																	"id" : "obj-100",
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"fontname" : "Arial",
																	"patching_rect" : [ 77.0, 215.0, 131.0, 20.0 ],
																	"fontsize" : 12.0,
																	"numinlets" : 2,
																	"showeditor" : 0,
																	"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
																	"saved_object_attributes" : 																	{
																		"name" : "4_dimmer_stick",
																		"showeditor" : 0,
																		"embed" : 0,
																		"signed" : 0,
																		"notename" : 0,
																		"size" : 128,
																		"range" : 128
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-105",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-104", 0 ],
																	"destination" : [ "obj-100", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 86.5, 210.0, 86.5, 210.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-102", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-104", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-101", 0 ],
																	"destination" : [ "obj-102", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-105", 0 ],
																	"destination" : [ "obj-101", 0 ],
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
													"text" : "pack 0 0",
													"id" : "obj-72",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 220.0, 56.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0 11",
													"id" : "obj-71",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 193.0, 59.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 12",
													"id" : "obj-70",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 172.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i",
													"id" : "obj-67",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 148.0, 61.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"id" : "obj-64",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 59.0, 260.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 10",
													"id" : "obj-62",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 402.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs",
													"id" : "obj-61",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 374.0, 30.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"id" : "obj-58",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 347.0, 32.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i",
													"id" : "obj-57",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 290.0, 61.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #1_dimmer_values",
													"id" : "obj-35",
													"numoutlets" : 2,
													"hidden" : 1,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 242.0, 317.0, 141.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"showeditor" : 0,
													"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
													"saved_object_attributes" : 													{
														"name" : "4_dimmer_values",
														"showeditor" : 0,
														"embed" : 0,
														"signed" : 0,
														"notename" : 0,
														"size" : 128,
														"range" : 128
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"id" : "obj-17",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 124.0, 34.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r tv.lights.faders",
													"id" : "obj-13",
													"numoutlets" : 1,
													"hidden" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 75.0, 100.0, 95.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-20",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 270.666656, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-21",
													"numoutlets" : 0,
													"patching_rect" : [ 179.5, 577.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-118", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-122", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 1 ],
													"destination" : [ "obj-58", 1 ],
													"hidden" : 1,
													"midpoints" : [ 293.5, 340.0, 265.0, 340.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 1 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 1,
													"midpoints" : [ 82.0, 286.5, 251.5, 286.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 1,
													"midpoints" : [ 251.5, 341.0, 251.5, 341.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 1 ],
													"destination" : [ "obj-72", 1 ],
													"hidden" : 1,
													"midpoints" : [ 111.5, 193.5, 106.5, 193.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-107", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 1,
													"midpoints" : [ 251.5, 343.0, 337.5, 343.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-108", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-108", 0 ],
													"destination" : [ "obj-100", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-111", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-111", 1 ],
													"destination" : [ "obj-112", 1 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-111", 0 ],
													"destination" : [ "obj-113", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-113", 1 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 1,
													"midpoints" : [ 82.0, 338.0, 92.5, 338.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-116", 0 ],
													"hidden" : 1,
													"midpoints" : [ 92.5, 375.0, 59.5, 375.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-113", 0 ],
													"destination" : [ "obj-116", 1 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-122", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-107", 0 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-127", 1 ],
													"destination" : [ "obj-108", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-127", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 1,
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
									"text" : "write tv.lights.scenes.txt",
									"id" : "obj-19",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 34.0, 637.0, 137.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"id" : "obj-15",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 34.0, 556.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-14",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 135.0, 84.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"id" : "obj-11",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 89.0, 210.0, 61.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack #1 s 0 0 0 0 0 0 0 0 0 0 0 0 0",
									"id" : "obj-10",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 364.0, 165.0, 208.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "Apres",
									"id" : "obj-7",
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"fontname" : "Arial Bold",
									"patching_rect" : [ 40.0, 43.0, 86.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll tv.lights.scenes.txt",
									"id" : "obj-3",
									"numoutlets" : 4,
									"hidden" : 1,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 583.0, 126.0, 130.0, 20.0 ],
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
									"text" : "prepend set",
									"id" : "obj-95",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 161.0, 469.0, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"id" : "obj-94",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 519.0, 56.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 12",
									"id" : "obj-93",
									"numoutlets" : 3,
									"hidden" : 1,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 408.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "table #1_dimmer_values",
									"id" : "obj-92",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 199.0, 447.0, 141.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"showeditor" : 0,
									"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
									"saved_object_attributes" : 									{
										"name" : "4_dimmer_values",
										"showeditor" : 0,
										"embed" : 0,
										"signed" : 0,
										"notename" : 0,
										"size" : 128,
										"range" : 128
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "table #1_dimmer_values",
									"id" : "obj-42",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 521.0, 201.0, 141.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"showeditor" : 0,
									"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
									"saved_object_attributes" : 									{
										"name" : "4_dimmer_values",
										"showeditor" : 0,
										"embed" : 0,
										"signed" : 0,
										"notename" : 0,
										"size" : 128,
										"range" : 128
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "spray 12 0 1",
									"id" : "obj-91",
									"numoutlets" : 12,
									"hidden" : 1,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 161.0, 12.0, 167.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-85",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 346.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-86",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 327.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-87",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 308.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-88",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 289.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-89",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 270.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-90",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 251.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-84",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 225.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-83",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 206.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-82",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 187.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-81",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 168.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 12",
									"id" : "obj-80",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "list" ],
									"fontname" : "Arial",
									"patching_rect" : [ 129.0, 168.0, 233.5, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-79",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 149.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"border_top" : 0,
									"id" : "obj-76",
									"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
									"numoutlets" : 2,
									"spacing" : 4,
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"border_bottom" : 0,
									"ghostbar" : 19,
									"border_left" : 0,
									"border_right" : 0,
									"settype" : 0,
									"setminmax" : [ 0.0, 255.0 ],
									"thickness" : 4,
									"patching_rect" : [ 130.0, 44.0, 19.0, 112.0 ],
									"numinlets" : 1,
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s dmx_direct",
									"id" : "obj-34",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 291.0, 319.0, 79.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-18",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 291.0, 294.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-6",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 582.0, -7.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"id" : "obj-4",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 558.0, -6.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel #1",
									"id" : "obj-2",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 558.0, -31.0, 43.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r tv.lights.select",
									"id" : "obj-1",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 558.0, -55.0, 93.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoncolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"id" : "obj-5",
									"bgcolor" : [ 0.07451, 0.07451, 0.07451, 1.0 ],
									"numoutlets" : 3,
									"mode" : 1,
									"outlettype" : [ "", "", "int" ],
									"fontname" : "Arial",
									"bgovercolor" : [ 0.376471, 0.376471, 0.376471, 1.0 ],
									"bgoveroncolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"patching_rect" : [ 33.0, 35.0, 339.0, 129.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [ 142.5, 370.0, 139.5, 370.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 157.5, 337.0, 212.5, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 42.5, 244.0, 142.5, 244.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 567.5, 236.0, 142.5, 236.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 601.5, 285.0, 592.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 1 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 2 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 3 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 4 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 5 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 6 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 7 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 8 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 9 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 10 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 11 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 1,
									"midpoints" : [ 138.5, 212.0, 315.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-94", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [ 138.5, 191.0, 530.5, 191.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-80", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-80", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-80", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-80", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-80", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-80", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-80", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-80", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-80", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-80", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-80", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 42.5, 285.0, 300.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 591.5, 19.0, 42.5, 19.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 43.5, 687.0, 749.0, 687.0, 749.0, 116.0, 592.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 1,
									"midpoints" : [ 41.5, 205.0, 18.0, 205.0, 18.0, 2.0, 170.5, 2.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 5 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 6 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 7 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 8 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 9 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 10 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 11 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 12 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 13 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 14 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-10", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-10", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-10", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-10", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-10", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-10", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-10", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-10", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-10", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-10", 12 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-10", 13 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [ 43.5, 627.5, 43.5, 627.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 58.5, 668.0, 373.5, 668.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"id" : "obj-1",
					"name" : "tv.lights.scene.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 14.0, 415.0, 350.0, 137.0 ],
					"args" : [ 3 ],
					"patching_rect" : [ 103.0, 323.0, 350.0, 137.0 ],
					"offset" : [ -29.0, -32.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "enable faders",
					"presentation" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"frgb" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 43.0, 118.0, 150.0, 20.0 ],
					"patching_rect" : [ 677.0, 66.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 20.0, 117.0, 20.0, 20.0 ],
					"patching_rect" : [ 654.0, 65.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dmx_direct",
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 202.0, 681.0, 77.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "spray 12 0 1",
					"id" : "obj-91",
					"numoutlets" : 12,
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 202.0, 706.0, 167.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-85",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 330.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 419.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-86",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 311.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 400.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-87",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 292.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 381.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-88",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 273.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 362.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-89",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 254.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 343.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-90",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 235.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 324.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-84",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 209.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 298.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-83",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 190.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 279.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-82",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 171.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 260.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-81",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 152.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 241.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-79",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 133.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 222.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"border_top" : 0,
					"id" : "obj-76",
					"bgcolor" : [ 0.133333, 0.133333, 0.133333, 1.0 ],
					"numoutlets" : 2,
					"spacing" : 4,
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
					"border_bottom" : 0,
					"ghostbar" : 19,
					"border_left" : 0,
					"border_right" : 0,
					"presentation_rect" : [ 114.0, 735.0, 19.0, 112.0 ],
					"settype" : 0,
					"setminmax" : [ 0.0, 255.0 ],
					"thickness" : 4,
					"patching_rect" : [ 203.0, 732.0, 19.0, 112.0 ],
					"numinlets" : 1,
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "target $1",
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 724.0, 296.0, 58.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 724.0, 272.0, 32.5, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack i i",
					"id" : "obj-15",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 682.0, 243.0, 61.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"id" : "obj-14",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 683.0, 216.0, 39.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r tv.lights.fadeto",
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 683.0, 191.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"id" : "obj-7",
					"name" : "tv.lights.scene.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 14.0, 279.0, 350.0, 137.0 ],
					"args" : [ 2 ],
					"patching_rect" : [ 103.0, 187.0, 350.0, 137.0 ],
					"offset" : [ -29.0, -32.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"id" : "obj-6",
					"name" : "tv.lights.scene.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 14.0, 143.0, 350.0, 137.0 ],
					"args" : [ 1 ],
					"patching_rect" : [ 103.0, 51.0, 350.0, 137.0 ],
					"offset" : [ -29.0, -32.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p dmxInterface",
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 634.5, 751.5, 90.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 799.0, 470.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 799.0, 470.0 ],
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
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 682.0, 56.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-28",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 593.0, 20.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-26",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 595.0, 60.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 589.0, 324.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-24",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 464.0, 65.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 414.0, 160.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl rev",
									"id" : "obj-20",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 431.0, 184.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i",
									"id" : "obj-12",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 431.0, 211.0, 61.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s tv.lights.faders",
									"id" : "obj-2",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 588.0, 347.0, 97.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-38",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 503.5, 353.5, 74.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "\"Found USB device www.anyma.ch/uDMX\"",
									"linecount" : 2,
									"id" : "obj-37",
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 503.5, 381.5, 229.0, 19.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-36",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 325.5, 154.5, 60.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"id" : "obj-35",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 157.5, 330.5, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mode USB",
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 72.5, 404.5, 150.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "command 21 2",
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 58.5, 383.5, 90.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"id" : "obj-19",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 280.5, 134.5, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 191.5, 111.5, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 40",
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 189.5, 137.5, 58.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route buttons raw connection rotary value",
									"id" : "obj-3",
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 418.5, 291.5, 231.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 189.5, 298.5, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "close",
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 280.5, 186.5, 39.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 325.5, 186.5, 37.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udesk @outputmode 1",
									"id" : "obj-1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 189.5, 266.5, 131.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 68.0, 409.5, 51.5, 409.5, 51.5, 246.5, 199.0, 246.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 4 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 290.0, 235.0, 199.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 335.0, 235.0, 199.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.0, 132.5, 290.0, 132.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.0, 295.5, 175.0, 295.5, 175.0, 101.5, 201.0, 101.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.0, 292.5, 167.0, 292.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.0, 355.5, 68.0, 355.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 256.0, 311.0, 256.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.0, 291.0, 125.0, 291.0, 125.0, 78.0, 423.5, 78.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 4 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [ 691.5, 145.0, 438.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 440.5, 253.0, 199.0, 253.0 ]
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
					"text" : "poly~ tv.lights.fade 12",
					"id" : "obj-13",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"background" : 1,
					"patching_rect" : [ 682.0, 335.0, 127.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 733.5, 323.0, 691.5, 323.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-91", 10 ],
					"destination" : [ "obj-86", 0 ],
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
					"source" : [ "obj-91", 8 ],
					"destination" : [ "obj-88", 0 ],
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
					"source" : [ "obj-91", 6 ],
					"destination" : [ "obj-90", 0 ],
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
					"source" : [ "obj-91", 4 ],
					"destination" : [ "obj-83", 0 ],
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
					"source" : [ "obj-91", 2 ],
					"destination" : [ "obj-81", 0 ],
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
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
