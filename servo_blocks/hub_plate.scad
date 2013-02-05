include <MCAD/shapes.scad>

CORNER_SIZE = 10;

module hub_corners() {
  cutout_radius = HUB_DIAM/2 - 2;
  cutout_amount = 1.5;
  difference() {
    cube(size=[MAJOR_Y, PLATE_THICKNESS, MAJOR_Y], center=true);

    translate([0,0,MAJOR_Y/cutout_amount]) rotate([90,0,0]) cylinder(r=cutout_radius, h=10, center=true);
    translate([0,0,-MAJOR_Y/cutout_amount]) rotate([90,0,0]) cylinder(r=cutout_radius, h=10, center=true);
    // translate([MAJOR_Y/cutout_amount,0,0]) rotate([90,0,0]) cylinder(r=cutout_radius, h=10, center=true);
    // translate([-MAJOR_Y/cutout_amount,0,0]) rotate([90,0,0]) cylinder(r=cutout_radius, h=10, center=true);

    translate([0,0,MAJOR_Y/2 - PLATE_THICKNESS/2 + 1])
    cube(size=[MAJOR_Y+1, MAJOR_Y+1, PLATE_THICKNESS + 2], center=true);
    translate([0,0,-MAJOR_Y/2 + PLATE_THICKNESS/2 - 1])
    cube(size=[MAJOR_Y+1, MAJOR_Y+1, PLATE_THICKNESS + 2], center=true);
  }
}

module hub_plate() {
  hub_outer_diam = HUB_DIAM;
  hub_inner_diam = HUB_MAJOR_HOLE_DIAM;

  plate_size = MAJOR_Y;

  difference() {
    union() {
      // center ring
      rotate([90,0,0]) tube2(PLATE_THICKNESS, hub_inner_diam, hub_outer_diam, center = true);

      // outer corners
      hub_corners();
    }

    rotate([90,0,0]) cylinder(r=HUB_SCREW_CENTERS/2 - 4, h=PLATE_THICKNESS+1, center=true);
    translate([0,-3.2,0])
    rotate([-90,0,0])
    for ( i = [0 : 7] ) {
      rotate( i * 360 / 8, [0, 0, 1])
      translate([0, HUB_SCREW_CENTERS/2, 0])
      cap_bolt(SCREW_HOLE_DIAM,10);
    }

    translate([-MAJOR_Y/2 + 4,0,-MAJOR_Y/2 - 2.5]) cap_bolt(SCREW_HOLE_DIAM,16);
    translate([MAJOR_Y/2 - 4,0,-MAJOR_Y/2 - 2.5]) cap_bolt(SCREW_HOLE_DIAM,16);

    translate([-MAJOR_Y/2 + 4,0,MAJOR_Y/2 + 2.5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,16);
    translate([MAJOR_Y/2 - 4,0, MAJOR_Y/2 + 2.5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,16);
  }




  // difference() {
  //   cube(size=[MAJOR_Y, MAJOR_Z, MAJOR_Y - (MAJOR_Z*2)], center=true);

  //   rotate([90,0,0]) cylinder(r=HUB_SCREW_CENTERS/2 - 4, h=MAJOR_Z+1, center=true);
  //   translate([0,-3.2,0])
  //   rotate([-90,0,0])
  //   for ( i = [0 : 7] ) {
  //     rotate( i * 360 / 8, [0, 0, 1])
  //     translate([0, HUB_SCREW_CENTERS/2, 0])
  //     cap_bolt(SCREW_HOLE_DIAM,10);
  //   }

  //   translate([-MAJOR_Y/2 + 4,0,-MAJOR_Y/2 - 2.5]) cap_bolt(SCREW_HOLE_DIAM,10);
  //   translate([MAJOR_Y/2 - 4,0,-MAJOR_Y/2 - 2.5]) cap_bolt(SCREW_HOLE_DIAM,10);

  //   translate([-MAJOR_Y/2 + 4,0,MAJOR_Y/2 + 2.5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
  //   translate([MAJOR_Y/2 - 4,0, MAJOR_Y/2 + 2.5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
  // }
}