{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 132.0, 44.0, 1009.0, 779.0 ],
		"bglocked" : 0,
		"defrect" : [ 132.0, 44.0, 1009.0, 779.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 510.783752, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-51",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 497.488525, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-52",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "note: use 15-22 for Littlefield MOTU",
					"linecount" : 2,
					"patching_rect" : [ 292.0, 780.000732, 114.0, 34.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak aed 4 0. 0. 0. 1",
					"patching_rect" : [ 67.205231, 405.0, 101.0, 17.0 ],
					"numinlets" : 6,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4.",
					"frgb" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"patching_rect" : [ 31.652893, 366.859497, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "azi[4]",
					"patching_rect" : [ 53.0, 368.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ele[4]",
					"maximum" : 90.0,
					"patching_rect" : [ 120.0, 368.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-38",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "dist[4]",
					"patching_rect" : [ 185.958679, 367.272705, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak aed 3 0. 0. 0. 1",
					"patching_rect" : [ 61.205231, 333.0, 101.0, 17.0 ],
					"numinlets" : 6,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3.",
					"frgb" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"patching_rect" : [ 25.652893, 294.859497, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "azi[3]",
					"patching_rect" : [ 47.0, 296.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ele[3]",
					"maximum" : 90.0,
					"patching_rect" : [ 114.0, 296.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-31",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "dist[3]",
					"patching_rect" : [ 179.958679, 295.272705, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak aed 2 0. 0. 0. 1",
					"patching_rect" : [ 61.205231, 265.0, 101.0, 17.0 ],
					"numinlets" : 6,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start/stop\nsound files",
					"linecount" : 2,
					"patching_rect" : [ 267.0, 436.580017, 72.763336, 34.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 337.0, 436.580017, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 717.88916, 655.060791, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "forget ambisonics, I just want to play out of everything!",
					"linecount" : 3,
					"patching_rect" : [ 794.605469, 662.020752, 136.0, 43.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana Bold",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 120.283752, 751.000732, 45.0, 45.0 ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak aed 1 0. 0. 0. 1",
					"patching_rect" : [ 57.205231, 196.72728, 101.0, 17.0 ],
					"numinlets" : 6,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.gain~",
					"varname" : "live.gain~",
					"patching_rect" : [ 712.701782, 733.020752, 136.0, 49.0 ],
					"numinlets" : 2,
					"parameter_enable" : 1,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"presentation_rect" : [ 0.0, 0.0, 50.0, 49.0 ],
					"id" : "obj-146",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.gain~",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.gain~",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 15 16 17 18 19 20 21 22",
					"patching_rect" : [ 712.701782, 803.541504, 166.0, 19.0 ],
					"numinlets" : 8,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"fontsize" : 10.0,
					"id" : "obj-144"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"patching_rect" : [ 748.605469, 655.060791, 35.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontsize" : 10.0,
					"id" : "obj-138"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"patching_rect" : [ 717.88916, 697.020752, 58.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "signal", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-142",
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"patching_rect" : [ 604.0, 250.0, 29.5, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0,
					"id" : "obj-139"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 612.0, 155.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-134"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"patching_rect" : [ 602.0, 182.0, 65.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 7",
					"patching_rect" : [ 604.0, 216.52002, 61.0, 20.0 ],
					"numinlets" : 5,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0,
					"id" : "obj-74"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 630.0, 549.078308, 18.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "set_speakers[1]",
					"text" : "p set_speakers_for_hybrid",
					"patching_rect" : [ 630.0, 578.864319, 145.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 793.0, 90.0, 544.0, 604.0 ],
						"bgcolor" : [ 0.976471, 0.976471, 0.976471, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 793.0, 90.0, 544.0, 604.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 1,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 1,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 21.0, 201.0, 24.0, 24.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 164.0, 129.0, 34.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 4 220. 3. 1.",
									"patching_rect" : [ 68.0, 388.0, 113.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 3 150. 3. 1.",
									"patching_rect" : [ 76.0, 328.0, 113.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 2 20. -7. 1.",
									"patching_rect" : [ 76.0, 284.0, 112.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 1 -15. -7. 1.",
									"patching_rect" : [ 86.0, 239.0, 116.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 314.0, 284.0, 37.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 164.0, 68.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 274.0, 481.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [ 323.5, 366.5, 283.5, 366.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [ 77.5, 431.0, 283.5, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 375.0, 283.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [ 85.5, 317.0, 239.0, 317.0, 239.0, 375.0, 283.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [ 95.5, 270.0, 283.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 475.283752, 109.099274, 37.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This little donglehickey uses the XYZ message to make it easier to control one's position.",
					"linecount" : 3,
					"patching_rect" : [ 729.903625, 84.099274, 184.0, 48.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 820.403625, 381.480042, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-137"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 763.403625, 381.480042, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-135"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 1. 1.",
					"patching_rect" : [ 763.403625, 350.480042, 76.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"fontsize" : 12.0,
					"id" : "obj-130"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 200 -1. 1",
					"patching_rect" : [ 763.403625, 328.480042, 99.0, 20.0 ],
					"numinlets" : 6,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-128"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 1 2",
					"patching_rect" : [ 763.403625, 308.480042, 50.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-125"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"patching_rect" : [ 729.903625, 133.579254, 156.0, 156.0 ],
					"numinlets" : 2,
					"rightvalue" : 200,
					"numoutlets" : 2,
					"topvalue" : 200,
					"outlettype" : [ "int", "int" ],
					"id" : "obj-116"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xyz (cartesian)",
					"patching_rect" : [ 765.903625, 415.580017, 86.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "position[0]",
					"patching_rect" : [ 766.903625, 436.580017, 43.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "position[7]",
					"patching_rect" : [ 854.903625, 436.580017, 43.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"patching_rect" : [ 766.903625, 460.579987, 107.0, 19.0 ],
					"numinlets" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "position[8]",
					"patching_rect" : [ 810.903625, 436.580017, 43.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 $1 $2 $3",
					"patching_rect" : [ 766.903625, 484.579956, 89.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel Sound Test",
					"patching_rect" : [ 553.0, 130.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-88"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fun LFOs to rotate points 1-4",
					"patching_rect" : [ 34.705231, 18.0, 212.253448, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 386.567566, 40.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-131"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 274.205231, 40.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-129"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 173.783752, 40.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-127"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 76.783752, 40.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-124"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 1 0 360",
					"patching_rect" : [ 347.567566, 94.0, 94.0, 20.0 ],
					"numinlets" : 5,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0,
					"id" : "obj-108"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 347.567566, 40.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-109"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 30",
					"patching_rect" : [ 347.567566, 67.0, 58.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-110"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 0 360",
					"patching_rect" : [ 235.205231, 94.0, 84.0, 20.0 ],
					"numinlets" : 5,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0,
					"id" : "obj-105"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 235.205231, 42.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-106"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 30",
					"patching_rect" : [ 235.205231, 67.0, 58.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-107"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 1 0 360",
					"patching_rect" : [ 134.783752, 94.0, 94.0, 20.0 ],
					"numinlets" : 5,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0,
					"id" : "obj-102"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 134.783752, 40.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-103"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 30",
					"patching_rect" : [ 134.783752, 67.0, 58.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-104"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 120.283752, 543.000732, 22.0, 140.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-101"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 420.943146, 539.060791, 22.0, 140.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-100"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 224.283752, 539.060791, 22.0, 140.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-99"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 332.664673, 539.060791, 22.0, 140.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-98"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 431.283752, 520.360718, 81.0, 12.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-64",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"patching_rect" : [ 431.0, 470.000763, 73.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontsize" : 10.0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 1.",
					"patching_rect" : [ 431.283752, 490.960693, 62.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-73",
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 332.664673, 520.360718, 81.0, 12.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-45",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"patching_rect" : [ 333.0, 470.000763, 73.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontsize" : 10.0,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 1.",
					"patching_rect" : [ 333.283752, 490.960693, 62.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-61",
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 223.664673, 520.360718, 81.0, 12.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-16",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"patching_rect" : [ 224.0, 470.000763, 73.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontsize" : 10.0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 1.",
					"patching_rect" : [ 224.283752, 490.960693, 62.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-35",
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 0 360",
					"patching_rect" : [ 37.783752, 94.0, 84.0, 20.0 ],
					"numinlets" : 5,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0,
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 37.783752, 40.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 30",
					"patching_rect" : [ 37.783752, 67.0, 58.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 604.0, 278.900787, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"patching_rect" : [ 604.0, 310.0, 43.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 557.5, 338.359985, 37.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 553.5, 186.366028, 22.0, 140.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pink~",
					"patching_rect" : [ 553.0, 154.0, 40.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speaker positions",
					"patching_rect" : [ 502.0, 553.998291, 111.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana Bold",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 120.283752, 520.360718, 81.0, 12.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-66",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2.",
					"frgb" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.447059, 1.0, 1.0 ],
					"patching_rect" : [ 25.652893, 226.859497, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1.",
					"frgb" : [ 1.0, 0.447059, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.447059, 0.0, 1.0 ],
					"patching_rect" : [ 26.305786, 163.380173, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "azi[2]",
					"patching_rect" : [ 47.0, 228.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ele[2]",
					"maximum" : 90.0,
					"patching_rect" : [ 114.0, 228.099152, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-43",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "dist[2]",
					"patching_rect" : [ 179.958679, 227.272705, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance",
					"patching_rect" : [ 180.0, 144.553726, 53.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elevation",
					"patching_rect" : [ 114.0, 144.553726, 57.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "azimuth",
					"patching_rect" : [ 53.0, 144.553726, 52.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "azi[1]",
					"patching_rect" : [ 47.0, 163.553726, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ele[1]",
					"maximum" : 90.0,
					"patching_rect" : [ 114.0, 163.553726, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-19",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "dist[1]",
					"patching_rect" : [ 179.958679, 162.72728, 61.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ambiencode~ 3 4",
					"patching_rect" : [ 185.958679, 697.020752, 219.318695, 19.0 ],
					"numinlets" : 4,
					"fontname" : "Verdana",
					"numoutlets" : 16,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"saved_object_attributes" : 					{
						"interpolation" : 1,
						"type" : 1,
						"aed_scale" : 10.0,
						"coord_system" : 0,
						"xyz_scale" : 10.0,
						"center_att_db" : 6.0,
						"db_unit" : 1.5,
						"active" : [ 1, 1, 1, 1 ],
						"center_curve" : 0.2,
						"dist_att" : 1.0,
						"order" : 3,
						"gain" : 1.0,
						"center_size" : 1.0,
						"distance_mode" : 1,
						"coord_angles" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"patching_rect" : [ 120.283752, 462.001495, 73.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontsize" : 10.0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 459.0, 549.078308, 18.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4",
					"patching_rect" : [ 205.705231, 792.000732, 76.0, 19.0 ],
					"numinlets" : 4,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"fontsize" : 10.0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "set_speakers",
					"text" : "p set_speakers_for_littlefield",
					"patching_rect" : [ 459.0, 574.998291, 156.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-112",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 819.0, 193.0, 1174.0, 737.0 ],
						"bgcolor" : [ 0.976471, 0.976471, 0.976471, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 819.0, 193.0, 1174.0, 737.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 1,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 1,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3 is not used",
									"patching_rect" : [ 319.0, 281.0, 86.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 225.0, 81.0, 56.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 218.0, 109.0, 34.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 10.0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 8 137. 30. 0.8",
									"patching_rect" : [ 142.0, 417.0, 126.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 7 -137. 30. 0.8",
									"patching_rect" : [ 183.0, 385.0, 131.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 81.0, 152.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 6 60. 20. 0.5",
									"patching_rect" : [ 200.0, 350.0, 120.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 5 -60. 20. 0.56",
									"patching_rect" : [ 186.5, 317.0, 131.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 4 0. 70. 0",
									"patching_rect" : [ 176.0, 281.0, 103.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 3 0. 0.8 0",
									"patching_rect" : [ 312.0, 254.0, 103.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 2 26. 5. 1.",
									"patching_rect" : [ 163.0, 235.0, 107.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 1 -26. 5. 1.",
									"patching_rect" : [ 200.0, 170.0, 112.0, 19.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 430.0, 189.0, 37.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 164.0, 68.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 275.0, 514.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [ 439.5, 366.5, 284.5, 366.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"prototypename" : "small_light_grey",
					"gridunit_ae" : 8,
					"name_color" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"point_color2" : [ 0.0, 0.74902, 0.0, 1.0 ],
					"mode" : 1,
					"border_color" : [ 0.32549, 0.32549, 0.32549, 1.0 ],
					"patching_rect" : [ 285.274261, 162.72728, 150.0, 230.0 ],
					"numinlets" : 1,
					"group_name_color" : 1,
					"number_font_size" : 9.0,
					"point_color3" : [ 0.701961, 0.0, 1.0, 1.0 ],
					"circle_color" : [ 0.0, 0.0, 0.0, 0.05098 ],
					"numoutlets" : 3,
					"hi_border_color" : [ 0.843137, 0.639216, 0.388235, 1.0 ],
					"numbers" : 1,
					"point_color4" : [ 0.74902, 0.380392, 0.0, 1.0 ],
					"coord_color" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"hi_grid_color" : [ 0.0, 0.0, 0.0, 0.101961 ],
					"point_color" : [ 1.0, 0.298039, 0.0, 1.0 ],
					"point_size" : 10.0,
					"grid_color" : [ 0.0, 0.0, 0.0, 0.101961 ],
					"presentation_rect" : [ 45.0, 45.0, 20.0, 35.0 ],
					"id" : "obj-113",
					"line_color" : [ 1.0, 0.47451, 0.0, 1.0 ],
					"point_color1" : [ 0.0, 0.45098, 1.0, 1.0 ],
					"grid" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"prototypename" : "small_light_grey",
					"gridunit_ae" : 8,
					"name_color" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"point_color2" : [ 0.0, 0.74902, 0.0, 1.0 ],
					"border_color" : [ 0.32549, 0.32549, 0.32549, 1.0 ],
					"patching_rect" : [ 459.0, 627.520752, 150.0, 150.0 ],
					"numinlets" : 1,
					"number_font_size" : 9.0,
					"point_color3" : [ 0.701961, 0.0, 1.0, 1.0 ],
					"circle_color" : [ 0.0, 0.0, 0.0, 0.05098 ],
					"numoutlets" : 3,
					"hi_border_color" : [ 0.776471, 0.635294, 0.776471, 1.0 ],
					"numbers" : 1,
					"point_color4" : [ 0.74902, 0.380392, 0.0, 1.0 ],
					"coord_color" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"hi_grid_color" : [ 0.0, 0.0, 0.0, 0.101961 ],
					"point_color" : [ 0.360784, 0.341176, 0.321569, 1.0 ],
					"point_size" : 5.0,
					"grid_color" : [ 0.0, 0.0, 0.0, 0.05098 ],
					"presentation_rect" : [ 45.0, 45.0, 20.0, 20.0 ],
					"id" : "obj-114",
					"line_color" : [ 1.0, 0.47451, 0.0, 1.0 ],
					"point_color1" : [ 0.74902, 0.0, 0.0, 1.0 ],
					"grid" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"patching_rect" : [ 120.283752, 490.960693, 58.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "signal", "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-115",
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 482.740814, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-118",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 469.445587, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-119",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 456.150299, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-120",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 443.943146, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-121",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 430.647888, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-122",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"numleds" : 18,
					"patching_rect" : [ 417.0, 784.000732, 12.0, 81.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.505882, 0.592157, 0.552941, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numoutlets" : 1,
					"tepidcolor" : [ 0.384314, 0.580392, 0.67451, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"warmcolor" : [ 0.168627, 0.709804, 1.0, 1.0 ],
					"id" : "obj-123",
					"ntepidleds" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ambidecode~ 3 8",
					"patching_rect" : [ 183.777374, 739.520752, 221.5, 19.0 ],
					"numinlets" : 16,
					"fontname" : "Verdana",
					"numoutlets" : 8,
					"color" : [ 0.698039, 0.698039, 0.698039, 0.501961 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontsize" : 10.0,
					"id" : "obj-126",
					"saved_object_attributes" : 					{
						"type" : 1,
						"aed_scale" : 10.0,
						"coord_system" : 0,
						"xyz_scale" : 10.0,
						"active" : [ 1, 1, 1, 1, 1, 1, 1, 1 ],
						"order" : 3,
						"gain" : 1.0,
						"orderweight" : [ 1.0, 0.6, 0.2, 0.028571 ],
						"coord_angles" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u882000090",
					"text" : "autopattr",
					"patching_rect" : [ 838.403625, 548.580017, 59.5, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-41",
					"hidden" : 1,
					"restore" : 					{
						"azi[1]" : [ 240.0 ],
						"azi[2]" : [ 104.0 ],
						"azi[3]" : [ 45.599998 ],
						"azi[4]" : [ 280.0 ],
						"dist[1]" : [ 1.0 ],
						"dist[2]" : [ 1.0 ],
						"dist[3]" : [ 1.0 ],
						"dist[4]" : [ 1.0 ],
						"ele[1]" : [ 0.0 ],
						"ele[2]" : [ 0.0 ],
						"ele[3]" : [ 0.0 ],
						"ele[4]" : [ 0.0 ],
						"live.gain~" : [ -70.0 ],
						"position[0]" : [ -0.8 ],
						"position[7]" : [ 0.0 ],
						"position[8]" : [ 1.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 29.705231, 12.0, 428.0, 124.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.520677, 1.0, 0.357051, 0.4 ],
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 717.903625, 77.330017, 196.0, 470.75 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.575341, 0.156179, 0.22 ],
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 662.451782, 648.480042, 277.451843, 187.75 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.22 ],
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LITTLEFIELD AMBISONIC SETUP for 1st order 7chan horizontal + elevation",
					"linecount" : 2,
					"patching_rect" : [ 493.783752, 12.0, 421.0, 55.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"background" : 1,
					"fontsize" : 20.0,
					"id" : "obj-10"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.283752, 157.0, 56.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 484.783752, 148.0, 294.774261, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-73", 0 ],
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
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [ 468.5, 567.998291, 468.5, 567.998291 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-26", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-26", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [ 639.5, 612.998291, 468.5, 612.998291 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-34", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-34", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 76.705231, 436.0, 272.0, 436.0, 272.0, 157.0, 294.774261, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-27", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-27", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 70.705231, 355.0, 173.0, 355.0, 173.0, 328.0, 272.0, 328.0, 272.0, 157.0, 294.774261, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 70.705231, 286.0, 173.0, 286.0, 173.0, 259.0, 272.0, 259.0, 272.0, 157.0, 294.774261, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 776.403625, 517.0, 530.0, 517.0, 530.0, 148.0, 294.774261, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.705231, 217.0, 170.0, 217.0, 170.0, 196.0, 272.0, 196.0, 272.0, 157.0, 294.774261, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.25098 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-126", 1 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.25098 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-126", 2 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.25098 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-126", 3 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.25098 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-126", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-126", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-126", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 7 ],
					"destination" : [ "obj-126", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 8 ],
					"destination" : [ "obj-126", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 9 ],
					"destination" : [ "obj-126", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "obj-126", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 11 ],
					"destination" : [ "obj-126", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 12 ],
					"destination" : [ "obj-126", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 13 ],
					"destination" : [ "obj-126", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 14 ],
					"destination" : [ "obj-126", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 15 ],
					"destination" : [ "obj-126", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-144", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-144", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-144", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 1 ],
					"destination" : [ "obj-144", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 1 ],
					"destination" : [ "obj-144", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 1 ],
					"destination" : [ "obj-144", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 1 ],
					"destination" : [ "obj-144", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 1 ],
					"destination" : [ "obj-146", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-110", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 1 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-107", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-104", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 6 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 366.848816, 777.0, 503.488525, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 7 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 395.777374, 777.0, 516.783752, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.992157 ],
					"midpoints" : [ 193.277374, 777.0, 215.205231, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 1 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 0.992157 ],
					"midpoints" : [ 222.205948, 777.0, 234.205231, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 2 ],
					"destination" : [ "obj-33", 2 ],
					"hidden" : 0,
					"midpoints" : [ 251.134521, 786.0, 253.205231, 786.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 3 ],
					"destination" : [ "obj-33", 3 ],
					"hidden" : 0,
					"midpoints" : [ 280.06308, 777.0, 272.205231, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 193.277374, 777.0, 423.0, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 222.205948, 777.0, 436.647888, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 2 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 251.134521, 777.0, 449.943146, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 3 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 280.06308, 777.0, 462.150299, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 4 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 308.991669, 777.0, 475.445587, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 5 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 1,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 337.920227, 777.0, 488.740814, 777.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-81", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 1 ],
					"destination" : [ "obj-125", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"midpoints" : [ 468.5, 780.0, 444.0, 780.0, 444.0, 771.0, 180.0, 771.0, 180.0, 735.0, 193.277374, 735.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.54902, 0.501961, 1.0 ],
					"midpoints" : [ 294.774261, 423.0, 204.0, 423.0, 204.0, 684.0, 195.458679, 684.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"midpoints" : [ 468.5, 597.998291, 468.5, 597.998291 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 357.067566, 131.0, 16.0, 131.0, 16.0, 364.0, 62.5, 364.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 244.705231, 130.0, 11.0, 130.0, 11.0, 280.0, 53.0, 280.0, 53.0, 292.0, 56.5, 292.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 144.283752, 130.0, 11.0, 130.0, 11.0, 211.0, 53.0, 211.0, 53.0, 223.0, 56.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-146" : [ "live.gain~", "live.gain~", 0 ]
		}

	}

}
