use <MCAD/metric_fastners.scad>

$fn = 100;

pole_diam = 34.9 + 0.6; // 0.2 is some wiggle room
mic_diam = 21.66 + 0.6; // 0.2 is some wiggle room
wall_thickness = 5;

tube_heights = 30;

lock_ring_diam = 33.1;
lock_ring_height = 5.22;
flange_diam1 = 56 + 1; // + 1 to make the part just a bit wider than the actual flange
flange_diam2 = 24 + 1;
flange_height = 4.83;

mic_center = (pole_diam/2) + (mic_diam/2) + 20;

plate_thickness = 4;
fillet_radius = 4;

module fillet_shape() {
  difference() {
    polygon(points=[[0,0],[fillet_radius,0],[0,fillet_radius]], paths=[[0,1,2]]);
    translate([fillet_radius,fillet_radius,0]) circle(r = fillet_radius);
  }
}

module fillet(inner_diam=10, radius=5 ) {
  rotate_extrude()
  translate([inner_diam-0.1, 0, 0])
  fillet_shape();
}

module top_plate() {
  translate([0,0,plate_thickness/2])
  hull() {
    cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
    translate([mic_center,0,0]) cylinder(r=flange_diam1/2, h=plate_thickness, center=true);
  }
}

module bottom_plate() {
  translate([0,0,plate_thickness/2])
  hull() {
    cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
    translate([mic_center,0,0]) cylinder(r=lock_ring_diam/2 + wall_thickness, h=plate_thickness, center=true);
  }
}

module outer_uprights() {
  f_diam1 = (pole_diam/2) + wall_thickness;
  f_diam2 = (lock_ring_diam/2) + wall_thickness;

  // fillets
  fillet(inner_diam=f_diam1);
  translate([0,0,tube_heights]) rotate([180,0,0])  fillet(inner_diam=f_diam1);
  translate([mic_center,0,0]) fillet(inner_diam=f_diam2);
  translate([mic_center,0,tube_heights]) rotate([180,0,0])  fillet(inner_diam=f_diam2);


  // tube outers
  translate([0,0,tube_heights/2]) cylinder(r=(pole_diam/2) + wall_thickness, h=tube_heights, center=true);
  translate([mic_center,0,tube_heights/2]) cylinder(r=(lock_ring_diam/2) + wall_thickness, h=tube_heights, center=true);
}

module inner_uprights() {
  height = tube_heights + (plate_thickness*2);
  translate([0,0,height/2]) cylinder(r=(pole_diam/2), h=height + 10, center=true);
  translate([mic_center,0,height/2]) cylinder(r=(mic_diam/2), h=height + 10, center=true);
}

module upper_outline_carve() {
  difference() {
    color("Orange") translate([0,0,15]) cube(size=[200, 100, 30], center=true);
    color("Silver") translate([0,0,-2]) scale([1,1,10]) top_plate();
  }
}

module lower_outline_carve() {
  difference() {
    color("Orange") translate([0,0,15]) cube(size=[200, 100, 30], center=true);
    color("Silver") translate([0,0,-2]) scale([1,1,10]) bottom_plate();
  }
}

difference() {
  union() {
    translate([0,0,tube_heights + plate_thickness]) top_plate();
    translate([0,0,plate_thickness]) outer_uprights();
    bottom_plate();
  }
  translate([0,0,0]) inner_uprights();
  translate([0,0,20]) upper_outline_carve();
  translate([0,0,-20]) lower_outline_carve();
}



// translate([0,0,plate_thickness/2])
// rotate([180,0,0]) {
//   plate();
//   translate([0,0,-pole_diam/2 - (plate_thickness + pole_diam/2)]) bottom_plate();

//   translate([0,0,-pole_diam/2 - plate_thickness/2])
//   difference() {
//     union() {
//       cylinder(r=(pole_diam/2) + wall_thickness, h=pole_diam, center=true);
//       translate([mic_center,0,0]) cylinder(r=mic_diam/2 + wall_thickness, h=pole_diam, center=true);
//     }
//     translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam*2, center=true);
//     cylinder(r=pole_diam/2, h=pole_diam*2, center=true);
//     color("Silver") translate([-(pole_diam/2) - 5.5, 0, 0]) rotate([0,90,0]) cap_bolt(3,6);
//   }
// }

// fillet_radius = 4;

// module fillet_shape() {
//   difference() {
//     polygon(points=[[0,0],[fillet_radius,0],[0,fillet_radius]], paths=[[0,1,2]]);
//     translate([fillet_radius,fillet_radius,0]) circle(r = fillet_radius);
//   }
// }

// module fillet(inner_diam=10) {
//   rotate_extrude()
//   translate([inner_diam, 0, 0])
//   fillet_shape();
// }

// // mount pole fillets
// difference() {
//   union() {
//     translate([0,0,plate_thickness + fillet_radius])
//     rotate([180,0,0])
//     rotate_extrude(convexity = 10, $fn = 100)
//     translate([(pole_diam/2) + wall_thickness + fillet_radius , 0, 0])
//     fillet(inner_diam=pole_diam);

//     translate([0,0,pole_diam - fillet_radius/2])
//     rotate_extrude(convexity = 10, $fn = 100)
//     translate([(pole_diam/2) + (fillet_radius) + wall_thickness , 0, 0])
//     fillet(inner_diam=pole_diam);
//   }

//   // fillet carver offers
//   // difference() {
//   //   hull() {
//   //     cylinder(r=pole_diam + wall_thickness, h=40, center=true);
//   //     translate([mic_center,0,0]) cylinder(r=flange_diam1/2, h=40, center=true);
//   //   }
//   //   hull() {
//   //     cylinder(r=pole_diam/2 + wall_thickness, h=60, center=true);
//   //     translate([mic_center,0,0]) cylinder(r=flange_diam1/2, h=60, center=true);
//   //   }
//   // }

//   // translate([0,0,pole_diam])
//   // difference() {
//   //   hull() {
//   //     cylinder(r=pole_diam + wall_thickness, h=40, center=true);
//   //     translate([mic_center,0,0]) cylinder(r=lock_ring_diam/2 + wall_thickness, h=40, center=true);
//   //   }
//   //   hull() {
//   //     cylinder(r=pole_diam/2 + wall_thickness, h=60, center=true);
//   //     translate([mic_center,0,0]) cylinder(r=lock_ring_diam/2 + wall_thickness, h=60, center=true);
//   //   }
//   // }
// }




// // mic pole fillets

// translate([mic_center,0,20])
// rotate_extrude(convexity = 10, $fn = 100)
// translate([(mic_diam/2) + (fillet_radius) + wall_thickness , 0, 0])
// fillet(inner_diam=mic_diam);

// // translate([mic_center,0,plate_thickness + fillet_radius])
// // rotate([180,0,0])
// // rotate_extrude(convexity = 10, $fn = 100)
// // translate([(mic_diam/2) + (fillet_radius) + wall_thickness , 0, 0])
// //fillet();
















// // // rhode mic mount lock ring
// // color("Silver") translate([mic_center,0,-pole_diam/2 - lock_ring_height/2]) cylinder(r=lock_ring_diam/2, h=lock_ring_height, center=true);

// // // rhode mic mount top plate
// // color("Silver") translate([mic_center,0,pole_diam/2 + flange_height/2]) cylinder(r1=flange_diam1/2, r2=flange_diam2/2, h=flange_height, center=true);

