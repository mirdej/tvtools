{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 350.0, 44.0, 654.0, 830.0 ],
		"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 350.0, 44.0, 654.0, 830.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 0.0, 0.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 142.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-2",
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s bg_movie",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 198.0, 63.0, 18.0 ],
									"fontsize" : 10.0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read SubBg.mov",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 153.0, 177.0, 86.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s titel",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 146.0, 35.0, 18.0 ],
									"fontsize" : 10.0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 53.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rotate 3, size 26, font \"Lucida Grande Bold\", align center",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 125.0, 259.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-38"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "version 0902005",
					"presentation_rect" : [ 530.0, 40.0, 91.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 38.0, 173.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[ a n y m a | subtitler ]",
					"presentation_rect" : [ 418.0, 14.0, 219.0, 28.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 28.0, 315.0, 28.0 ],
					"presentation" : 1,
					"fontsize" : 18.0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send titel",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 193.0, 746.0, 51.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "alpha $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 190.0, 720.0, 49.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0., 1. 1500",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 202.0, 667.0, 58.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 1.",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 197.0, 694.0, 46.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend text",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 88.0, 506.0, 66.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s titel",
					"numinlets" : 1,
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 0,
					"patching_rect" : [ 87.0, 529.0, 43.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 127.0, 477.0, 63.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Textgrösse",
					"presentation_rect" : [ 474.0, 320.0, 143.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 56.0, 143.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position",
					"presentation_rect" : [ 474.0, 180.0, 143.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 419.0, 59.0, 143.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 36.0, 667.0, 420.0, 84.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"bgovercolor" : [ 0.192157, 0.282353, 0.098039, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 240.0, 544.0, 72.0, 54.0 ],
					"bgcolor" : [ 0.141176, 0.25098, 0.109804, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"text" : "Go",
					"fontsize" : 64.0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On/Off",
					"presentation_rect" : [ 61.0, 122.0, 143.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 411.0, 58.0, 143.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spontan schreiben",
					"presentation_rect" : [ 36.0, 575.0, 100.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 59.0, 143.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1., 0. 500",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 115.0, 669.0, 52.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 6000",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 118.0, 647.0, 59.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 700",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 238.0, 628.0, 54.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send titel",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 731.0, 51.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "alpha $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 187.0, 705.0, 49.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0., 1. 500",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 187.0, 652.0, 52.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 1.",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 187.0, 679.0, 46.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p rendering",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 114.0, 61.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-21",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 68.0, 44.0, 1112.0, 623.0 ],
						"bglocked" : 0,
						"defrect" : [ 68.0, 44.0, 1112.0, 623.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0.014",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 443.0, 182.0, 95.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p placeOnSecondScreen",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 94.5, 439.0, 122.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-29",
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "fullscreen 1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 78.5, 326.0, 70.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"id" : "obj-55"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"patching_rect" : [ 143.5, 282.0, 34.0, 20.0 ],
													"outlettype" : [ "bang", "bang" ],
													"fontsize" : 12.0,
													"id" : "obj-53"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack pos 0 0",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 156.5, 321.0, 79.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-52"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 198.5, 238.0, 34.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 12.0,
													"id" : "obj-51"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 163.5, 238.0, 34.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 12.0,
													"id" : "obj-50"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0 0",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 5,
													"patching_rect" : [ 143.5, 210.0, 99.0, 20.0 ],
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"fontsize" : 12.0,
													"id" : "obj-49"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "coords 1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 65.5, 253.0, 55.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"id" : "obj-48"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 64.5, 100.0, 60.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"fontsize" : 12.0,
													"id" : "obj-45"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"patching_rect" : [ 65.5, 229.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"fontsize" : 12.0,
													"id" : "obj-44"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 65.5, 205.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 12.0,
													"id" : "obj-43"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route count coords",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"patching_rect" : [ 65.5, 181.0, 175.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-42"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "count",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 64.5, 127.0, 37.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"id" : "obj-64"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.displays",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 64.5, 157.0, 62.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"id" : "obj-65"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 117.5, 404.0, 25.0, 25.0 ],
													"id" : "obj-17",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 0 ],
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
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-52", 1 ],
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
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-53", 0 ],
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
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-50", 0 ],
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
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 75.0, 273.0, 51.5, 273.0, 51.5, 153.0, 74.0, 153.0 ]
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
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 74.0, 147.0, 74.0, 147.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.window proj",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 95.0, 463.0, 73.0, 18.0 ],
									"outlettype" : [ "bang", "" ],
									"fontsize" : 10.0,
									"id" : "obj-83"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.window preview @size 320 180 @pos 10 48",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 831.0, 467.0, 218.0, 18.0 ],
									"outlettype" : [ "bang", "" ],
									"fontsize" : 10.0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 825.0, 149.0, 34.0, 20.0 ],
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 80",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 825.0, 121.0, 56.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.render preview @ortho 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 825.0, 215.0, 141.0, 18.0 ],
									"outlettype" : [ "bang", "" ],
									"fontsize" : 10.0,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.videoplane preview @scale 1.81 1. 1. @texture myscene",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 970.0, 215.0, 284.0, 18.0 ],
									"outlettype" : [ "jit_matrix", "" ],
									"fontsize" : 10.0,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r bg_movie",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 603.0, 232.0, 60.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.videoplane proj @scale 1.333 1. 1. @automatic 0 @blend_enable 0 @depth_enable 0 @texture myscene",
									"linecount" : 6,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 120.0, 284.0, 127.0, 75.0 ],
									"outlettype" : [ "jit_matrix", "" ],
									"fontsize" : 10.0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.texture proj @name myscene @automatic 0",
									"linecount" : 3,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 208.0, 204.0, 89.0, 41.0 ],
									"outlettype" : [ "jit_gl_texture", "" ],
									"fontsize" : 10.0,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "usetexture myscene, to_texture, erase",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 303.0, 259.0, 182.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b b b b",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"patching_rect" : [ 120.0, 146.0, 457.5, 18.0 ],
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.shadowed_text proj 0.14 -0.84",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 222.0, 166.0, 18.0 ],
									"fontsize" : 10.0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r titel",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 184.0, 32.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.videoplane proj @automatic 0 @scale 1.33 1. 1 @position 0. 0. -0.42",
									"linecount" : 5,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 512.0, 298.0, 86.0, 64.0 ],
									"outlettype" : [ "jit_matrix", "" ],
									"fontsize" : 10.0,
									"id" : "obj-81"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.gl.render proj @shared_context preview @ortho 2 @erase_color 0. 1. 0. 1.",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 361.0, 352.0, 18.0 ],
									"outlettype" : [ "bang", "" ],
									"fontsize" : 10.0,
									"id" : "obj-80"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qt.movie 720 576 @loop 0",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 594.0, 256.0, 157.0, 18.0 ],
									"outlettype" : [ "jit_matrix", "" ],
									"fontsize" : 10.0,
									"id" : "obj-30",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.fpsgui",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 64.0, 178.0, 60.0, 33.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 40",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 88.0, 56.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b b erase",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 5,
									"patching_rect" : [ 50.0, 119.0, 81.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "bang", "bang", "erase" ],
									"fontsize" : 10.0,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [ 312.5, 278.0, 53.0, 278.0, 53.0, 345.0, 59.5, 345.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 4 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [ 121.5, 251.0, 59.5, 251.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 5 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 568.0, 252.0, 603.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 3 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 106.0, 142.0, 129.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 4 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 480.299988, 207.0, 521.0, 207.0, 521.0, 315.0, 521.5, 315.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 217.199997, 201.0, 217.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 603.5, 286.0, 521.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 834.5, 171.0, 834.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 849.5, 201.0, 979.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 75.0, 59.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 75.0, 834.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 204.0, 359.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 3 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 392.600006, 207.0, 362.0, 207.0, 362.0, 219.0, 359.5, 219.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 56.0, 53.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send bg_movie",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 265.0, 709.0, 78.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 211.0, 52.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 1000 -2. 2.",
					"numinlets" : 6,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 426.0, 642.0, 93.0, 18.0 ],
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 1000 -2. 2.",
					"numinlets" : 6,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 354.0, 645.0, 93.0, 18.0 ],
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"invisiblebkgnd" : 1,
					"presentation_rect" : [ 476.0, 201.0, 100.0, 100.0 ],
					"numinlets" : 2,
					"rightvalue" : 1000,
					"numoutlets" : 2,
					"topvalue" : 1000,
					"patching_rect" : [ 351.0, 532.0, 100.0, 100.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "int" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 20 20 20",
					"numinlets" : 4,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 12.0, 85.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-188"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 604.0, 20.0, 20.0 ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-161"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 444.0, 712.0, 42.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-147"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"presentation_rect" : [ 476.0, 343.0, 56.0, 28.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 2,
					"patching_rect" : [ 446.0, 685.0, 56.0, 28.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 18.0,
					"id" : "obj-148"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 2,
					"patching_rect" : [ 390.0, 677.0, 71.0, 28.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 18.0,
					"id" : "obj-149"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 2,
					"patching_rect" : [ 354.0, 677.0, 71.0, 28.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 18.0,
					"id" : "obj-150"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak position 0. 0.",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 320.0, 717.0, 86.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-151"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send titel",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 761.0, 51.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-152"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read subs.txt",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 179.0, 233.0, 68.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 s s",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 84.0, 447.0, 75.0, 18.0 ],
					"outlettype" : [ "int", "int", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Aktualisieren",
					"presentation_rect" : [ 61.0, 159.0, 143.0, 18.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"frgb" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Lucida Grande",
					"numoutlets" : 0,
					"patching_rect" : [ 108.0, 209.0, 143.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 36.0, 156.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 87.0, 208.0, 20.0, 20.0 ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll subs.txt",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 263.0, 231.0, 63.0, 18.0 ],
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-51",
					"save" : [ "#N", "coll", "subs.txt", ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "refer subs.txt",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 86.0, 233.0, 68.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"hcellcolor" : [ 0.239216, 0.25098, 0.431373, 1.0 ],
					"cols" : 1,
					"presentation_rect" : [ 36.0, 176.0, 420.0, 386.0 ],
					"numinlets" : 2,
					"fontname" : "Lucida Grande Bold",
					"outmode" : 1,
					"numoutlets" : 4,
					"fgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"patching_rect" : [ 86.0, 254.0, 205.0, 186.0 ],
					"selmode" : 3,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"gridlinecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "list", "", "", "" ],
					"colwidth" : 498,
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-41",
					"hscroll" : 0,
					"rowheight" : 28
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s titel",
					"numinlets" : 1,
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 170.0, 43.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "time 0",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 264.0, 658.0, 39.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "\"Geneviève Ingold\"",
					"linecount" : 5,
					"presentation_rect" : [ 36.0, 599.0, 420.0, 53.0 ],
					"numinlets" : 1,
					"fontname" : "Lucida Grande Bold",
					"numoutlets" : 4,
					"patching_rect" : [ 83.0, 184.0, 105.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "int", "", "" ],
					"fontsize" : 36.0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 35.0, 119.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 85.0, 25.0, 25.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-34"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 739.0, 324.5, 739.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-151", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-151", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-150", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-149", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
