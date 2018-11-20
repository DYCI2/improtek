{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x86"
		}
,
		"rect" : [ 826.0, 443.0, 356.0, 223.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"color" : [ 1.0, 0.5, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 44.0, 70.0, 20.0 ],
					"text" : "r video_rec"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.974682, 1.0, 0.973019, 1.0 ],
					"color" : [ 1.0, 0.5, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 138.0, 44.0, 113.0, 20.0 ],
					"text" : "r video_rec_enable"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "online" ],
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "To_videoIK.maxpat",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 70.0, 97.0, 120.0 ],
					"varname" : "To_video2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 3.0, 306.0, 33.0 ],
					"text" : "idx-in-scenario-learning \n$pos_in_impro $pos_in_scenario $new_date_seg_buff"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "To_videoIK.maxpat",
				"bootpath" : "/Users/gabloch/Music/OFondue/ImproteKgb/Max-Interface/Video",
				"patcherrelativepath" : "../../../Video",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "voice_videoplay.maxpat",
				"bootpath" : "/Users/gabloch/Music/OFondue/ImproteKgb/Max-Interface/Video",
				"patcherrelativepath" : "../../../Video",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
