include <MCAD/shapes.scad>

module bearing_plate() {
  cutout_radius = HUB_DIAM/2 - 2;
  cutout_amount = 1.5;
  difference() {
    union() {
      difference() {
        cylinder(r=HUB_DIAM/2, h=PLATE_THICKNESS, center=true);
        cylinder(r=HUB_SCREW_CENTERS/2 - 4, h=PLATE_THICKNESS+1, center=true);
      }

      difference() {
        cube(size=[MAJOR_Y, MAJOR_Y, PLATE_THICKNESS], center=true);
        translate([0,MAJOR_Y/cutout_amount,0])  cylinder(r=cutout_radius, h=10, center=true);
        translate([0,-MAJOR_Y/cutout_amount,0])  cylinder(r=cutout_radius, h=10, center=true);
        translate([MAJOR_Y/cutout_amount,0,0])  cylinder(r=cutout_radius, h=10, center=true);
        translate([-MAJOR_Y/cutout_amount,0,0])  cylinder(r=cutout_radius, h=10, center=true);
        cylinder(r=HUB_SCREW_CENTERS/2 - 4, h=PLATE_THICKNESS+1, center=true);
      }
    }

    translate([0,0,-MAJOR_Y/2 + PLATE_THICKNESS/2]) rotate([90,0,0]) cylinder(r=HUB_DIAM/2+0.5, h=MAJOR_Y+1, center=true);
    translate([0,0,-MAJOR_Y/2 + PLATE_THICKNESS/2]) rotate([90,0,90]) cylinder(r=HUB_DIAM/2+0.5, h=MAJOR_Y+1, center=true);

    translate([-MAJOR_Y/2 + 4, MAJOR_Y/2-PLATE_THICKNESS/2,3]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([MAJOR_Y/2 - 4,  MAJOR_Y/2-PLATE_THICKNESS/2,3]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([-MAJOR_Y/2 + 4,-MAJOR_Y/2+PLATE_THICKNESS/2,3]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([MAJOR_Y/2 - 4, -MAJOR_Y/2+PLATE_THICKNESS/2,3]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
  }

  tube2(PLATE_THICKNESS, HUB_SCREW_CENTERS/2, HUB_SCREW_CENTERS/2+4, center = true);




  // difference() {
  //   cube(size=[MAJOR_Y, MAJOR_Y, MAJOR_Z], center=true);
  //   cylinder(r=HUB_SCREW_CENTERS/2 - 4, h=MAJOR_Z+1, center=true);


  // }
}