wall_thickness = 0.5;

// difference() {
//   // case
//   translate([-wall_thickness, -wall_thickness, 0]) cube(size=[19 + (wall_thickness*2), 17.7 + (wall_thickness*2), 4.7 + (wall_thickness*2)]);

//   // digistump with LED
//   translate([0,0,wall_thickness]) digistump();
// }

module digistump() {
  width = 19;
  length = 17.7;
  height = 4.5;
  usb_w = 12.32;
  usb_l = 8.73;
  solder_clearance_h = 1.5;
  solder_clearance_w = 2.3;

  translate([0, 0, solder_clearance_h]) cube(size=[width, length, height]);
  translate([(width/2) - (usb_w/2), -usb_l  + 0.1, solder_clearance_h]) cube(size=[usb_w, usb_l, 2.2]);

  // through hole soldered pins
  translate([0,0,0]) cube([solder_clearance_w, length, solder_clearance_h]);
  translate([width - solder_clearance_w,0,0]) cube([solder_clearance_w, length, solder_clearance_h]);
  translate([0,length - solder_clearance_w,0]) cube([width, solder_clearance_w, solder_clearance_h]);
}


digistump();