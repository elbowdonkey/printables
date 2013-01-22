(** This GCode was generated by ReplicatorG Sailfish - 0039 **)
(*  using Skeinforge (50)  *)
(*  for a Dual headed The Replicator  *)
(*  on 2012/12/29 11:49:07 (-0800) *)
(**** start.gcode for The Replicator, dual head ****)
M103 (disable RPM)
M73 P0 (enable build progress)
G21 (set units to mm)
G90 (set positioning to absolute)
G10 P1 X0 Y0 Z0 (Designate T0 Offset)
G10 P2 X33 Y0 Z0 (Designate T1 Offset)
M109 S110 T0 (set HBP temperature)
M104 S190 T0 (set extruder temperature) (temp updated by printOMatic)
G54 (Recall offset cooridinate system)
(**** begin homing ****)
G162 X Y F2500 (home XY axes maximum)
G161 Z F1100 (home Z axis minimum)
G92 Z-5 (set Z to -5)
G1 Z0.0 (move Z to "0")
G161 Z F100 (home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
G1 X-110.5 Y-74 Z150 F3300.0 (move to waiting position)
G130 X20 Y20 Z20 A20 B20 (Lower stepper Vrefs while heating)
M6 T0 (wait for toolhead, and HBP to reach temperature)
G130 X127 Y127 Z40 A127 B127 (Set Stepper motor Vref to defaults)
M108 R3.0 T0
G0 X-110.5 Y-74 (Position Nozzle)
G0 Z0.2      (Position Height)
M108 R4.0    (Set Extruder Speed)
M101         (Start Extruder)
G4 P1500     (Create Anchor)
(**** end of start.gcode ****)
(<format> skeinforge gcode </format>)
(<version> 12.03.14 </version>)
(<created> 12.12.29|11:49 </created>)
(<extruderInitialization>)
(<craftTypeName> extrusion </craftTypeName>)
M105
(<decimalPlacesCarried> 3 </decimalPlacesCarried>)
(<layerThickness> 0.25 </layerThickness>)
(<infillWidth> 0.4 </infillWidth>)
(<volumeFraction> 0.82 </volumeFraction>)
(<infillPerimeterOverlap> 0.3 </infillPerimeterOverlap>)
(<sharpestProduct> 0.866 </sharpestProduct>)
(<layerHeight> 0.25 </layerHeight>)
(<threadSequenceString> loops edge infill </threadSequenceString>)
(<maximumZFeedRatePerSecond> 16.0 </maximumZFeedRatePerSecond>)
(<objectFirstLayerFeedRateInfillMultiplier> 0.7 </objectFirstLayerFeedRateInfillMultiplier>)
(<operatingFeedRatePerSecond> 60.0 </operatingFeedRatePerSecond>)
(<objectFirstLayerFlowRateInfillMultiplier> 0.4 </objectFirstLayerFlowRateInfillMultiplier>)
(<operatingFlowRate> 60.0 </operatingFlowRate>)
(<orbitalFeedRatePerSecond> 0.0 </orbitalFeedRatePerSecond>)
(<travelFeedRatePerSecond> 80.0 </travelFeedRatePerSecond>)
(<skirtOutset> 2.6 </skirtOutset>)
(<edgeWidth> 0.4 </edgeWidth>)
(<perimeterWidth> 0.4 </perimeterWidth>)
(<profileName> ABS </profileName>)
(<settings>)
(<setting> alteration Activate_Alteration True </setting>)
(<setting> alteration Name_of_End_File:  </setting>)
(<setting> alteration Name_of_Start_File:  </setting>)
(<setting> alteration Remove_Redundant_Mcode True </setting>)
(<setting> alteration Replace_Variable_with_Setting True </setting>)
(<setting> altshell Activate_Altshell True </setting>)
(<setting> altshell Use_M320/M321 True </setting>)
(<setting> bottom Activate_Bottom True </setting>)
(<setting> bottom Additional_Height_over_Layer_Thickness_(ratio): 1.0 </setting>)
(<setting> bottom Altitude_(mm): 0.2 </setting>)
(<setting> bottom SVG_Viewer: webbrowser </setting>)
(<setting> chamber Activate_Chamber True </setting>)
(<setting> chamber Bed_Temperature_(Celcius): 65.0 </setting>)
(<setting> chamber Bed_Temperature_Begin_Change_Height_(mm): -1.0 </setting>)
(<setting> chamber Bed_Temperature_End_Change_Height_(mm): -1.0 </setting>)
(<setting> chamber Bed_Temperature_End_(Celcius): 20.0 </setting>)
(<setting> chamber Chamber_Temperature_(Celcius): 30.0 </setting>)
(<setting> chamber Holding_Force_(bar): 0.0 </setting>)
(<setting> comb Activate_Comb True </setting>)
(<setting> comb Running_Jump_Space_(mm): 2.0 </setting>)
(<setting> cool Activate_Cool True </setting>)
(<setting> cool Bridge_Cool_(Celcius): 1.0 </setting>)
(<setting> cool Orbit False </setting>)
(<setting> cool Slow_Down True </setting>)
(<setting> cool Maximum_Cool_(Celcius): 1.0 </setting>)
(<setting> cool Minimum_Layer_Time_(seconds): 5.0 </setting>)
(<setting> cool Minimum_Orbital_Radius_(millimeters): 10.0 </setting>)
(<setting> cool Name_of_Cool_End_File: cool_end.gcode </setting>)
(<setting> cool Name_of_Cool_Start_File: cool_start.gcode </setting>)
(<setting> cool Orbital_Outset_(millimeters): 2.0 </setting>)
(<setting> cool Turn_Fan_On_at_Beginning False </setting>)
(<setting> cool Turn_Fan_Off_at_Ending False </setting>)
(<setting> dimension Activate_Dimension True </setting>)
(<setting> dimension Absolute_Extrusion_Distance True </setting>)
(<setting> dimension Relative_Extrusion_Distance False </setting>)
(<setting> dimension Extruder_Retraction_Speed_(mm/s): 20.0 </setting>)
(<setting> dimension Filament_Diameter_(mm): 1.75 </setting>)
(<setting> dimension Filament_Packing_Density_(ratio): 0.9 </setting>)
(<setting> dimension Maximum_E_Value_before_Reset_(float): 91234.0 </setting>)
(<setting> dimension Minimum_Travel_for_Retraction_(millimeters): 1.0 </setting>)
(<setting> dimension Retract_Within_Island False </setting>)
(<setting> dimension Retraction_Distance_(millimeters): 0.0 </setting>)
(<setting> dimension Restart_Extra_Distance_(millimeters): 0.0 </setting>)
(<setting> export Activate_Export True </setting>)
(<setting> export Add_Descriptive_Extension False </setting>)
(<setting> export Add_Export_Suffix False </setting>)
(<setting> export Add_Profile_Extension False </setting>)
(<setting> export Add_Timestamp_Extension False </setting>)
(<setting> export Also_Send_Output_To:  </setting>)
(<setting> export Analyze_Gcode True </setting>)
(<setting> export Do_Not_Delete_Comments True </setting>)
(<setting> export Delete_Crafting_Comments False </setting>)
(<setting> export Delete_All_Comments False </setting>)
(<setting> export Do_Not_Change_Output True </setting>)
(<setting> export binary_16_byte False </setting>)
(<setting> export gcode_step False </setting>)
(<setting> export gcode_time_segment False </setting>)
(<setting> export gcode_small False </setting>)
(<setting> export File_Extension: gcode </setting>)
(<setting> export Name_of_Replace_File: replace.csv </setting>)
(<setting> export Save_Penultimate_Gcode False </setting>)
(<setting> fill Activate_Fill True </setting>)
(<setting> fill Diaphragm_Period_(layers): 100 </setting>)
(<setting> fill Diaphragm_Thickness_(layers): 0 </setting>)
(<setting> fill Extra_Shells_on_Alternating_Solid_Layer_(layers): 0 </setting>)
(<setting> fill Extra_Shells_on_Base_(layers): 0 </setting>)
(<setting> fill Extra_Shells_on_Sparse_Layer_(layers): 0 </setting>)
(<setting> fill Grid_Circle_Separation_over_Perimeter_Width_(ratio): 0.2 </setting>)
(<setting> fill Grid_Extra_Overlap_(ratio): 0.1 </setting>)
(<setting> fill Grid_Junction_Separation_Band_Height_(layers): 10 </setting>)
(<setting> fill Grid_Junction_Separation_over_Octogon_Radius_At_End_(ratio): 0.0 </setting>)
(<setting> fill Grid_Junction_Separation_over_Octogon_Radius_At_Middle_(ratio): 0.0 </setting>)
(<setting> fill Infill_Begin_Rotation_(degrees): 45.0 </setting>)
(<setting> fill Infill_Begin_Rotation_Repeat_(layers): 1 </setting>)
(<setting> fill Infill_Odd_Layer_Extra_Rotation_(degrees): 90.0 </setting>)
(<setting> fill Grid_Circular False </setting>)
(<setting> fill Grid_Hexagonal False </setting>)
(<setting> fill Grid_Rectangular False </setting>)
(<setting> fill Line True </setting>)
(<setting> fill Infill_Perimeter_Overlap_(ratio): 0.3 </setting>)
(<setting> fill Infill_Solidity_(ratio): 1.0 </setting>)
(<setting> fill Sharpest_Angle_(degrees): 60.0 </setting>)
(<setting> fill Solid_Surface_Thickness_(layers): 3 </setting>)
(<setting> fill Lower_Left True </setting>)
(<setting> fill Nearest False </setting>)
(<setting> fill Surrounding_Angle_(degrees): 45.0 </setting>)
(<setting> fill Infill_>_Loops_>_Perimeter False </setting>)
(<setting> fill Infill_>_Perimeter_>_Loops False </setting>)
(<setting> fill Loops_>_Infill_>_Perimeter False </setting>)
(<setting> fill Loops_>_Perimeter_>_Infill True </setting>)
(<setting> fill Perimeter_>_Infill_>_Loops False </setting>)
(<setting> fill Perimeter_>_Loops_>_Infill False </setting>)
(<setting> home Activate_Home True </setting>)
(<setting> home Name_of_Home_File: home.gcode </setting>)
(<setting> jitter Activate_Jitter True </setting>)
(<setting> jitter Jitter_Over_Perimeter_Width_(ratio): 2.0 </setting>)
(<setting> raft Activate_Raft True </setting>)
(<setting> raft Add_Raft,_Elevate_Nozzle,_Orbit: False </setting>)
(<setting> raft Base_Feed_Rate_Multiplier_(ratio): 0.75 </setting>)
(<setting> raft Base_Flow_Rate_Multiplier_(ratio): 0.6 </setting>)
(<setting> raft Base_Infill_Density_(ratio): 0.3 </setting>)
(<setting> raft Base_Layer_Thickness_over_Layer_Thickness: 2.2 </setting>)
(<setting> raft Base_Layers_(integer): 0 </setting>)
(<setting> raft Base_Nozzle_Lift_over_Base_Layer_Thickness_(ratio): 0.3 </setting>)
(<setting> raft Initial_Circling: False </setting>)
(<setting> raft Infill_Overhang_over_Extrusion_Width_(ratio): 0.1 </setting>)
(<setting> raft Interface_Feed_Rate_Multiplier_(ratio): 1.5 </setting>)
(<setting> raft Interface_Flow_Rate_Multiplier_(ratio): 0.7 </setting>)
(<setting> raft Interface_Infill_Density_(ratio): 0.4 </setting>)
(<setting> raft Interface_Layer_Thickness_over_Layer_Thickness: 1.8 </setting>)
(<setting> raft Interface_Layers_(integer): 0 </setting>)
(<setting> raft Interface_Nozzle_Lift_over_Interface_Layer_Thickness_(ratio): 0.3 </setting>)
(<setting> raft Name_of_Support_End_File: support_end.gcode </setting>)
(<setting> raft Name_of_Support_Start_File: support_start.gcode </setting>)
(<setting> raft Operating_Nozzle_Lift_over_Layer_Thickness_(ratio): 0.0 </setting>)
(<setting> raft Raft_Additional_Margin_over_Length_(%): 2.5 </setting>)
(<setting> raft Raft_Margin_(mm): 2.5 </setting>)
(<setting> raft Support_Cross_Hatch False </setting>)
(<setting> raft Support_Flow_Rate_over_Operating_Flow_Rate_(ratio): 0.7 </setting>)
(<setting> raft Support_Gap_over_Perimeter_Extrusion_Width_(ratio): 0.005 </setting>)
(<setting> raft None False </setting>)
(<setting> raft Empty_Layers_Only False </setting>)
(<setting> raft Everywhere False </setting>)
(<setting> raft Exterior_Only True </setting>)
(<setting> raft Support_Minimum_Angle_(degrees): 45.0 </setting>)
(<setting> skirt Activate_Skirt True </setting>)
(<setting> skirt Convex: True </setting>)
(<setting> skirt Gap_over_Perimeter_Width_(ratio): 6.0 </setting>)
(<setting> skirt Layers_To_(index): 2 </setting>)
(<setting> speed Activate_Speed True </setting>)
(<setting> speed Add_Flow_Rate: True </setting>)
(<setting> speed Bridge_Feed_Rate_Multiplier_(ratio): 1.0 </setting>)
(<setting> speed Bridge_Flow_Rate_Multiplier_(ratio): 1.0 </setting>)
(<setting> speed Duty_Cyle_at_Beginning_(portion): 1.0 </setting>)
(<setting> speed Duty_Cyle_at_Ending_(portion): 0.0 </setting>)
(<setting> speed Feed_Rate_(mm/s): 60.0 </setting>)
(<setting> speed Flow_Rate_Setting_(float): 60.0 </setting>)
(<setting> speed Object_First_Layer_Feed_Rate_Infill_Multiplier_(ratio): 0.7 </setting>)
(<setting> speed Object_First_Layer_Feed_Rate_Perimeter_Multiplier_(ratio): 0.56 </setting>)
(<setting> speed Object_First_Layer_Flow_Rate_Infill_Multiplier_(ratio): 0.4 </setting>)
(<setting> speed Object_First_Layer_Flow_Rate_Perimeter_Multiplier_(ratio): 0.8 </setting>)
(<setting> speed Orbital_Feed_Rate_over_Operating_Feed_Rate_(ratio): 0.0 </setting>)
(<setting> speed Maximum_Z_Feed_Rate_(mm/s): 16.0 </setting>)
(<setting> speed Perimeter_Feed_Rate_Multiplier_(ratio): 1.0 </setting>)
(<setting> speed Perimeter_Flow_Rate_Multiplier_(ratio): 1.0 </setting>)
(<setting> speed Travel_Feed_Rate_(mm/s): 80.0 </setting>)
(</settings>)
(<timeStampPreface> 20121229_114906 </timeStampPreface>)
(<procedureName> carve </procedureName>)
(<procedureName> bottom </procedureName>)
(<procedureName> preface </procedureName>)
(<procedureName> inset </procedureName>)
(<procedureName> fill </procedureName>)
(<procedureName> speed </procedureName>)
(<procedureName> raft </procedureName>)
(<procedureName> skirt </procedureName>)
(<procedureName> chamber </procedureName>)
(<procedureName> jitter </procedureName>)
(<procedureName> comb </procedureName>)
(<procedureName> cool </procedureName>)
(<procedureName> dimension </procedureName>)
(<procedureName> alteration </procedureName>)
(<procedureName> export </procedureName>)
(</extruderInitialization>)
(<crafting>)
M140 S65.0
M141 S30.0
M142 S0.0
;M113 S1.0
;M108 R48.0
M73 P25 (display progress)
(<layer> 0.45 )
(<skirt>)
G1 X-13.6 Y2.9 Z0.45 F4800.0
G1 F1200.0
G1 E0.0
G1 F4800.0
M101
G1 X-11.67 Y4.35 Z0.45 F2016.0 E0.159
G1 X11.67 Y4.35 Z0.45 F2016.0 E1.699
G1 X13.6 Y2.9 Z0.45 F2016.0 E1.859
G1 X13.6 Y-2.9 Z0.45 F2016.0 E2.242
G1 X11.67 Y-4.35 Z0.45 F2016.0 E2.401
G1 X-11.67 Y-4.35 Z0.45 F2016.0 E3.941
G1 X-13.6 Y-2.9 Z0.45 F2016.0 E4.1
G1 X-13.6 Y2.9 Z0.45 F2016.0 E4.483
G1 F1200.0
G1 E4.483
G1 F2016.0
M103
;M108 R48.0
(</skirt>)
(<rotation> (0.707106781187+0.707106781187j) )
(<nestedRing>)
(<boundaryPerimeter>)
(<boundaryPoint> X11.0 Y-1.75 Z0.45 </boundaryPoint>)
(<boundaryPoint> X11.0 Y1.75 Z0.45 </boundaryPoint>)
(<boundaryPoint> X-11.0 Y1.75 Z0.45 </boundaryPoint>)
(<boundaryPoint> X-11.0 Y-1.75 Z0.45 </boundaryPoint>)
(<edge> outer )
G1 X-10.8 Y-1.54 Z0.45 F4800.0
G1 F1200.0
G1 E4.483
G1 F4800.0
M101
M321
G1 X-10.8 Y-1.55 Z0.45 F2016.0 E4.483
G1 X10.8 Y-1.55 Z0.45 F2016.0 E5.909
G1 X10.8 Y1.55 Z0.45 F2016.0 E6.114
G1 X-10.8 Y1.55 Z0.45 F2016.0 E7.539
G1 X-10.8 Y-1.54 Z0.45 F2016.0 E7.743
G1 F1200.0
G1 E7.743
G1 F2016.0
M103
M320
(</edge>)
(</boundaryPerimeter>)
(<infill>)
(<infillBoundary>)
(<infillPoint> X10.8 Y-1.55 Z0.45 </infillPoint>)
(<infillPoint> X10.8 Y1.55 Z0.45 </infillPoint>)
(<infillPoint> X-10.8 Y1.55 Z0.45 </infillPoint>)
(<infillPoint> X-10.8 Y-1.55 Z0.45 </infillPoint>)
(</infillBoundary>)
;M108 R24.0
G1 X-10.04 Y1.27 Z0.45 F4800.0
G1 F1200.0
G1 E7.743
G1 F4800.0
M101
G1 X-10.52 Y0.79 Z0.45 F2520.0 E7.761
G1 X-10.52 Y0.23 Z0.45 F2520.0 E7.776
G1 X-9.48 Y1.27 Z0.45 F2520.0 E7.815
G1 X-8.91 Y1.27 Z0.45 F2520.0 E7.83
G1 X-10.52 Y-0.34 Z0.45 F2520.0 E7.89
G1 X-10.52 Y-0.9 Z0.45 F2520.0 E7.905
G1 X-8.35 Y1.27 Z0.45 F2520.0 E7.986
G1 X-7.78 Y1.27 Z0.45 F2520.0 E8.001
G1 X-10.31 Y-1.26 Z0.45 F2520.0 E8.095
G1 X-9.76 Y-1.27 Z0.45 F2520.0 E8.109
G1 X-7.21 Y1.27 Z0.45 F2520.0 E8.204
G1 X-6.65 Y1.27 Z0.45 F2520.0 E8.219
G1 X-9.19 Y-1.27 Z0.45 F2520.0 E8.314
G1 X-8.62 Y-1.27 Z0.45 F2520.0 E8.329
G1 X-6.08 Y1.27 Z0.45 F2520.0 E8.424
G1 X-5.52 Y1.27 Z0.45 F2520.0 E8.439
G1 X-8.06 Y-1.27 Z0.45 F2520.0 E8.534
G1 X-7.49 Y-1.27 Z0.45 F2520.0 E8.548
G1 X-4.95 Y1.27 Z0.45 F2520.0 E8.643
G1 X-4.39 Y1.27 Z0.45 F2520.0 E8.658
G1 X-6.93 Y-1.27 Z0.45 F2520.0 E8.753
G1 X-6.36 Y-1.27 Z0.45 F2520.0 E8.768
G1 X-3.82 Y1.27 Z0.45 F2520.0 E8.863
G1 X-3.25 Y1.27 Z0.45 F2520.0 E8.878
G1 X-5.79 Y-1.27 Z0.45 F2520.0 E8.973
G1 X-5.23 Y-1.27 Z0.45 F2520.0 E8.988
G1 X-2.69 Y1.27 Z0.45 F2520.0 E9.082
G1 X-2.12 Y1.27 Z0.45 F2520.0 E9.097
G1 X-4.66 Y-1.27 Z0.45 F2520.0 E9.192
G1 X-4.1 Y-1.27 Z0.45 F2520.0 E9.207
G1 X-1.56 Y1.27 Z0.45 F2520.0 E9.302
G1 X-0.99 Y1.27 Z0.45 F2520.0 E9.317
G1 X-3.53 Y-1.27 Z0.45 F2520.0 E9.412
G1 X-2.97 Y-1.27 Z0.45 F2520.0 E9.427
G1 X-0.43 Y1.27 Z0.45 F2520.0 E9.521
G1 X0.14 Y1.27 Z0.45 F2520.0 E9.536
G1 X-2.4 Y-1.27 Z0.45 F2520.0 E9.631
G1 X-1.84 Y-1.27 Z0.45 F2520.0 E9.646
G1 X0.7 Y1.27 Z0.45 F2520.0 E9.741
G1 X1.27 Y1.27 Z0.45 F2520.0 E9.756
G1 X-1.27 Y-1.27 Z0.45 F2520.0 E9.851
G1 X-0.7 Y-1.27 Z0.45 F2520.0 E9.866
G1 X1.84 Y1.27 Z0.45 F2520.0 E9.96
G1 X2.4 Y1.27 Z0.45 F2520.0 E9.975
G1 X-0.14 Y-1.27 Z0.45 F2520.0 E10.07
G1 X0.43 Y-1.27 Z0.45 F2520.0 E10.085
G1 X2.97 Y1.27 Z0.45 F2520.0 E10.18
G1 X3.53 Y1.27 Z0.45 F2520.0 E10.195
G1 X0.99 Y-1.27 Z0.45 F2520.0 E10.29
G1 X1.56 Y-1.27 Z0.45 F2520.0 E10.305
G1 X4.1 Y1.27 Z0.45 F2520.0 E10.399
G1 X4.66 Y1.27 Z0.45 F2520.0 E10.414
G1 X2.12 Y-1.27 Z0.45 F2520.0 E10.509
G1 X2.69 Y-1.27 Z0.45 F2520.0 E10.524
G1 X5.23 Y1.27 Z0.45 F2520.0 E10.619
G1 X5.79 Y1.27 Z0.45 F2520.0 E10.634
G1 X3.25 Y-1.27 Z0.45 F2520.0 E10.729
G1 X3.82 Y-1.27 Z0.45 F2520.0 E10.744
G1 X6.36 Y1.27 Z0.45 F2520.0 E10.838
G1 X6.93 Y1.27 Z0.45 F2520.0 E10.853
G1 X4.39 Y-1.27 Z0.45 F2520.0 E10.948
G1 X4.95 Y-1.27 Z0.45 F2520.0 E10.963
G1 X7.49 Y1.27 Z0.45 F2520.0 E11.058
G1 X8.06 Y1.27 Z0.45 F2520.0 E11.073
G1 X5.52 Y-1.27 Z0.45 F2520.0 E11.168
G1 X6.08 Y-1.27 Z0.45 F2520.0 E11.183
G1 X8.62 Y1.27 Z0.45 F2520.0 E11.277
G1 X9.19 Y1.27 Z0.45 F2520.0 E11.292
G1 X6.65 Y-1.27 Z0.45 F2520.0 E11.387
G1 X7.21 Y-1.27 Z0.45 F2520.0 E11.402
G1 X9.76 Y1.27 Z0.45 F2520.0 E11.497
G1 X10.31 Y1.26 Z0.45 F2520.0 E11.511
G1 X7.78 Y-1.27 Z0.45 F2520.0 E11.606
G1 X8.35 Y-1.27 Z0.45 F2520.0 E11.621
G1 X10.52 Y0.9 Z0.45 F2520.0 E11.702
G1 X10.52 Y0.34 Z0.45 F2520.0 E11.717
G1 X8.91 Y-1.27 Z0.45 F2520.0 E11.777
G1 X9.48 Y-1.27 Z0.45 F2520.0 E11.792
G1 X10.52 Y-0.23 Z0.45 F2520.0 E11.831
G1 X10.52 Y-0.79 Z0.45 F2520.0 E11.846
G1 X10.04 Y-1.27 Z0.45 F2520.0 E11.863
G1 F1200.0
G1 E11.863
G1 F2520.0
M103
(</infill>)
(</nestedRing>)
(</rotation>)
(</layer>)
;M108 R60.0
M73 P42 (display progress)
(<layer> 0.7 )
(<skirt>)
G1 X-13.6 Y2.9 Z0.7 F4800.0
G1 F1200.0
G1 E11.863
G1 F4800.0
M101
G1 X-11.67 Y4.35 Z0.7 F3600.0 E11.975
G1 X11.67 Y4.35 Z0.7 F3600.0 E13.053
G1 X13.6 Y2.9 Z0.7 F3600.0 E13.164
G1 X13.6 Y-2.9 Z0.7 F3600.0 E13.432
G1 X11.67 Y-4.35 Z0.7 F3600.0 E13.544
G1 X-11.67 Y-4.35 Z0.7 F3600.0 E14.622
G1 X-13.6 Y-2.9 Z0.7 F3600.0 E14.734
G1 X-13.6 Y2.9 Z0.7 F3600.0 E15.001
G1 F1200.0
G1 E15.001
G1 F3600.0
M103
(</skirt>)
(<rotation> (-0.707106781187+0.707106781187j) )
(<nestedRing>)
(<boundaryPerimeter>)
(<boundaryPoint> X11.0 Y-1.75 Z0.7 </boundaryPoint>)
(<boundaryPoint> X11.0 Y1.75 Z0.7 </boundaryPoint>)
(<boundaryPoint> X-11.0 Y1.75 Z0.7 </boundaryPoint>)
(<boundaryPoint> X-11.0 Y-1.75 Z0.7 </boundaryPoint>)
(<edge> outer )
G1 X-10.8 Y-1.24 Z0.7 F4800.0
G1 F1200.0
G1 E15.001
G1 F4800.0
M101
M321
G1 X-10.8 Y-1.55 Z0.7 F3600.0 E15.016
G1 X10.8 Y-1.55 Z0.7 F3600.0 E16.014
G1 X10.8 Y1.55 Z0.7 F3600.0 E16.157
G1 X-10.8 Y1.55 Z0.7 F3600.0 E17.155
G1 X-10.8 Y-1.24 Z0.7 F3600.0 E17.283
G1 F1200.0
G1 E17.283
G1 F3600.0
M103
M320
(</edge>)
(</boundaryPerimeter>)
(<infill>)
(<infillBoundary>)
(<infillPoint> X10.8 Y-1.55 Z0.7 </infillPoint>)
(<infillPoint> X10.8 Y1.55 Z0.7 </infillPoint>)
(<infillPoint> X-10.8 Y1.55 Z0.7 </infillPoint>)
(<infillPoint> X-10.8 Y-1.55 Z0.7 </infillPoint>)
(</infillBoundary>)
G1 X1.27 Y-1.27 Z0.7 F4800.0
G1 F1200.0
G1 E17.283
G1 F4800.0
M101
G1 X-1.27 Y1.27 Z0.7 F3600.0 E17.449
G1 X-1.84 Y1.27 Z0.7 F3600.0 E17.476
G1 X0.7 Y-1.27 Z0.7 F3600.0 E17.641
G1 X0.14 Y-1.27 Z0.7 F3600.0 E17.668
G1 X-2.4 Y1.27 Z0.7 F3600.0 E17.834
G1 X-2.97 Y1.27 Z0.7 F3600.0 E17.86
G1 X-0.43 Y-1.27 Z0.7 F3600.0 E18.026
G1 X-0.99 Y-1.27 Z0.7 F3600.0 E18.052
G1 X-3.53 Y1.27 Z0.7 F3600.0 E18.218
G1 X-4.1 Y1.27 Z0.7 F3600.0 E18.244
G1 X-1.56 Y-1.27 Z0.7 F3600.0 E18.41
G1 X-2.12 Y-1.27 Z0.7 F3600.0 E18.436
G1 X-4.66 Y1.27 Z0.7 F3600.0 E18.602
G1 X-5.23 Y1.27 Z0.7 F3600.0 E18.628
G1 X-2.69 Y-1.27 Z0.7 F3600.0 E18.794
G1 X-3.25 Y-1.27 Z0.7 F3600.0 E18.82
G1 X-5.79 Y1.27 Z0.7 F3600.0 E18.986
G1 X-6.36 Y1.27 Z0.7 F3600.0 E19.012
G1 X-3.82 Y-1.27 Z0.7 F3600.0 E19.178
G1 X-4.39 Y-1.27 Z0.7 F3600.0 E19.204
G1 X-6.93 Y1.27 Z0.7 F3600.0 E19.37
G1 X-7.49 Y1.27 Z0.7 F3600.0 E19.396
G1 X-4.95 Y-1.27 Z0.7 F3600.0 E19.562
G1 X-5.52 Y-1.27 Z0.7 F3600.0 E19.588
G1 X-8.06 Y1.27 Z0.7 F3600.0 E19.754
G1 X-8.62 Y1.27 Z0.7 F3600.0 E19.78
G1 X-6.08 Y-1.27 Z0.7 F3600.0 E19.946
G1 X-6.65 Y-1.27 Z0.7 F3600.0 E19.972
G1 X-9.19 Y1.27 Z0.7 F3600.0 E20.138
G1 X-9.76 Y1.27 Z0.7 F3600.0 E20.164
G1 X-7.21 Y-1.27 Z0.7 F3600.0 E20.33
G1 X-7.78 Y-1.27 Z0.7 F3600.0 E20.357
G1 X-10.31 Y1.26 Z0.7 F3600.0 E20.522
G1 X-10.52 Y0.9 Z0.7 F3600.0 E20.541
G1 X-8.35 Y-1.27 Z0.7 F3600.0 E20.683
G1 X-8.91 Y-1.27 Z0.7 F3600.0 E20.709
G1 X-10.52 Y0.34 Z0.7 F3600.0 E20.814
G1 X-10.52 Y-0.23 Z0.7 F3600.0 E20.84
G1 X-9.48 Y-1.27 Z0.7 F3600.0 E20.908
G1 X-10.04 Y-1.27 Z0.7 F3600.0 E20.934
G1 X-10.52 Y-0.79 Z0.7 F3600.0 E20.965
G1 F1200.0
G1 E20.965
G1 F3600.0
M103
G1 X-0.7 Y1.27 Z0.7 F4800.0
G1 F1200.0
G1 E20.965
G1 F4800.0
M101
G1 X1.84 Y-1.27 Z0.7 F3600.0 E21.131
G1 X2.4 Y-1.27 Z0.7 F3600.0 E21.157
G1 X-0.14 Y1.27 Z0.7 F3600.0 E21.323
G1 X0.43 Y1.27 Z0.7 F3600.0 E21.349
G1 X2.97 Y-1.27 Z0.7 F3600.0 E21.515
G1 X3.53 Y-1.27 Z0.7 F3600.0 E21.541
G1 X0.99 Y1.27 Z0.7 F3600.0 E21.707
G1 X1.56 Y1.27 Z0.7 F3600.0 E21.733
G1 X4.1 Y-1.27 Z0.7 F3600.0 E21.899
G1 X4.66 Y-1.27 Z0.7 F3600.0 E21.925
G1 X2.12 Y1.27 Z0.7 F3600.0 E22.091
G1 X2.69 Y1.27 Z0.7 F3600.0 E22.118
G1 X5.23 Y-1.27 Z0.7 F3600.0 E22.283
G1 X5.79 Y-1.27 Z0.7 F3600.0 E22.31
G1 X3.25 Y1.27 Z0.7 F3600.0 E22.476
G1 X3.82 Y1.27 Z0.7 F3600.0 E22.502
G1 X6.36 Y-1.27 Z0.7 F3600.0 E22.668
G1 X6.93 Y-1.27 Z0.7 F3600.0 E22.694
G1 X4.39 Y1.27 Z0.7 F3600.0 E22.86
G1 X4.95 Y1.27 Z0.7 F3600.0 E22.886
G1 X7.49 Y-1.27 Z0.7 F3600.0 E23.052
G1 X8.06 Y-1.27 Z0.7 F3600.0 E23.078
G1 X5.52 Y1.27 Z0.7 F3600.0 E23.244
G1 X6.08 Y1.27 Z0.7 F3600.0 E23.27
G1 X8.62 Y-1.27 Z0.7 F3600.0 E23.436
G1 X9.19 Y-1.27 Z0.7 F3600.0 E23.462
G1 X6.65 Y1.27 Z0.7 F3600.0 E23.628
G1 X7.21 Y1.27 Z0.7 F3600.0 E23.654
G1 X9.76 Y-1.27 Z0.7 F3600.0 E23.82
G1 X10.31 Y-1.26 Z0.7 F3600.0 E23.845
G1 X7.78 Y1.27 Z0.7 F3600.0 E24.01
G1 X8.35 Y1.27 Z0.7 F3600.0 E24.037
G1 X10.52 Y-0.9 Z0.7 F3600.0 E24.179
G1 X10.52 Y-0.34 Z0.7 F3600.0 E24.205
G1 X8.91 Y1.27 Z0.7 F3600.0 E24.31
G1 X9.48 Y1.27 Z0.7 F3600.0 E24.336
G1 X10.52 Y0.23 Z0.7 F3600.0 E24.404
G1 X10.52 Y0.79 Z0.7 F3600.0 E24.43
G1 X10.04 Y1.27 Z0.7 F3600.0 E24.461
G1 F1200.0
G1 E24.461
G1 F3600.0
M103
(</infill>)
(</nestedRing>)
(</rotation>)
(</layer>)
(<operatingLayerEnd> </operatingLayerEnd>)
M73 P60 (display progress)
(<layer> 0.95 )
;M108 R20.87
(<rotation> (0.707106781187+0.707106781187j) )
(<nestedRing>)
(<boundaryPerimeter>)
(<boundaryPoint> X9.0 Y-1.0 Z0.95 </boundaryPoint>)
(<boundaryPoint> X9.0 Y1.0 Z0.95 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y1.0 Z0.95 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y-1.0 Z0.95 </boundaryPoint>)
(<edge> outer )
G1 X-8.62 Y-0.8 Z0.95 F4800.0
G1 F1200.0
G1 E24.461
G1 F4800.0
M101
M321
G1 X8.8 Y-0.8 Z0.95 F1252.148 E25.266
G1 X8.8 Y0.8 Z0.95 F1252.148 E25.34
G1 X-8.8 Y0.8 Z0.95 F1252.148 E26.153
G1 X-8.8 Y-0.8 Z0.95 F1252.148 E26.227
G1 X-8.62 Y-0.8 Z0.95 F1252.148 E26.235
G1 F1200.0
G1 E26.235
G1 F1252.148
M103
M320
(</edge>)
(</boundaryPerimeter>)
(<infill>)
(<infillBoundary>)
(<infillPoint> X8.8 Y-0.8 Z0.95 </infillPoint>)
(<infillPoint> X8.8 Y0.8 Z0.95 </infillPoint>)
(<infillPoint> X-8.8 Y0.8 Z0.95 </infillPoint>)
(<infillPoint> X-8.8 Y-0.8 Z0.95 </infillPoint>)
(</infillBoundary>)
G1 X-8.52 Y-0.04 Z0.95 F4800.0
G1 F1200.0
G1 E26.235
G1 F4800.0
M101
G1 X-7.96 Y0.52 Z0.95 F1252.148 E26.271
G1 X-7.4 Y0.52 Z0.95 F1252.148 E26.297
G1 X-8.37 Y-0.45 Z0.95 F1252.148 E26.361
G1 X-7.87 Y-0.52 Z0.95 F1252.148 E26.384
G1 X-6.83 Y0.52 Z0.95 F1252.148 E26.452
G1 X-6.27 Y0.52 Z0.95 F1252.148 E26.478
G1 X-7.31 Y-0.52 Z0.95 F1252.148 E26.546
G1 X-6.74 Y-0.52 Z0.95 F1252.148 E26.572
G1 X-5.7 Y0.52 Z0.95 F1252.148 E26.64
G1 X-5.14 Y0.52 Z0.95 F1252.148 E26.666
G1 X-6.18 Y-0.52 Z0.95 F1252.148 E26.734
G1 X-5.61 Y-0.52 Z0.95 F1252.148 E26.76
G1 X-4.57 Y0.52 Z0.95 F1252.148 E26.828
G1 X-4.0 Y0.52 Z0.95 F1252.148 E26.854
G1 X-5.04 Y-0.52 Z0.95 F1252.148 E26.922
G1 X-4.48 Y-0.52 Z0.95 F1252.148 E26.948
G1 X-3.44 Y0.52 Z0.95 F1252.148 E27.016
G1 X-2.87 Y0.52 Z0.95 F1252.148 E27.042
G1 X-3.91 Y-0.52 Z0.95 F1252.148 E27.11
G1 X-3.35 Y-0.52 Z0.95 F1252.148 E27.136
G1 X-2.31 Y0.52 Z0.95 F1252.148 E27.204
G1 X-1.74 Y0.52 Z0.95 F1252.148 E27.23
G1 X-2.78 Y-0.52 Z0.95 F1252.148 E27.298
G1 X-2.22 Y-0.52 Z0.95 F1252.148 E27.324
G1 X-1.18 Y0.52 Z0.95 F1252.148 E27.392
G1 X-0.61 Y0.52 Z0.95 F1252.148 E27.418
G1 X-1.65 Y-0.52 Z0.95 F1252.148 E27.486
G1 X-1.09 Y-0.52 Z0.95 F1252.148 E27.513
G1 X-0.05 Y0.52 Z0.95 F1252.148 E27.58
G1 X0.52 Y0.52 Z0.95 F1252.148 E27.607
G1 X-0.52 Y-0.52 Z0.95 F1252.148 E27.675
G1 X0.05 Y-0.52 Z0.95 F1252.148 E27.701
G1 X1.09 Y0.52 Z0.95 F1252.148 E27.769
G1 X1.65 Y0.52 Z0.95 F1252.148 E27.795
G1 X0.61 Y-0.52 Z0.95 F1252.148 E27.863
G1 X1.18 Y-0.52 Z0.95 F1252.148 E27.889
G1 X2.22 Y0.52 Z0.95 F1252.148 E27.957
G1 X2.78 Y0.52 Z0.95 F1252.148 E27.983
G1 X1.74 Y-0.52 Z0.95 F1252.148 E28.051
G1 X2.31 Y-0.52 Z0.95 F1252.148 E28.077
G1 X3.35 Y0.52 Z0.95 F1252.148 E28.145
G1 X3.91 Y0.52 Z0.95 F1252.148 E28.171
G1 X2.87 Y-0.52 Z0.95 F1252.148 E28.239
G1 X3.44 Y-0.52 Z0.95 F1252.148 E28.265
G1 X4.48 Y0.52 Z0.95 F1252.148 E28.333
G1 X5.04 Y0.52 Z0.95 F1252.148 E28.359
G1 X4.0 Y-0.52 Z0.95 F1252.148 E28.427
G1 X4.57 Y-0.52 Z0.95 F1252.148 E28.453
G1 X5.61 Y0.52 Z0.95 F1252.148 E28.521
G1 X6.18 Y0.52 Z0.95 F1252.148 E28.547
G1 X5.14 Y-0.52 Z0.95 F1252.148 E28.615
G1 X5.7 Y-0.52 Z0.95 F1252.148 E28.641
G1 X6.74 Y0.52 Z0.95 F1252.148 E28.709
G1 X7.31 Y0.52 Z0.95 F1252.148 E28.736
G1 X6.27 Y-0.52 Z0.95 F1252.148 E28.803
G1 X6.83 Y-0.52 Z0.95 F1252.148 E28.83
G1 X7.87 Y0.52 Z0.95 F1252.148 E28.898
G1 X8.37 Y0.45 Z0.95 F1252.148 E28.921
G1 X7.4 Y-0.52 Z0.95 F1252.148 E28.984
G1 X7.96 Y-0.52 Z0.95 F1252.148 E29.01
G1 X8.52 Y0.04 Z0.95 F1252.148 E29.046
G1 F1200.0
G1 E29.046
G1 F1252.148
M103
(</infill>)
(</nestedRing>)
(</rotation>)
;M108 R21.64
(</layer>)
M73 P72 (display progress)
(<layer> 1.2 )
(<rotation> (-0.707106781187+0.707106781187j) )
(<nestedRing>)
(<boundaryPerimeter>)
(<boundaryPoint> X9.0 Y-1.0 Z1.2 </boundaryPoint>)
(<boundaryPoint> X9.0 Y1.0 Z1.2 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y1.0 Z1.2 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y-1.0 Z1.2 </boundaryPoint>)
(<edge> outer )
G1 X-8.8 Y-0.68 Z1.2 F4800.0
G1 F1200.0
G1 E29.046
G1 F4800.0
M101
M321
G1 X-8.8 Y-0.8 Z1.2 F1298.242 E29.052
G1 X8.8 Y-0.8 Z1.2 F1298.242 E29.865
G1 X8.8 Y0.8 Z1.2 F1298.242 E29.939
G1 X-8.8 Y0.8 Z1.2 F1298.242 E30.752
G1 X-8.8 Y-0.68 Z1.2 F1298.242 E30.82
G1 F1200.0
G1 E30.82
G1 F1298.242
M103
M320
(</edge>)
(</boundaryPerimeter>)
(<infill>)
(<infillBoundary>)
(<infillPoint> X8.8 Y-0.8 Z1.2 </infillPoint>)
(<infillPoint> X8.8 Y0.8 Z1.2 </infillPoint>)
(<infillPoint> X-8.8 Y0.8 Z1.2 </infillPoint>)
(<infillPoint> X-8.8 Y-0.8 Z1.2 </infillPoint>)
(</infillBoundary>)
G1 X-0.05 Y-0.52 Z1.2 F4800.0
G1 F1200.0
G1 E30.82
G1 F4800.0
M101
G1 X-1.09 Y0.52 Z1.2 F1298.242 E30.888
G1 X-1.65 Y0.52 Z1.2 F1298.242 E30.914
G1 X-0.61 Y-0.52 Z1.2 F1298.242 E30.982
G1 X-1.18 Y-0.52 Z1.2 F1298.242 E31.008
G1 X-2.22 Y0.52 Z1.2 F1298.242 E31.076
G1 X-2.78 Y0.52 Z1.2 F1298.242 E31.102
G1 X-1.74 Y-0.52 Z1.2 F1298.242 E31.17
G1 X-2.31 Y-0.52 Z1.2 F1298.242 E31.196
G1 X-3.35 Y0.52 Z1.2 F1298.242 E31.264
G1 X-3.91 Y0.52 Z1.2 F1298.242 E31.291
G1 X-2.87 Y-0.52 Z1.2 F1298.242 E31.358
G1 X-3.44 Y-0.52 Z1.2 F1298.242 E31.385
G1 X-4.48 Y0.52 Z1.2 F1298.242 E31.453
G1 X-5.04 Y0.52 Z1.2 F1298.242 E31.479
G1 X-4.0 Y-0.52 Z1.2 F1298.242 E31.547
G1 X-4.57 Y-0.52 Z1.2 F1298.242 E31.573
G1 X-5.61 Y0.52 Z1.2 F1298.242 E31.641
G1 X-6.18 Y0.52 Z1.2 F1298.242 E31.667
G1 X-5.14 Y-0.52 Z1.2 F1298.242 E31.735
G1 X-5.7 Y-0.52 Z1.2 F1298.242 E31.761
G1 X-6.74 Y0.52 Z1.2 F1298.242 E31.829
G1 X-7.31 Y0.52 Z1.2 F1298.242 E31.855
G1 X-6.27 Y-0.52 Z1.2 F1298.242 E31.923
G1 X-6.83 Y-0.52 Z1.2 F1298.242 E31.949
G1 X-7.87 Y0.52 Z1.2 F1298.242 E32.017
G1 X-8.37 Y0.45 Z1.2 F1298.242 E32.04
G1 X-7.4 Y-0.52 Z1.2 F1298.242 E32.103
G1 X-7.96 Y-0.52 Z1.2 F1298.242 E32.129
G1 X-8.52 Y0.04 Z1.2 F1298.242 E32.166
G1 F1200.0
G1 E32.166
G1 F1298.242
M103
G1 X0.52 Y-0.52 Z1.2 F4800.0
G1 F1200.0
G1 E32.166
G1 F4800.0
M101
G1 X-0.52 Y0.52 Z1.2 F1298.242 E32.233
G1 X0.05 Y0.52 Z1.2 F1298.242 E32.26
G1 X1.09 Y-0.52 Z1.2 F1298.242 E32.328
G1 X1.65 Y-0.52 Z1.2 F1298.242 E32.354
G1 X0.61 Y0.52 Z1.2 F1298.242 E32.422
G1 X1.18 Y0.52 Z1.2 F1298.242 E32.448
G1 X2.22 Y-0.52 Z1.2 F1298.242 E32.516
G1 X2.78 Y-0.52 Z1.2 F1298.242 E32.542
G1 X1.74 Y0.52 Z1.2 F1298.242 E32.61
G1 X2.31 Y0.52 Z1.2 F1298.242 E32.636
G1 X3.35 Y-0.52 Z1.2 F1298.242 E32.704
G1 X3.91 Y-0.52 Z1.2 F1298.242 E32.73
G1 X2.87 Y0.52 Z1.2 F1298.242 E32.798
G1 X3.44 Y0.52 Z1.2 F1298.242 E32.824
G1 X4.48 Y-0.52 Z1.2 F1298.242 E32.892
G1 X5.04 Y-0.52 Z1.2 F1298.242 E32.918
G1 X4.0 Y0.52 Z1.2 F1298.242 E32.986
G1 X4.57 Y0.52 Z1.2 F1298.242 E33.012
G1 X5.61 Y-0.52 Z1.2 F1298.242 E33.08
G1 X6.18 Y-0.52 Z1.2 F1298.242 E33.106
G1 X5.14 Y0.52 Z1.2 F1298.242 E33.174
G1 X5.7 Y0.52 Z1.2 F1298.242 E33.2
G1 X6.74 Y-0.52 Z1.2 F1298.242 E33.268
G1 X7.31 Y-0.52 Z1.2 F1298.242 E33.295
G1 X6.27 Y0.52 Z1.2 F1298.242 E33.363
G1 X6.83 Y0.52 Z1.2 F1298.242 E33.389
G1 X7.87 Y-0.52 Z1.2 F1298.242 E33.457
G1 X8.37 Y-0.45 Z1.2 F1298.242 E33.48
G1 X7.4 Y0.52 Z1.2 F1298.242 E33.543
G1 X7.96 Y0.52 Z1.2 F1298.242 E33.569
G1 X8.52 Y-0.04 Z1.2 F1298.242 E33.605
G1 F1200.0
G1 E33.605
G1 F1298.242
M103
(</infill>)
(</nestedRing>)
(</rotation>)
;M108 R20.77
(</layer>)
M73 P85 (display progress)
(<layer> 1.45 )
(<rotation> (0.707106781187+0.707106781187j) )
(<nestedRing>)
(<boundaryPerimeter>)
(<boundaryPoint> X9.0 Y-1.0 Z1.45 </boundaryPoint>)
(<boundaryPoint> X9.0 Y1.0 Z1.45 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y1.0 Z1.45 </boundaryPoint>)
(<boundaryPoint> X-9.0 Y-1.0 Z1.45 </boundaryPoint>)
(<edge> outer )
G1 X-8.8 Y-0.37 Z1.45 F4800.0
G1 F1200.0
G1 E33.605
G1 F4800.0
M101
M321
G1 X-8.8 Y-0.8 Z1.45 F1246.3 E33.625
G1 X8.8 Y-0.8 Z1.45 F1246.3 E34.438
G1 X8.8 Y0.8 Z1.45 F1246.3 E34.512
G1 X-8.8 Y0.8 Z1.45 F1246.3 E35.325
G1 X-8.8 Y-0.37 Z1.45 F1246.3 E35.379
G1 F1200.0
G1 E35.379
G1 F1246.3
M103
M320
(</edge>)
(</boundaryPerimeter>)
(<infill>)
(<infillBoundary>)
(<infillPoint> X8.8 Y-0.8 Z1.45 </infillPoint>)
(<infillPoint> X8.8 Y0.8 Z1.45 </infillPoint>)
(<infillPoint> X-8.8 Y0.8 Z1.45 </infillPoint>)
(<infillPoint> X-8.8 Y-0.8 Z1.45 </infillPoint>)
(</infillBoundary>)
G1 X-8.52 Y-0.04 Z1.45 F4800.0
G1 F1200.0
G1 E35.379
G1 F4800.0
M101
G1 X-7.96 Y0.52 Z1.45 F1246.3 E35.415
G1 X-7.4 Y0.52 Z1.45 F1246.3 E35.441
G1 X-8.37 Y-0.45 Z1.45 F1246.3 E35.504
G1 X-7.87 Y-0.52 Z1.45 F1246.3 E35.527
G1 X-6.83 Y0.52 Z1.45 F1246.3 E35.595
G1 X-6.27 Y0.52 Z1.45 F1246.3 E35.621
G1 X-7.31 Y-0.52 Z1.45 F1246.3 E35.689
G1 X-6.74 Y-0.52 Z1.45 F1246.3 E35.715
G1 X-5.7 Y0.52 Z1.45 F1246.3 E35.783
G1 X-5.14 Y0.52 Z1.45 F1246.3 E35.809
G1 X-6.18 Y-0.52 Z1.45 F1246.3 E35.877
G1 X-5.61 Y-0.52 Z1.45 F1246.3 E35.904
G1 X-4.57 Y0.52 Z1.45 F1246.3 E35.971
G1 X-4.0 Y0.52 Z1.45 F1246.3 E35.998
G1 X-5.04 Y-0.52 Z1.45 F1246.3 E36.066
G1 X-4.48 Y-0.52 Z1.45 F1246.3 E36.092
G1 X-3.44 Y0.52 Z1.45 F1246.3 E36.16
G1 X-2.87 Y0.52 Z1.45 F1246.3 E36.186
G1 X-3.91 Y-0.52 Z1.45 F1246.3 E36.254
G1 X-3.35 Y-0.52 Z1.45 F1246.3 E36.28
G1 X-2.31 Y0.52 Z1.45 F1246.3 E36.348
G1 X-1.74 Y0.52 Z1.45 F1246.3 E36.374
G1 X-2.78 Y-0.52 Z1.45 F1246.3 E36.442
G1 X-2.22 Y-0.52 Z1.45 F1246.3 E36.468
G1 X-1.18 Y0.52 Z1.45 F1246.3 E36.536
G1 X-0.61 Y0.52 Z1.45 F1246.3 E36.562
G1 X-1.65 Y-0.52 Z1.45 F1246.3 E36.63
G1 X-1.09 Y-0.52 Z1.45 F1246.3 E36.656
G1 X-0.05 Y0.52 Z1.45 F1246.3 E36.724
G1 X0.52 Y0.52 Z1.45 F1246.3 E36.75
G1 X-0.52 Y-0.52 Z1.45 F1246.3 E36.818
G1 X0.05 Y-0.52 Z1.45 F1246.3 E36.844
G1 X1.09 Y0.52 Z1.45 F1246.3 E36.912
G1 X1.65 Y0.52 Z1.45 F1246.3 E36.938
G1 X0.61 Y-0.52 Z1.45 F1246.3 E37.006
G1 X1.18 Y-0.52 Z1.45 F1246.3 E37.032
G1 X2.22 Y0.52 Z1.45 F1246.3 E37.1
G1 X2.78 Y0.52 Z1.45 F1246.3 E37.126
G1 X1.74 Y-0.52 Z1.45 F1246.3 E37.194
G1 X2.31 Y-0.52 Z1.45 F1246.3 E37.22
G1 X3.35 Y0.52 Z1.45 F1246.3 E37.288
G1 X3.91 Y0.52 Z1.45 F1246.3 E37.314
G1 X2.87 Y-0.52 Z1.45 F1246.3 E37.382
G1 X3.44 Y-0.52 Z1.45 F1246.3 E37.409
G1 X4.48 Y0.52 Z1.45 F1246.3 E37.477
G1 X5.04 Y0.52 Z1.45 F1246.3 E37.503
G1 X4.0 Y-0.52 Z1.45 F1246.3 E37.571
G1 X4.57 Y-0.52 Z1.45 F1246.3 E37.597
G1 X5.61 Y0.52 Z1.45 F1246.3 E37.665
G1 X6.18 Y0.52 Z1.45 F1246.3 E37.691
G1 X5.14 Y-0.52 Z1.45 F1246.3 E37.759
G1 X5.7 Y-0.52 Z1.45 F1246.3 E37.785
G1 X6.74 Y0.52 Z1.45 F1246.3 E37.853
G1 X7.31 Y0.52 Z1.45 F1246.3 E37.879
G1 X6.27 Y-0.52 Z1.45 F1246.3 E37.947
G1 X6.83 Y-0.52 Z1.45 F1246.3 E37.973
G1 X7.87 Y0.52 Z1.45 F1246.3 E38.041
G1 X8.37 Y0.45 Z1.45 F1246.3 E38.064
G1 X7.4 Y-0.52 Z1.45 F1246.3 E38.127
G1 X7.96 Y-0.52 Z1.45 F1246.3 E38.153
G1 X8.52 Y0.04 Z1.45 F1246.3 E38.189
G1 F1200.0
G1 E38.189
G1 F1246.3
M103
(</infill>)
(</nestedRing>)
(</rotation>)
;M108 R60.0
(</layer>)
(</crafting>)
M104 S0
;M113 S0.0
(******* End.gcode*******)
M73 P100 ( End  build progress )
G0 Z150 ( Send Z axis to bottom of machine )
M18 ( Disable steppers )
M109 S0 T0 ( Cool down the build platform )
M104 S0 T0 ( Cool down the Right Extruder )
M104 S0 T1 ( Cool down the Left Extruder )
G162 X Y F2500 ( Home XY endstops )
M18 ( Disable stepper motors )
M70 P5 ( We <3 Making Things!)
M72 P1  ( Play Ta-Da song )
(*********end End.gcode*******)
