use <MCAD/involute_gears.scad>
use <MCAD/metric_fastners.scad>

$fn = 100;


ring_radius = 38;
ring_width = 4;
ring_height = 2;
reduce = 0.2817;
jaw_diam = 85.63;
rearplate_diam = 80;
scrollbk_diam = 71.635;

module tooth() {
  gap_distance = 2.5;
  screw_start = 14;
  difference() {
    translate([0, 0, 1])
    union() {
      translate([0,20,6]) color("Green") cube(size=[10, 40, 8], center=true);
      translate([-5.99,25,8]) color("Green") cube(size=[2, 30, 4], center=true);
      translate([5.99,25,8]) color("Green") cube(size=[2, 30, 4], center=true);
    }

    // center tip
    translate([0,8,15]) cylinder(r=1, h=40, center=true);


    for ( i = [-2 : 7] ) {
      hull() {
        translate([-4.5,18 + (i * gap_distance),10]) cylinder(r=0.5, h=4, center=true);
        translate([4.5, 18 + (i * gap_distance),10]) cylinder(r=0.5, h=4, center=true);
      }
    }

    // screw holes

    for ( i = [0 : 2] ) {
      translate([0,(screw_start + (i * 10)),10]) cylinder(r=1.5, h=10, center=true);
    }

    // for ( i = [-2 : 2] ) {
    //   hull() {
    //     translate([(i * gap_distance),17,10]) cylinder(r=0.5, h=5, center=true);
    //     translate([(i * gap_distance),21,10]) cylinder(r=0.5, h=5, center=true);
    //   }

    //   hull() {
    //     translate([(i * gap_distance),27,10]) cylinder(r=0.5, h=5, center=true);
    //     translate([(i * gap_distance),31,10]) cylinder(r=0.5, h=5, center=true);
    //   }
    // }

    translate([0,24,9]) rotate([90,0,0]) cylinder(r=0.5, h=28, center=true);
    translate([0,24,7]) rotate([90,0,0]) cylinder(r=0.5, h=28, center=true);
    translate([0,24,5]) rotate([90,0,0]) cylinder(r=0.5, h=28, center=true);

    // chamfers
    color("LightSeaGreen") translate([-4.15,4.7,7]) rotate([0,0,240]) cube(size=[10, 20, 10], center=true);
    color("LightSeaGreen") translate([ 4.15,4.7,7]) rotate([0,0,-240]) cube(size=[10, 20, 10], center=true);
    color("LightSeaGreen") translate([4.15, 45,7]) rotate([0,0,240]) cube(size=[10, 20, 10], center=true);
    color("LightSeaGreen") translate([-4.15,45,7]) rotate([0,0,-240]) cube(size=[10, 20, 10], center=true);
  }

  // screw holes
  screw_start = 14;
  for ( i = [0 : 2] ) {
    translate([0,(screw_start + (i * 10)),8.5]) {
      difference() {
        cylinder(r=3, h=5, center=true);
        cylinder(r=1.5, h=6, center=true);
      }
    }
  }

  ridge_distance = 2.86;

  translate([0,-1.2,0]) {
    for ( i = [-6 : 2] ) {
      translate([0,(ridge_distance*i),0]) ridge();
    }
  }
}

module ridge() {
    difference () {
      translate([0,-6,2.25]) cylinder(r=40, h=2, center=true);
      translate([0,-6,2.25]) cylinder(r=39.40, h=3, center=true);
      translate([ -35,25,5]) color("Orange") cube(size= [60, 200, 20], center=true);
      translate([35,25,5]) color("Orange") cube(size=[60, 200, 20], center=true);
      translate([0,-30,0]) color("Orange") cube(size= [60, 60, 60], center=true);
      color("Coral") translate([-5,32.7,2.25]) rotate([0,0,-20]) cube(size=[5, 1, 4], center=true);
      color("Coral") translate([5,32.7,2.25]) rotate([0,0,20]) cube(size=[5, 1, 4], center=true);
      color("Coral") translate([-5,34.1,2.25]) rotate([0,0,20]) cube(size=[5, 1, 4], center=true);
      color("Coral") translate([5,34.1,2.25]) rotate([0,0,-20]) cube(size=[5, 1, 4], center=true);
    }

}

module scrollback() {
  scale([1,1,0.8]) translate([0,0,-0.02]) import("trimmed_spiral_1.5.stl");

  difference() {
    union() {
      color("Orange") translate([0,0,-2]) cylinder(r1=ring_radius-2, r2=ring_radius-2, h=4, center=true);
    }
    translate([0,0,-2])
    rotate_extrude(convexity = 10)
    translate([37, 0, 0])
    circle(r = 1.5);

    // translate([0,0,-4])
    // rotate_extrude(convexity = 10)
    // translate([30, 0, 0])
    // circle(r = 0.5);

    // translate([0,0,-4])
    // rotate_extrude(convexity = 10)
    // translate([33, 0, 0])
    // circle(r = 0.5);

    cylinder(r=20, h=10, center=true);

    // screw holes
    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12 , [0, 0, 1]) translate([25,0,-7]) cylinder(r=1.5, h=10, center=true);
    }

    rotate([0,0,45])
    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12, [0, 0, 1])
      hull() {
        translate([25,0,-5.5]) cylinder(r=0.5, h=10, center=true);
        translate([34,0,-5.5]) cylinder(r=1, h=10, center=true);
      }
    }

    rotate([0,0,22.5])
    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12, [0, 0, 1])
      hull() {
        translate([26,0,-5.5]) cylinder(r=0.5, h=10, center=true);
        translate([34,0,-5.5]) cylinder(r=1, h=10, center=true);
      }
    }

    rotate([0,0,-22.5])
    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12, [0, 0, 1])
      hull() {
        translate([26,0,-5.5]) cylinder(r=0.5, h=10, center=true);
        translate([34,0,-5.5]) cylinder(r=1, h=10, center=true);
      }
    }

    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12, [0, 0, 1])
      hull() {
        translate([29,0,-5.5]) cylinder(r=0.8, h=10, center=true);
        translate([34,0,-5.5]) cylinder(r=1, h=10, center=true);
      }
    }

    // rotate([0,0,45])
    // for ( i = [0 : 49] ) {
    //   rotate(i * 360 / 48, [0, 0, 1])
    //   hull() {
    //     translate([25,0,-0.4]) cylinder(r=0.1, h=1, center=true);
    //     translate([34,0,-0.4]) cylinder(r=0.1, h=1, center=true);
    //   }
    // }
  }
}

module front() {
  difference() {
    union() {
      translate([0,0,-8]) cylinder(r=40, h=40, center=true);
    }


    // tooth slide cutouts
    rotate([0,0,0])
    for (i = [0 : 2]) {
      rotate(i * 360 / 3, [0,0,1])
      color("Green")
      union() {
        translate([0,25,6])       cube(size=[10.05,40, 20], center=true);
        translate([-5.99,27.5,7]) cube(size=[2.05, 40, 4.05], center=true);
        translate([5.99,27.5,7])  cube(size=[2.05, 40, 4.05], center=true);
      }
    }

    // carve outs
    // rotate([0,0,90])
    // for (i = [0 : 2]) {
    //   rotate(i * 360 / 3, [0,0,1])
    //   translate([-2,0,0]) {
    //     difference() {
    //       rotate_extrude(convexity = 10, $fn=30)
    //       translate([30, 0, 0])
    //       circle(r = 5, $fn=30);

    //       color("Orange") rotate([0,0,-30]) translate([0,-30,0]) cube(size=[100, 60, 10], center=true);
    //       color("Orange") rotate([0,0, 30]) translate([0,30,0])  cube(size=[100, 60, 10], center=true);
    //     }
    //     translate([26,-14.9,0]) sphere(r=5, $fn=30);
    //     translate([26, 14.9,0]) sphere(r=5, $fn=30);
    //   }
    // }

    translate([0,0,5]) cylinder(r=15, h=30, center=true);
    difference() {
      translate([0,0,-17]) cylinder(r=36.4, h=40, center=true);
      translate([0,0,-8]) cylinder(r=19, h=40, center=true);
    }
    color ("Red") translate([0,0,-35]) scale([1.2,1.2,1.2]) cap_bolt(4,40);
    color ("Red") translate([0,0,-9]) rotate([180,0,0]) scale([1,1,2]) flat_nut(4);
    color ("Red") translate([0,0,-29]) scale([1,1,2]) flat_nut(4);
  }
}

module gears() {
  //import("v3/bevel_gear_pair.stl");
  gear_scale = 0.31;
  difference() {
    union() {
      translate([0,0,-3]) scale([gear_scale,gear_scale,gear_scale]) rotate([180,0,0]) color("Orange") import("v3/fullsize_bevel.stl");
      difference() {
        translate([0,0,-15]) cylinder(r=29, h=15, center=true);
        translate([0,0,-18]) cylinder(r=21, h=18, center=true);
      }
    }
    // screw holes
    for ( i = [0 : 13] ) {
      rotate(i * 360 / 12 , [0, 0, 1]) translate([25,0,-18]) cap_bolt(4,80); //cylinder(r=1.5, h=80, center=true);
    }
  }
}

// render() {
// difference() {
  // color("Aqua") translate([0,0,-3.6]) import("v3/scrollback5.stl");
//   translate([30,0,0]) cube(size=[60, 100, 30], center=true);
// }
// }


// for ( i = [0 : 2] ) {
//   rotate(i * 360 / 3 , [0, 0, 1])
difference() {
  translate([0,4,0]) tooth();
  //translate([-10,30,4]) cube(size=[20, 60, 20], center=true);

}



// }



//translate([0,33.5,0]) color("red") cube(size=[0.94, 0.94, 0.94], center=true);
// difference() {
//   union() {
    //color("SlateGrey") front();
//     color("Orange") gears();
//   }
//   color("Red") translate([0,-37,-15.22]) rotate([90,0,0]) cylinder(r=2, h=10, center=true);
//}


