{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x64"
		}
,
		"rect" : [ 1250.0, 480.0, 533.0, 145.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Source Code Pro ExtraLight",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Source Code Pro ExtraLight",
					"fontsize" : 10.0,
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 68.0, 379.0, 17.0 ],
					"text" : "/loop_last_n/x 0. 0. 0. 0. 1. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Source Code Pro ExtraLight",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x64"
						}
,
						"rect" : [ 673.0, 215.0, 1092.0, 717.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Source Code Pro ExtraLight",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-89",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 685.0, 555.0, 263.0, 17.0 ],
									"text" : "/beep/x 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 593.0, 177.0, 17.0 ],
									"text" : "lemur_linx_nx_range vumr 0. 1. jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 570.0, 176.0, 17.0 ],
									"text" : "lemur_linx_nx_range vuml 0. 1. jzm"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-86",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.5, 236.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 340.0, 153.0, 1294.0, 441.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Helvetica Neue Light",
													"fontsize" : 10.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 297.5, 191.0, 32.5, 18.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"args" : [ "play_loop", "loop last n beats", "play_loop" ],
													"id" : "obj-67",
													"maxclass" : "bpatcher",
													"name" : "fxbp.maxpat",
													"numinlets" : 2,
													"numoutlets" : 2,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "float", "" ],
													"patching_rect" : [ 297.5, 217.0, 121.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica Neue Light",
													"fontsize" : 10.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 297.5, 159.0, 50.0, 18.0 ],
													"text" : "zl group"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica Neue Light",
													"fontsize" : 10.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 297.5, 134.0, 47.0, 18.0 ],
													"text" : "zl sub 1."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-58",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 180.0, 403.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 6,
															"minor" : 1,
															"revision" : 9,
															"architecture" : "x64"
														}
,
														"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Source Code Pro ExtraLight",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 92.0, 212.0, 32.5, 17.0 ],
																	"text" : "+ 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-44",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 234.333374, 317.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-45",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 206.833374, 317.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-43",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 182.5, 317.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-41",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 155.0, 317.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-39",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 50.0, 212.0, 32.5, 17.0 ],
																	"text" : "sel 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-34",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 157.0, 35.0, 17.0 ],
																	"text" : "zl rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-33",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 50.0, 182.0, 61.0, 17.0 ],
																	"text" : "unpack 0 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 155.0, 283.0, 59.5, 17.0 ],
																	"text" : "gate 4"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"maxclass" : "newobj",
																	"numinlets" : 4,
																	"numoutlets" : 1,
																	"outlettype" : [ "list" ],
																	"patching_rect" : [ 50.0, 136.0, 59.5, 17.0 ],
																	"text" : "funnel 4"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Source Code Pro ExtraLight",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 257.333374, 348.0, 41.0, 19.0 ],
																	"text" : "t 1.5"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Source Code Pro ExtraLight",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 228.333374, 348.0, 29.0, 19.0 ],
																	"text" : "t 4"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Source Code Pro ExtraLight",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 195.333374, 348.0, 29.0, 19.0 ],
																	"text" : "t 2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Source Code Pro ExtraLight",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 162.333374, 348.0, 29.0, 19.0 ],
																	"text" : "t 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Source Code Pro ExtraLight",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "int", "int", "int" ],
																	"patching_rect" : [ 50.0, 100.0, 95.0, 19.0 ],
																	"text" : "unpack 0 0 0 0"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-49",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-50",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 205.833374, 427.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 3 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-16", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 2 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-16", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 1 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-16", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-25", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-41", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-31", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-43", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-31", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-44", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-31", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-45", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-31", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-33", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-33", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-33", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-34", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 1 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-39", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-41", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-43", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-44", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-45", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-49", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 165.0, 111.0, 66.0, 17.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Source Code Pro ExtraLight",
														"default_fontsize" : 12.0,
														"description" : "",
														"digest" : "",
														"fontface" : 0,
														"fontname" : "Source Code Pro ExtraLight",
														"fontsize" : 12.0,
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p pour_edqt"
												}

											}
, 											{
												"box" : 												{
													"args" : [ "mult_coeff_acc_tempo", "coeff acceleration voix secondaires", "mult_coeff_acc", 0.1, 10.0, "@init", 1.0 ],
													"id" : "obj-20",
													"maxclass" : "bpatcher",
													"name" : "fxbp.maxpat",
													"numinlets" : 2,
													"numoutlets" : 2,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "float", "" ],
													"patching_rect" : [ 165.0, 182.0, 121.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"patching_rect" : [ 154.0, 359.0, 143.0, 19.0 ],
													"text" : "ffb mult_coeff_acc_tempo"
												}

											}
, 											{
												"box" : 												{
													"args" : [ "beep", "beep improtek metro", "beep", 0 ],
													"id" : "obj-12",
													"maxclass" : "bpatcher",
													"name" : "tbp2.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "int" ],
													"patching_rect" : [ 167.083374, 269.0, 78.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 251.583374, 269.0, 144.0, 17.0 ],
													"text" : "lemur_linx_nx beep 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 111.0, 32.5, 17.0 ],
													"text" : "1."
												}

											}
, 											{
												"box" : 												{
													"args" : [ "start_metro", "start stop improtek metro", "start_metro" ],
													"id" : "obj-123",
													"maxclass" : "bpatcher",
													"name" : "tbp2.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "int" ],
													"patching_rect" : [ 29.5, 318.0, 78.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 109.0, 318.0, 221.0, 19.0 ],
													"text" : "lemur_linx_nx start_metro 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"args" : [ "ipad_pedale_gate", "enable disable ipad or pedal", "ipad_pedale_gate", "@init", 1 ],
													"id" : "obj-82",
													"maxclass" : "bpatcher",
													"name" : "ggatebp.maxpat",
													"numinlets" : 2,
													"numoutlets" : 4,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "", "", "", "int" ],
													"patching_rect" : [ 743.0, 13.0, 102.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-83",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 743.0, 40.0, 65.0, 30.0 ],
													"text" : ";\renable $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 743.0, 86.0, 191.0, 19.0 ],
													"text" : "lemur_linx_nx enable 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 726.0, 134.0, 185.0, 19.0 ],
													"text" : "lemur_linx_nx heart 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 31.0, 134.0, 41.0, 19.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 966.5, 105.5, 101.0, 19.0 ],
													"text" : "print IPAD_NEXT"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-53",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 134.0, 13.0, 95.0, 17.0 ],
													"text" : "/safestop/x 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 182.0, 107.0, 19.0 ],
													"text" : "s reload_kaddish"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 30.5, 40.0, 581.0, 32.0 ],
													"text" : "route /kaddish/x /start_metro/x /edqt/x /loop_last_n/x /gominusone/x /safeminus/x /goplusone/x /safeplus/x"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 51.0, 119.0, 19.0 ],
													"text" : "anti_rebond_01 499"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 1078.0, 76.5, 41.0, 19.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 105.5, 161.0, 30.0 ],
													"text" : ";\rantescofo_inlet nextlabel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 966.5, 51.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 23.0, 47.0, 19.0 ],
													"text" : "r next"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-54",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 31.0, 4.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-64", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-82", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 77.0, 313.0, 143.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Verdana",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p secret_heroes_faders"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 130.0, 379.0, 17.0 ],
									"text" : "/loop_last_n/x 0. 0. 0. 0. 1. 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-83",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 175.0, 59.0, 30.0 ],
									"text" : ";\rheart $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 138.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "ipad_pedale_gate", "enable disable ipad or pedal", "ipad_pedale_gate", "@init", 1 ],
									"id" : "obj-82",
									"maxclass" : "bpatcher",
									"name" : "ggatebp.maxpat",
									"numinlets" : 2,
									"numoutlets" : 4,
									"offset" : [ -151.0, -107.0 ],
									"outlettype" : [ "", "", "", "int" ],
									"patching_rect" : [ 75.0, 442.0, 102.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "ipad_pedale_gate", "enable disable ipad or pedal", "ipad_pedale_gate", "@init", 1 ],
									"id" : "obj-144",
									"maxclass" : "bpatcher",
									"name" : "ggatebp.maxpat",
									"numinlets" : 2,
									"numoutlets" : 4,
									"offset" : [ -151.0, -107.0 ],
									"outlettype" : [ "", "", "", "int" ],
									"patching_rect" : [ 34.5, 275.0, 102.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 891.0, 274.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 920.0, 199.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 920.0, 223.0, 119.0, 19.0 ],
									"text" : "prepend /labelnext"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 785.0, 199.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 785.0, 223.0, 119.0, 19.0 ],
									"text" : "prepend /labelprev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 920.0, 177.0, 47.0, 19.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 920.0, 154.0, 113.0, 19.0 ],
									"text" : "r scorelabel_next"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 785.0, 177.0, 47.0, 19.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 785.0, 154.0, 113.0, 19.0 ],
									"text" : "r scorelabel_prev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 785.5, 113.0, 197.0, 19.0 ],
									"text" : "<< update affichage en continue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 424.0, 175.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 175.0, 53.0, 17.0 ],
									"text" : "f9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 628.0, 113.0, 125.0, 19.0 ],
									"text" : "metro 500 @active 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 533.0, 153.0, 47.0, 19.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 602.0, 199.0, 53.0, 17.0 ],
									"text" : "abc123d"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 200.0, 83.0, 19.0 ],
									"text" : "connect link"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 177.0, 346.0, 83.0, 19.0 ],
									"text" : "connect link"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 487.0, 209.0, 19.0 ],
									"text" : "both iphone5 & ipad send commands"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 299.0, 373.0, 155.0, 19.0 ],
									"text" : "send to iphone ip adress"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.5, 269.0, 143.0, 19.0 ],
									"text" : "send to ipad ip adress"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 662.0, 617.0, 49.0, 19.0 ],
									"text" : "s ipad"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 484.0, 423.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 484.0, 383.0, 41.0, 19.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 484.0, 402.0, 95.0, 17.0 ],
									"text" : "/s1_dmax/x $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 424.0, 236.0, 79.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 424.0, 213.0, 61.0, 19.0 ],
									"text" : "thispc l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 558.0, 199.0, 37.0, 17.0 ],
									"text" : "abcd"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 628.0, 432.0, 43.0, 19.0 ],
									"text" : "r jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 546.0, 570.0, 67.0, 19.0 ],
									"text" : "s iphone5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-38",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 650.0, 357.0, 194.0, 16.0 ],
									"text" : "127.0.0.1"
								}

							}
, 							{
								"box" : 								{
									"hint" : "ipad.osc.gate",
									"id" : "obj-43",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 633.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 650.0, 379.0, 317.0, 19.0 ],
									"text" : "ether_send_09 ipad @ip 127.0.0.1 @port 8000 @init 1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.976471, 0.905882, 0.576471, 1.0 ],
									"id" : "obj-53",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 628.0, 345.0, 375.0, 65.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.0, 177.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.0, 199.0, 109.0, 19.0 ],
									"text" : "prepend /message"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.0, 154.0, 67.0, 19.0 ],
									"text" : "r message"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 662.0, 223.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 529.0, 251.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 529.0, 275.0, 95.0, 19.0 ],
									"text" : "prepend /label"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 488.0, 113.0, 119.0, 19.0 ],
									"text" : "r scorelabel_lemur"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 529.0, 299.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 27.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 51.0, 97.0, 19.0 ],
									"text" : "prepend /s5txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 6.0, 55.0, 19.0 ],
									"text" : "r s5txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 858.0, 75.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 754.0, 27.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 754.0, 51.0, 97.0, 19.0 ],
									"text" : "prepend /s4txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 754.0, 6.0, 55.0, 19.0 ],
									"text" : "r s4txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 754.0, 75.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 650.0, 27.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 650.0, 51.0, 97.0, 19.0 ],
									"text" : "prepend /s3txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 650.0, 6.0, 55.0, 19.0 ],
									"text" : "r s3txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 650.0, 75.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 546.0, 27.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 546.0, 51.0, 97.0, 19.0 ],
									"text" : "prepend /s2txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 546.0, 6.0, 55.0, 19.0 ],
									"text" : "r s2txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 546.0, 75.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 442.0, 27.0, 109.0, 19.0 ],
									"text" : "prepend @content"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 442.0, 51.0, 97.0, 19.0 ],
									"text" : "prepend /s1txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 442.0, 6.0, 55.0, 19.0 ],
									"text" : "r s1txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 442.0, 75.0, 43.0, 19.0 ],
									"text" : "s jzm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 223.0, 169.0, 19.0 ],
									"text" : "udpsend 169.254.100.2 8000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.0, 373.0, 169.0, 19.0 ],
									"text" : "udpsend 169.254.100.1 8000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 92.0, 426.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 402.0, 103.0, 19.0 ],
									"text" : "udpreceive 8002"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.0, 322.0, 131.0, 19.0 ],
									"text" : "Receive from iphone5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 463.0, 373.0, 1261.0, 270.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"args" : [ "ipad_pedale_gate", "enable disable ipad or pedal", "ipad_pedale_gate", "@init", 1 ],
													"id" : "obj-82",
													"maxclass" : "bpatcher",
													"name" : "ggatebp.maxpat",
													"numinlets" : 2,
													"numoutlets" : 4,
													"offset" : [ -151.0, -107.0 ],
													"outlettype" : [ "", "", "", "int" ],
													"patching_rect" : [ 743.0, 13.0, 102.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-83",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 743.0, 40.0, 65.0, 30.0 ],
													"text" : ";\renable $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 743.0, 86.0, 191.0, 19.0 ],
													"text" : "lemur_linx_nx enable 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 726.0, 134.0, 185.0, 19.0 ],
													"text" : "lemur_linx_nx heart 0. 1. jzm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 31.0, 134.0, 41.0, 19.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 638.333374, 134.0, 71.0, 19.0 ],
													"text" : "r plus_one"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 282.0, 134.0, 77.0, 19.0 ],
													"text" : "r minus_one"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 966.5, 105.5, 101.0, 19.0 ],
													"text" : "print IPAD_NEXT"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 588.333374, 134.0, 44.0, 19.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-67",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 588.0, 176.0, 323.0, 42.0 ],
													"text" : ";\rantescofo_inlet actions off, nextlabel, actions on;\rmessage \"GOTO NEXT\""
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 588.333374, 111.0, 33.0, 19.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 588.333374, 86.0, 55.0, 19.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 231.333374, 134.0, 44.0, 19.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-62",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 231.333374, 176.0, 347.0, 42.0 ],
													"text" : ";\rantescofo_inlet actions off, previouslabel, actions on;\rmessage \"GOTO PREVIOUS\""
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 232.333374, 111.0, 33.0, 19.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 232.333374, 86.0, 55.0, 19.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 97.5, 182.0, 120.0, 19.0 ],
													"text" : "s stop_performance"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 97.5, 134.0, 44.0, 19.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 97.5, 111.0, 33.0, 19.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.5, 86.0, 55.0, 19.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-53",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 134.0, 13.0, 345.0, 17.0 ],
													"text" : "/safestop/x 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 31.0, 111.0, 33.0, 19.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 31.0, 86.0, 55.0, 19.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 182.0, 49.0, 19.0 ],
													"text" : "s next"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 30.5, 40.0, 643.833374, 19.0 ],
													"text" : "route /next/x /safenext/x /safestop/x /stopall/x /gominusone/x /safeminus/x /goplusone/x /safeplus/x"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 51.0, 119.0, 19.0 ],
													"text" : "anti_rebond_01 499"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 1078.0, 76.5, 44.0, 19.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 105.5, 161.0, 30.0 ],
													"text" : ";\rantescofo_inlet nextlabel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 966.5, 51.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1078.0, 23.0, 49.0, 19.0 ],
													"text" : "r next"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-54",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 31.0, 4.0, 15.0, 15.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-82", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 16.0, 479.0, 83.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Verdana",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p qsm_faders"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 10.5, 190.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 242.0, 167.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.5, 223.0, 140.0, 19.0 ],
									"text" : "print udpreceive_8000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.5, 196.0, 36.0, 19.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.5, 171.0, 101.0, 19.0 ],
									"text" : "udpreceive 9000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.5, 144.0, 125.0, 19.0 ],
									"text" : "Receive from ipad"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 97.0, 340.0, 19.0 ],
									"text" : "ether_send_09 jzm @ip 192.168.20.1 @port 8000 @init 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 33.0, 18.0, 194.0, 16.0 ],
									"text" : "192.168.1.154"
								}

							}
, 							{
								"box" : 								{
									"hint" : "iphone5.osc.gate",
									"id" : "obj-4",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 16.0, 40.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 40.0, 359.0, 19.0 ],
									"text" : "ether_send_09 iphone5 @ip 192.168.1.154 @port 8000 @init 1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.976471, 0.905882, 0.576471, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 6.0, 408.0, 63.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 75.0, 338.0, 19.0 ],
									"text" : "ether_send_08 JZM @ip 192.168.0.101 @port 8000 @init 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 1,
									"hidden" : 0,
									"source" : [ "obj-144", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 42.5, 37.0, 383.5, 37.0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 659.5, 376.0, 957.5, 376.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 957.5, 402.0, 1021.0, 402.0, 1021.0, 354.0, 659.5, 354.0 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 383.5, 63.0, 412.0, 63.0, 412.0, 15.0, 42.5, 15.0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"disabled" : 1,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 15.0, 53.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Source Code Pro ExtraLight",
						"default_fontsize" : 10.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Source Code Pro ExtraLight",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p lemur"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Source Code Pro ExtraLight",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x64"
						}
,
						"rect" : [ 1114.0, 171.0, 591.0, 622.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-38",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 494.0, 203.0, 18.0 ],
									"text" : "192.168.1.160"
								}

							}
, 							{
								"box" : 								{
									"hint" : "cue_video_gate",
									"id" : "obj-39",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 22.0, 518.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 518.0, 371.0, 19.0 ],
									"text" : "ether_send_12 cue_video @ip 192.168.1.160 @port 9111 @init 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 730.0, 664.0, 459.0, 277.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Source Code Pro ExtraLight",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 200.0, 143.0, 30.0 ],
													"text" : ";\rcue_video pedal_n bang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 227.0, 106.0, 131.0, 30.0 ],
													"text" : ";\rcue_video key_n bang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 164.0, 137.0, 30.0 ],
													"text" : ";\rcue_video ipad_n bang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 178.0, 106.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 178.0, 30.0, 65.0, 19.0 ],
													"text" : "space bar"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 118.0, 30.0, 35.0, 19.0 ],
													"text" : "ipad"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 30.0, 71.0, 19.0 ],
													"text" : "midi pedal"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 178.0, 60.0, 71.0, 19.0 ],
													"text" : "r key_next"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 118.0, 106.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 60.0, 47.0, 19.0 ],
													"text" : "r next"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 15.0, 106.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Source Code Pro ExtraLight",
													"fontsize" : 10.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 60.0, 89.0, 19.0 ],
													"text" : "r pedale_midi"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 440.0, 518.0, 119.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Source Code Pro ExtraLight",
										"default_fontsize" : 10.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Source Code Pro ExtraLight",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p to_mac_cue_video"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 328.0, 412.0, 119.0, 19.0 ],
									"text" : "print to_mac_video"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 423.0, 203.0, 18.0 ],
									"text" : "192.168.1.160"
								}

							}
, 							{
								"box" : 								{
									"hint" : "to_mac_video_gate",
									"id" : "obj-22",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 22.0, 447.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 447.0, 389.0, 19.0 ],
									"text" : "ether_send_12 to_mac_video @ip 192.168.1.160 @port 9104 @init 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 590.0, 449.0, 19.0 ],
									"text" : "CRASH ether_tcp_send_11 to_mac_video @ip 192.168.1.160 @port 9104 @init 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 560.0, 389.0, 19.0 ],
									"text" : "ether_send_11 to_mac_video @ip 192.168.1.160 @port 9104 @init 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 488.0, 400.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 455.0, 438.0, 95.0, 19.0 ],
									"text" : "s to_mac_video"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.0, 361.0, 71.0, 19.0 ],
									"text" : "r to_video"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 44.0, 41.0, 19.0 ],
									"text" : "r eth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 337.0, 203.0, 18.0 ],
									"text" : "127.0.0.1"
								}

							}
, 							{
								"box" : 								{
									"hint" : "to_video_gate",
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 12.0, 361.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 361.0, 341.0, 19.0 ],
									"text" : "ether_send_11 to_video @ip 127.0.0.1 @port 9104 @init 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 65.0, 372.0, 1665.0, 587.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1376.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx8_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1376.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx8_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1205.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx7_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1205.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx7_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1035.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx6_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1035.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx6_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-113",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 870.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx5_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 870.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx5_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 698.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx2_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 698.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx2_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 527.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx3_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-106",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 527.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx3_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx2_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx2_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 186.0, 455.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx1_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 186.0, 478.0, 164.0, 17.0 ],
													"text" : "netfb_03 spfx1_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1376.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx8_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1205.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx7_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1376.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx8 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-96",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1205.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx7 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1035.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx6_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 870.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx5_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 698.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx4_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1035.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx6 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-91",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 870.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx5 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 698.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx4 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 455.0, 170.0, 17.0 ],
													"text" : "netfb_03 master_∆_db to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 478.0, 170.0, 17.0 ],
													"text" : "netfb_03 master_mute to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 204.0, 178.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 183.0, 178.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 164.0, 178.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 139.0, 182.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_time to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 118.0, 182.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_time to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1443.0, 99.0, 182.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_time to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 69.0, 156.0, 17.0 ],
													"text" : "netfb_03 read_trajc to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 69.0, 157.0, 17.0 ],
													"text" : "netfb_03 read_trajb to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 69.0, 156.0, 17.0 ],
													"text" : "netfb_03 read_traja to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 69.0, 157.0, 17.0 ],
													"text" : "netfb_03 read_traj3 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 69.0, 157.0, 17.0 ],
													"text" : "netfb_03 read_traj2 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 69.0, 157.0, 17.0 ],
													"text" : "netfb_03 read_traj1 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 204.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat3_live to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 204.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat3_heav to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 183.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat2_live to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 183.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat2_heav to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 164.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat1_live to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 164.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat1_heav to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 204.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat3_dist_min to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 183.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat2_dist_min to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 164.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat1_dist_min to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 204.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat3_dopp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 183.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat2_dopp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 164.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat1_dopp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 139.0, 152.0, 17.0 ],
													"text" : "netfb_03 spat3_air to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 118.0, 152.0, 17.0 ],
													"text" : "netfb_03 spat2_air to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1274.0, 99.0, 152.0, 17.0 ],
													"text" : "netfb_03 spat1_air to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 139.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat3_env to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 118.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat2_env to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 99.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat1_env to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 139.0, 159.0, 17.0 ],
													"text" : "netfb_03 spat3_prer to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 118.0, 159.0, 17.0 ],
													"text" : "netfb_03 spat2_prer to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 99.0, 159.0, 17.0 ],
													"text" : "netfb_03 spat1_prer to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 139.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat3_bril to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 118.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat2_bril to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 99.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat1_bril to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 139.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat3_warm to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 118.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat2_warm to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 99.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat1_warm to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 139.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat3_pres to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 118.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat2_pres to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 99.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat1_pres to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 204.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat3_aperture to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 183.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat2_aperture to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 164.0, 179.0, 17.0 ],
													"text" : "netfb_03 spat1_aperture to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 50.0, 151.0, 17.0 ],
													"text" : "netfb_03 read_traj to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 139.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat3_revp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 118.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat2_revp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 99.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat1_revp to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 139.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat3_rev to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 204.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat3_width to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 204.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat3_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 204.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat3_az to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 118.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat2_rev to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 99.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat1_rev to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 183.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat2_width to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 183.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat2_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 183.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat2_az to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 164.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat1_width to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 164.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat1_dist to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 164.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat1_az to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 527.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx3_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx2_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 186.0, 429.0, 147.0, 17.0 ],
													"text" : "netfb_03 spfx1_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 527.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx3 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx2 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 186.0, 406.0, 135.0, 17.0 ],
													"text" : "netfb_03 spfx1 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 429.0, 153.0, 17.0 ],
													"text" : "netfb_03 master_∆ to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 406.0, 141.0, 17.0 ],
													"text" : "netfb_03 master to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 50.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_loop to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 31.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_loop to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.0, 12.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_loop to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 50.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat3_traj to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 31.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat2_traj to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 906.0, 12.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat1_traj to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 50.0, 156.0, 17.0 ],
													"text" : "netfb_03 traj_spat3 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 31.0, 156.0, 17.0 ],
													"text" : "netfb_03 traj_spat2 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 722.0, 12.0, 156.0, 17.0 ],
													"text" : "netfb_03 traj_spat1 to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 344.0, 31.0, 137.0, 17.0 ],
													"text" : "netfb_03 bouge to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 50.0, 151.0, 17.0 ],
													"text" : "netfb_03 spat3_ctl to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 31.0, 151.0, 17.0 ],
													"text" : "netfb_03 spat2_ctl to_spats_fx"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 533.0, 12.0, 151.0, 17.0 ],
													"text" : "netfb_03 spat1_ctl to_spats_fx"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 406.0, 298.0, 127.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p spats_fx_ethernet"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 274.0, 203.0, 18.0 ],
									"text" : "127.0.0.1"
								}

							}
, 							{
								"box" : 								{
									"hint" : "to_spats_fx_gate",
									"id" : "obj-5",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 12.0, 298.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 298.0, 361.0, 19.0 ],
									"text" : "ether_send_11 to_spats_fx @ip 127.0.0.1 @port 9103 @init 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 102.0, 301.0, 1560.0, 563.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 692.0, 388.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat4_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-96",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 692.0, 362.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat4_∆_db to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-97",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 692.0, 338.0, 147.0, 17.0 ],
													"text" : "netfb_03 spat4_∆ to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 692.0, 315.0, 135.0, 17.0 ],
													"text" : "netfb_03 spat4 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 524.0, 388.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat3_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 524.0, 362.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat3_∆_db to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 524.0, 338.0, 147.0, 17.0 ],
													"text" : "netfb_03 spat3_∆ to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 524.0, 315.0, 135.0, 17.0 ],
													"text" : "netfb_03 spat3 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-91",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 351.5, 388.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat2_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 351.5, 362.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat2_∆_db to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 351.5, 338.0, 147.0, 17.0 ],
													"text" : "netfb_03 spat2_∆ to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 351.5, 315.0, 135.0, 17.0 ],
													"text" : "netfb_03 spat2 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 183.5, 388.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat1_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 183.5, 362.0, 164.0, 17.0 ],
													"text" : "netfb_03 spat1_∆_db to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 362.0, 168.0, 17.0 ],
													"text" : "netfb_03 master_∆_db to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-86",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 284.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat3_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-85",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 263.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat2_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 244.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat1_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 388.0, 168.0, 17.0 ],
													"text" : "netfb_03 master_mute to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 330.0, 176.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 309.0, 176.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 290.0, 176.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 265.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_time to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 244.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_time to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 225.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_time to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 62.0, 154.0, 17.0 ],
													"text" : "netfb_03 read_trajc to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 62.0, 155.0, 17.0 ],
													"text" : "netfb_03 read_trajb to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 62.0, 156.0, 17.0 ],
													"text" : "netfb_03 read_traja to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 62.0, 155.0, 17.0 ],
													"text" : "netfb_03 read_traj3 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 62.0, 155.0, 17.0 ],
													"text" : "netfb_03 read_traj2 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 62.0, 155.0, 17.0 ],
													"text" : "netfb_03 read_traj1 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 197.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat3_live to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 197.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat3_heav to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 176.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat2_live to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 176.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat2_heav to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 157.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat1_live to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 157.0, 160.0, 17.0 ],
													"text" : "netfb_03 spat1_heav to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 197.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat3_dist_min to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 176.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat2_dist_min to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 157.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat1_dist_min to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 197.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat3_dopp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 176.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat2_dopp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 157.0, 162.0, 17.0 ],
													"text" : "netfb_03 spat1_dopp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 132.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat3_air to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 111.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat2_air to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1293.0, 92.0, 150.0, 17.0 ],
													"text" : "netfb_03 spat1_air to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 132.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat3_env to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 111.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat2_env to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 92.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat1_env to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 132.0, 157.0, 17.0 ],
													"text" : "netfb_03 spat3_prer to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 111.0, 157.0, 17.0 ],
													"text" : "netfb_03 spat2_prer to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 92.0, 157.0, 17.0 ],
													"text" : "netfb_03 spat1_prer to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 132.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat3_bril to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 111.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat2_bril to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 92.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat1_bril to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 132.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat3_warm to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 111.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat2_warm to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 92.0, 165.0, 17.0 ],
													"text" : "netfb_03 spat1_warm to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 132.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat3_pres to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 111.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat2_pres to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 92.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat1_pres to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 197.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat3_aperture to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 176.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat2_aperture to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 157.0, 177.0, 17.0 ],
													"text" : "netfb_03 spat1_aperture to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 43.0, 149.0, 17.0 ],
													"text" : "netfb_03 read_traj to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 132.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat3_revp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 111.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat2_revp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 92.0, 158.0, 17.0 ],
													"text" : "netfb_03 spat1_revp to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 132.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat3_rev to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 197.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat3_width to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 197.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat3_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 197.0, 148.0, 17.0 ],
													"text" : "netfb_03 spat3_az to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 111.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat2_rev to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 92.0, 153.0, 17.0 ],
													"text" : "netfb_03 spat1_rev to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 176.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat2_width to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 176.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat2_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 176.0, 148.0, 17.0 ],
													"text" : "netfb_03 spat2_az to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 157.0, 163.0, 17.0 ],
													"text" : "netfb_03 spat1_width to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 157.0, 156.0, 17.0 ],
													"text" : "netfb_03 spat1_dist to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 157.0, 148.0, 17.0 ],
													"text" : "netfb_03 spat1_az to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 183.5, 338.0, 145.0, 17.0 ],
													"text" : "netfb_03 spat1_∆ to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 183.5, 315.0, 134.0, 17.0 ],
													"text" : "netfb_03 spat1 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 338.0, 151.0, 17.0 ],
													"text" : "netfb_03 master_∆ to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 315.0, 139.0, 17.0 ],
													"text" : "netfb_03 master to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 43.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat3_traj_loop to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 24.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat2_traj_loop to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 1094.0, 5.0, 180.0, 17.0 ],
													"text" : "netfb_03 spat1_traj_loop to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 43.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat3_traj to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 24.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat2_traj to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 907.0, 5.0, 154.0, 17.0 ],
													"text" : "netfb_03 spat1_traj to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 43.0, 154.0, 17.0 ],
													"text" : "netfb_03 traj_spat3 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 24.0, 154.0, 17.0 ],
													"text" : "netfb_03 traj_spat2 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 718.0, 5.0, 154.0, 17.0 ],
													"text" : "netfb_03 traj_spat1 to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 353.0, 24.0, 135.0, 17.0 ],
													"text" : "netfb_03 bouge to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 43.0, 149.0, 17.0 ],
													"text" : "netfb_03 spat3_ctl to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 24.0, 149.0, 17.0 ],
													"text" : "netfb_03 spat2_ctl to_spats_sf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 547.0, 5.0, 149.0, 17.0 ],
													"text" : "netfb_03 spat1_ctl to_spats_sf"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 406.0, 235.0, 127.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p spats_sf_ethernet"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-30",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 211.0, 203.0, 18.0 ],
									"text" : "127.0.0.1"
								}

							}
, 							{
								"box" : 								{
									"hint" : "to_spats_sf_gate",
									"id" : "obj-31",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 12.0, 235.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 235.0, 361.0, 19.0 ],
									"text" : "ether_send_11 to_spats_sf @ip 127.0.0.1 @port 9102 @init 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 245.0, 12.0, 60.0, 19.0 ],
									"text" : "thispc e"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 245.0, 35.0, 79.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 328.0, 83.0, 42.0, 19.0 ],
									"text" : "t b s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 328.0, 104.0, 69.0, 19.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 328.0, 147.0, 57.0, 19.0 ],
									"text" : "forward"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 328.0, 63.0, 76.0, 19.0 ],
									"text" : "zl slice 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.0, 44.0, 106.0, 19.0 ],
									"text" : "r ether_forward"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.0, 4.0, 57.0, 17.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 328.0, 20.0, 79.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 61.0, 201.0, 17.0 ],
									"text" : "129.102.65.96_send"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 59.0, 21.0, 19.0 ],
									"text" : "r"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "to_quartet" ],
									"id" : "obj-21",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "myip_01.bp.pat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ -88.0, -65.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.0, 12.0, 104.0, 39.0 ]
								}

							}
, 							{
								"box" : 								{
									"hint" : "local_qsm_gate",
									"id" : "obj-25",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 12.0, 97.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 97.0, 283.0, 19.0 ],
									"text" : "ether_receive_09 local_qsm @port 9100 @init 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.0, 12.0, 122.0, 19.0 ],
									"text" : "for remote control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 412.0, 70.5, 77.0, 44.0 ],
									"text" : "receive anything undeclared"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Source Code Pro ExtraLight",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 348.0, 124.0, 81.0, 19.0 ],
									"text" : "prepend send"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 49.5, 444.0, 419.5, 444.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 17.5, 55.5, 33.5, 55.5 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 17.5, 54.5, 16.5, 54.5 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 419.5, 474.0, 17.0, 474.0, 17.0, 420.0, 49.5, 420.0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 39.5, 232.0, 381.5, 232.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 381.5, 262.0, 7.0, 262.0, 7.0, 208.0, 39.5, 208.0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 49.5, 515.0, 401.5, 515.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 39.5, 295.0, 381.5, 295.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 401.5, 545.0, 17.0, 545.0, 17.0, 491.0, 49.5, 491.0 ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 381.5, 325.0, 7.0, 325.0, 7.0, 271.0, 39.5, 271.0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 39.5, 358.0, 361.5, 358.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 361.5, 388.0, 7.0, 388.0, 7.0, 334.0, 39.5, 334.0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 75.0, 15.0, 82.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 9.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Verdana",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ethernet"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "ether_receive_09.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gate_name_01.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ifb.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "register.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bbfirst.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "myip_01.bp.pat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "myip_01.pat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "sfb.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "concat2.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "off.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thispc.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ether_send_11.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "myip.pat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "not.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "netfb_03.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gate_name.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ether_send_12.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ether_send_09.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ethernet communication",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gatename.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "anti_rebond_01.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "oneanything.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lemur_linx_nx.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/jazz mutant",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/jazz mutant",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "no_loop_ffbx",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/Jonathan Harvey/4th String Quartet/maxmsp sq/z_dev/filter 12 order",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/Jonathan Harvey/4th String Quartet/maxmsp sq/z_dev/filter 12 order",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "ffbx.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "appcat2.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "off1.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/Util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ggatebp.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "tfbr1.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru2",
				"bootpath" : "/Users/nouno/Documents/Max/Max for Live Devices/gn.spat_1s_2r Project/other",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/Max/Max for Live Devices/gn.spat_1s_2r Project/other",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "this.patcher.name.js",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/js",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/js",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "tbp2.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "tfbr2.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "this.parentpatcher.name.js",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/js",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/js",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ffb.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fxbp.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ffbxr7.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/ubiquitus",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lemur_linx_nx_range.maxpat",
				"bootpath" : "/Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/jazz mutant",
				"patcherrelativepath" : "../../../../../../Users/nouno/Documents/IRcam/PRod/MaxMSP lib/MaxMSP lib patches/00 lib gil abs/Control/jazz mutant",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
