module servo_plate() {
  plate_x = 56;
  plate_y = MAJOR_Y;

  difference() {
    translate([plate_x/2 - plate_y/2,0,0]) cube(size=[plate_x, plate_y, PLATE_THICKNESS], center=true);
    translate([0,0,19]) scale([1.05,1.05,1]) servo();

    translate([-MAJOR_Y/2 + 4,MAJOR_Y/2-PLATE_THICKNESS/2, 5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([MAJOR_Y/2 - 4, MAJOR_Y/2-PLATE_THICKNESS/2, 5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([-MAJOR_Y/2 + 4,-MAJOR_Y/2+PLATE_THICKNESS/2,5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([MAJOR_Y/2 - 4, -MAJOR_Y/2+PLATE_THICKNESS/2,5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);

    translate([-MAJOR_Y/2 + 3.5,5.5, 5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM, 10);
    translate([-MAJOR_Y/2 + 3.5,-5.5,5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);
    translate([33.6,5.5, 5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM, 10);
    translate([33.6,-5.5,5]) rotate([0,180,0]) cap_bolt(SCREW_HOLE_DIAM,10);

    hull() {
      translate([-11,-1,0]) cylinder(r=2, h=20, center=true);
      translate([-11,1,0]) cylinder(r=2, h=20, center=true);
    }

    translate([0,0,MAJOR_Y/2 - PLATE_THICKNESS/2]) rotate([90,0,0]) cylinder(r=HUB_DIAM/2+0.5, h=MAJOR_Y+1, center=true);
  }
}


