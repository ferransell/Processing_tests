{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 52.0, 332.0, 817.0, 428.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 500.0, 384.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 566.0, 394.0, 103.0, 22.0 ],
					"style" : "",
					"text" : "join 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 360.5, 137.0, 22.0 ],
					"style" : "",
					"text" : "pak 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-11",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 394.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 0.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 277.0, 423.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 119.0, 423.0, 17.0 ],
					"varname" : "MappingAddress[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 242.0, 423.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 102.0, 419.0, 17.0 ],
					"varname" : "MappingAddress[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 214.0, 423.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 85.0, 423.0, 17.0 ],
					"varname" : "MappingAddress[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 182.0, 423.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 68.0, 419.0, 17.0 ],
					"varname" : "MappingAddress[4]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 149.0, 423.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 51.0, 423.0, 17.0 ],
					"varname" : "MappingAddress[5]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 118.0, 423.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 34.0, 423.0, 17.0 ],
					"varname" : "MappingAddress[6]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 78.0, 423.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 17.0, 423.0, 17.0 ],
					"varname" : "MappingAddress[7]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MappingAddress.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 43.0, 423.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 0.0, 423.0, 17.0 ],
					"varname" : "MappingAddress",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 79.0, 274.0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 728.0, 221.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 95.0, 287.0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 722.0, 248.0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 114.0, 284.0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 712.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 126.071429, 302.0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 702.0, 309.0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 142.928571, 313.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 696.0, 332.0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 159.785714, 322.0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 690.0, 348.0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 179.0, 328.0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 679.0, 369.0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 193.5, 339.0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 686.0, 377.0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 2,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 3,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 4,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 5,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 6,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 7,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-8::obj-19::obj-146" : [ "Curve1[7]", "Map", 0 ],
			"obj-6::obj-19::obj-146" : [ "Curve1[2]", "Map", 0 ],
			"obj-4::obj-3::obj-32::obj-15" : [ "Unmap[4]", "unmap", 0 ],
			"obj-7::obj-3::obj-32::obj-15" : [ "Unmap[1]", "unmap", 0 ],
			"obj-1::obj-4" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-1::obj-19::obj-26" : [ "Min[6]", "Min 1", 0 ],
			"obj-6::obj-19::obj-20" : [ "Max[6]", "Max 1", 0 ],
			"obj-6::obj-4" : [ "live.toggle[2]", "live.toggle", 0 ],
			"obj-3::obj-3::obj-32::obj-19" : [ "Map[5]", "Map", 0 ],
			"obj-1::obj-3::obj-32::obj-15" : [ "Unmap[8]", "unmap", 0 ],
			"obj-5::obj-19::obj-146" : [ "Curve1[8]", "Map", 0 ],
			"obj-6::obj-9::obj-9" : [ "address[2]", "address", 0 ],
			"obj-3::obj-9::obj-9" : [ "address[5]", "address", 0 ],
			"obj-5::obj-19::obj-20" : [ "Max[2]", "Max 1", 0 ],
			"obj-2::obj-19::obj-146" : [ "Curve1[5]", "Map", 0 ],
			"obj-2::obj-19::obj-20" : [ "Max[9]", "Max 1", 0 ],
			"obj-7::obj-9::obj-9" : [ "address[1]", "address", 0 ],
			"obj-6::obj-3::obj-32::obj-19" : [ "Map[2]", "Map", 0 ],
			"obj-4::obj-9::obj-9" : [ "address[4]", "address", 0 ],
			"obj-3::obj-19::obj-20" : [ "Max[8]", "Max 1", 0 ],
			"obj-2::obj-3::obj-32::obj-19" : [ "Map[6]", "Map", 0 ],
			"obj-4::obj-4" : [ "live.toggle[9]", "live.toggle", 0 ],
			"obj-1::obj-9::obj-9" : [ "address[9]", "address", 0 ],
			"obj-7::obj-19::obj-20" : [ "Max[1]", "Max 1", 0 ],
			"obj-3::obj-3::obj-32::obj-15" : [ "Unmap[5]", "unmap", 0 ],
			"obj-8::obj-4" : [ "live.toggle[7]", "live.toggle", 0 ],
			"obj-7::obj-19::obj-26" : [ "Min[1]", "Min 1", 0 ],
			"obj-2::obj-4" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-7::obj-3::obj-32::obj-19" : [ "Map[1]", "Map", 0 ],
			"obj-7::obj-19::obj-146" : [ "Curve1[1]", "Map", 0 ],
			"obj-2::obj-19::obj-26" : [ "Min[5]", "Min 1", 0 ],
			"obj-8::obj-3::obj-32::obj-19" : [ "Map[7]", "Map", 0 ],
			"obj-2::obj-3::obj-32::obj-15" : [ "Unmap[6]", "unmap", 0 ],
			"obj-1::obj-3::obj-32::obj-19" : [ "Map[8]", "Map", 0 ],
			"obj-6::obj-19::obj-26" : [ "Min[2]", "Min 1", 0 ],
			"obj-1::obj-19::obj-146" : [ "Curve1[9]", "Map", 0 ],
			"obj-1::obj-19::obj-20" : [ "Max[10]", "Max 1", 0 ],
			"obj-7::obj-4" : [ "live.toggle[1]", "live.toggle", 0 ],
			"obj-5::obj-3::obj-32::obj-19" : [ "Map[3]", "Map", 0 ],
			"obj-4::obj-19::obj-20" : [ "Max[7]", "Max 1", 0 ],
			"obj-4::obj-19::obj-26" : [ "Min[10]", "Min 1", 0 ],
			"obj-8::obj-19::obj-26" : [ "Min[9]", "Min 1", 0 ],
			"obj-5::obj-4" : [ "live.toggle[8]", "live.toggle", 0 ],
			"obj-3::obj-4" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-4::obj-3::obj-32::obj-19" : [ "Map[4]", "Map", 0 ],
			"obj-2::obj-9::obj-9" : [ "address[8]", "address", 0 ],
			"obj-5::obj-19::obj-26" : [ "Min[3]", "Min 1", 0 ],
			"obj-8::obj-19::obj-20" : [ "Max[5]", "Max 1", 0 ],
			"obj-6::obj-3::obj-32::obj-15" : [ "Unmap[2]", "unmap", 0 ],
			"obj-3::obj-19::obj-146" : [ "Curve1[4]", "Map", 0 ],
			"obj-5::obj-9::obj-9" : [ "address[3]", "address", 0 ],
			"obj-8::obj-9::obj-9" : [ "address[7]", "address", 0 ],
			"obj-5::obj-3::obj-32::obj-15" : [ "Unmap[3]", "unmap", 0 ],
			"obj-8::obj-3::obj-32::obj-15" : [ "Unmap[7]", "unmap", 0 ],
			"obj-4::obj-19::obj-146" : [ "Curve1[3]", "Map", 0 ],
			"obj-3::obj-19::obj-26" : [ "Min[4]", "Min 1", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "MappingAddress.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "OSCAddressField.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Values.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.IO.Observe2.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.IO.MapFunction.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.IO.MapButton.maxpat",
				"bootpath" : "Z:/Users/AudioVisual02/Documents/Max 7/Max for Live Devices/OSC Send Project/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
