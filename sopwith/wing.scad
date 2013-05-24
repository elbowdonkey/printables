$fn=40;

module fuse() {
  difference() {
    translate([0,0,106])
    union() {
      rotate([90,0,180])
      rotate_extrude(convexity = 10)
      hull() {
        translate([153,411,0]) square(size=[10, 10]);
        translate([153,-254,0]) circle(30);
        translate([116,-1086,0]) circle(30);
        translate([0,411,0]) square(size=[10, 10]);
        translate([0,-1110,0]) square(size=[10, 10]);
      }
    }

    rotate([-9.339,0,0]) color("Orange") translate([-150,-1091.73 - 94.76,-330])    cube(size=[300, 1004.27, 300]);
    rotate([0,0,-4.6695]) color("Orange") translate([  97.41 + 16,-1091.73-87.5,0]) cube(size=[300, 1004.27, 400]);
    rotate([0,0,4.6695])  color("Orange") translate([-397.41 - 16,-1091.73-87.5,0]) cube(size=[300, 1004.27, 400]);

    color("Pink") translate([  97.41,-1000,-400]) cube(size=[300, 2004.27, 800]);
    color("Pink") translate([-397.41,-1000,-400]) cube(size=[300, 2004.27, 800]);
    color("Pink") translate([-150,-1000,-300]) cube(size=[300, 2004.27, 300]);
  }

  // color("red") translate([0,0,294]) cube(size=[10, 4000, 10], center=true);
  // color("red") translate([-20,0,-5]) cube(size=[10, 474, 10]);
}

module superFuse() {
  translate([0,241.5,10])
  difference() {
    difference() {
      union() {
        hull() {
          fuse();
          translate([0,300,0])
          hull() {
            translate([0,121, 135]) rotate([90, 0, 0]) cylinder(r=155, h=10);
            translate([0,-581,200-12]) sphere(r=98);
          }
        }
        translate([0,418,135.5])
        rotate([90,0,0])
        rotate_extrude(convexity = 10)
        translate([105, 0, 0])
        circle(50);
      }

      difference() {
        translate([0,0,139]) rotate([90,0,0]) cylinder(r=300, h=3000, center=true);
        translate([0,0,139]) rotate([90,0,0]) cylinder(r=154, h=3100, center=true);
      }
      translate([0,450,135.5]) rotate([90,0,0]) cylinder(r=100, h=60, center=true);
    }

    translate([0,0,294])
    linear_extrude(height=200, center=true, convexity = 10, twist = 0)
    hull() {
      translate([-38,19,0]) square([76,76]);
      translate([0,-60,0]) circle(82);
    }
    // translate([0,0,12]) rotate([3.197,0,0]) lower_wings();
  }
}


tip_width = 150;
wing_chord = 470;
wing_thickness = 43;

module airfoil() {
  polygon( points=[
    [1.2916,12.9416],[2.2543,14.2916],[3.4396,15.4509],[4.8106,16.3835],
    [11.6006,20.1710],[26.7973,26.6106],[43.5124,31.9696],[61.6477,36.3029],
    [81.1053,39.6651],[101.7868,42.1111],[123.5941,43.6957],[146.4291,44.4737],
    [170.1936,44.4998],[194.7895,43.8289],[220.1187,42.5157],[246.0829,40.6150],
    [272.5840,38.1817],[299.5239,35.2704],[326.8044,31.9361],[354.3274,28.2334],
    [381.9946,24.2172],[409.7081,19.9422],[437.3696,15.4633],[464.8809,10.8352],
    [465.4606,-1.2868],[440.6379,1.3578],[415.3801,3.9647],[389.7914,6.4949],
    [363.9755,8.9094],[338.0364,11.1692],[312.0779,13.2353],[286.2040,15.0688],
    [260.5185,16.6307],[235.1254,17.8819],[210.1285,18.7837],[185.6318,19.2969],
    [161.7391,19.3825],[138.5543,19.0017],[116.1814,18.1154],[94.7242,16.6846],
    [74.2866,14.6705],[54.9726,12.0339],[36.8860,8.7359],[20.1307,4.7376],
    [4.8106,0.0000],[3.4396,0.9325],[2.2543,2.0919],[1.2916,3.4418],
    [0.5816,4.9402],[0.1465,6.5402],[0.0000,8.1917],[0.1465,9.8433],
    [0.5816,11.4433]
  ]);
}

module wing_tip() {
  linear_extrude(height=wing_thickness, center=false, convexity=10, twist=0)
  polygon( points=[
    [61,470], [150,470], [150,0],[139,5],[126,15],[113,30],[99,50],[85,74],[71,100],
    [57,129],[44,161],[32,193],[22,226],[13,260],[6,293],[1,325],[1,383],[5,409],
    [13,430],[24,448],[41,462],[61,470]
  ]);
}

module tail() {
  linear_extrude(height=10, center=false, convexity=10, twist=0)
  polygon(points=[
    [234.8859,213.8243],
    [234.8859,0.0000],
    [50.2260,0.0000],
    [41.4525,0.5852],
    [32.8007,2.3302],
    [24.5662,5.2190],
    [17.0446,9.2356],
    [10.5316,14.3640],
    [5.3227,20.5881],
    [1.7137,27.8920],
    [0.0000,36.2598],
    [0.4774,45.6753],
    [3.4414,56.1226],
    [9.1878,67.5857],
    [18.0121,80.0486],
    [30.2099,93.4953],
    [46.0768,107.9098],
    [65.9086,123.2760],
    [90.0007,139.5781],
    [118.6489,156.8000],
    [152.1488,174.9256],
    [190.7959,193.9391],
  ]);
}

module rudder() {
  linear_extrude(height=10, center=false, convexity=10, twist=0)
  polygon(points=[
    [0.0000,316.0401],
    [1.2165,316.4749],
    [41.0172,323.8801],
    [75.4082,325.1468],
    [104.5919,320.8904],
    [128.7705,311.7267],
    [148.1463,298.2712],
    [162.9216,281.1393],
    [173.2987,260.9468],
    [179.4798,238.3091],
    [181.6673,213.8418],
    [180.0634,188.1605],
    [174.8704,161.8807],
    [166.2905,135.6181],
    [154.5261,109.9881],
    [139.7795,85.6063],
    [122.2529,63.0883],
    [102.1486,43.0497],
    [79.6688,26.1060],
    [55.0160,12.8728],
    [28.3923,3.9656],
    [0.0000,0.0000],
  ]);
}

module airfoil_negative() {
  translate([-10,wing_chord,0])
  rotate([90,0,90])
  mirror([1,0,0])
  difference() {
    translate([-50,-50,0]) cube(size=[wing_chord+100, wing_thickness+100, 1400]);
    translate([0,0,-50])
    linear_extrude(height=1600, center=false, convexity=10, twist=0)
    airfoil();
  }
}

module upper_wing_center_half() {
  polygon(points=[
    [109.6430,14.9713],
    [108.0773,12.7506],
    [106.3326,10.6678],
    [104.4209,8.7371],
    [102.3553,6.9720],
    [100.1502,5.3846],
    [97.8208,3.9860],
    [95.3832,2.7857],
    [92.8544,1.7922],
    [90.2517,1.0122],
    [87.5932,0.4512],
    [84.8973,0.1130],
    [82.1826,0.0000],
    [0.0000,0.0000],
    [0.0000,470.0000],
    [219.9116,470.0000],
    [219.9116,101.4187],
    [165.3586,101.4187]
  ]);
}

module stabilizer_half() {
  polygon(points=[
    [61.6214,0.0000],
    [206.0917,42.7578],
    [206.0917,471.8911],
    [0.0000,471.8911],
    [0.0000,58.0382],
    [0.5360,50.1616],
    [2.1341,42.4302],
    [4.7649,34.9866],
    [8.3798,27.9680],
    [12.9122,21.5038],
    [18.2785,15.7132],
    [24.3798,10.7030],
    [31.1036,6.5655],
    [38.3260,3.3770],
    [45.9137,1.1964],
    [53.7268,0.0637]
  ]);
}

module elevator_half() {
  polygon(points=[
    [225.4880,471.8911],
    [209.9276,471.8911],
    [209.9276,43.8931],
    [306.8985,72.5928],
    [313.4915,74.9340],
    [319.7969,77.9653],
    [325.7429,81.6523],
    [331.2614,85.9527],
    [336.2895,90.8175],
    [340.7698,96.1911],
    [344.6510,102.0121],
    [347.8888,108.2141],
    [350.4463,114.7262],
    [352.2942,121.4740],
    [353.4115,128.3805],
    [353.7853,135.3668],
    [353.7853,362.7424],
    [353.6593,365.5519],
    [353.2822,368.3388],
    [352.6570,371.0808],
    [351.7888,373.7557],
    [350.6846,376.3422],
    [349.3532,378.8193],
    [347.8053,381.1674],
    [346.0534,383.3673],
    [344.1115,385.4016],
    [341.9953,387.2538],
    [339.7217,388.9090],
    [337.3090,390.3540],
    [225.4880,450.6885]
  ]);
}

module stabilizer() {
  linear_extrude(height=10, center=false, convexity=10, twist=0)
  union() {
    translate([0,-471.89,0]) stabilizer_half();
    translate([0,471.89,0]) mirror([0,1,0]) stabilizer_half();
  }
}

module elevator() {
  linear_extrude(height=10, center=false, convexity=10, twist=0)
  union() {
    translate([0,-471.89,0]) elevator_half();
    translate([0,471.89,0]) mirror([0,1,0]) elevator_half();
  }
}

module upper_wing_center() {
  difference() {
    linear_extrude(height=wing_thickness, center=false, convexity=10, twist=0)
    union() {
      translate([-219.9116, 0, 0]) upper_wing_center_half();
      translate([219.9116, 0, 0]) mirror([1,0,0]) upper_wing_center_half();
    }
    translate([-300, 0, 0]) airfoil_negative();
  }
}

module upper_wing_half() {
  difference() {
    union() {
      wing_tip();
      translate([tip_width, 0, 0]) cube(size=[845, wing_chord, wing_thickness]);
    }
    airfoil_negative();
  }
}

module lower_wing_half() {
  difference() {
    union() {
      wing_tip();
      translate([tip_width, 0, 0]) cube(size=[974, wing_chord, wing_thickness]);
    }
    airfoil_negative();
  }
}

module upper_left_wing() {
  rotate([0,4.813,0])
  translate([-845-219.9116-tip_width,0,-20]) upper_wing_half();
}

module upper_right_wing() {
  rotate([0,-4.813,0])
  translate([845+219.9116+tip_width,0,-20]) mirror([1,0,0]) upper_wing_half();
}


module lower_left_wing() {
  rotate([0,4.813,0])
  translate([-974-100-tip_width,0,-20]) lower_wing_half();
}

module lower_right_wing() {
  rotate([0,-4.813,0])
  translate([974+100+tip_width,0,-20]) mirror([1,0,0]) lower_wing_half();
}

module upper_wings() {
  // 2.171
  // 21.6
  translate([0,138,10.8+420])
  rotate([2.171,0,0]) {
    upper_left_wing();
    upper_wing_center();
    upper_right_wing();
  }
}

module lower_wings() {
  // 2.918
  // 29.03
  translate([0,0,14.515])
  rotate([2.918,0,0]) {
    lower_left_wing();
    lower_right_wing();
  }

}

module tail_group() {
  translate([5,-620, 270.69])
  rotate([90,0,-90])
  union() {
    tail();
    translate([237.88,-101.25,0]) rudder();
  }
}

module stab_group() {
  translate([0,-631,260.13])
  rotate([0,0,-90])
  union() {
    stabilizer();
    elevator();
  }
}

upper_wings();
lower_wings();

difference() {
  superFuse();
  tail_group();
  stab_group();
  translate([0,-905,200]) cube(size=[100, 100, 200], center=true);
  translate([0,-781,307]) cube(size=[100, 300, 100], center=true);
}

tail_group();
stab_group();