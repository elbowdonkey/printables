include <digispark.scad>;
include <rgb_shield.scad>;

usb_x      = 12.26;
usb_y      = 8.79;

module digi() {
  // translate([(pcb_x - usb_x)/2,-usb_y,-0.2])
  // cube(size=[usb_x, usb_y, pcb_z], center=false);
  pcb();
  chips();
  headers();
  translate([0,1.2,14])
  shield_assembly();
}


pcb_x           = 19.18;
pcb_y           = 16.8;
wall_width      = 0.5;
layer_thickness = 0.27;
skin_thickness  = layer_thickness * 2;
cavity_height   = 30;
pcb_buffer      = 0.3;
$fn=20;

union() {
  difference() {
    difference() {
        translate([-wall_width - (pcb_buffer/2),-wall_width - (pcb_buffer/2) + 1.8,-0.1])
        cube(size=[pcb_buffer + pcb_x + (wall_width * 2), pcb_buffer + pcb_y + (wall_width * 2), cavity_height + 5]);

        translate([-(pcb_buffer/2),-(pcb_buffer/2) + 1.8,-0.2])
        cube(size=[pcb_buffer + pcb_x, pcb_buffer + pcb_y, cavity_height + 0.1]);
    }
    // translate([10,-5,-5]) cube(size=[30, 30, 60]);

  }

  // translate([pcb_x/2 - 2,-pcb_buffer,pcb_z]) cube(size=[4, 1.5, 2]);
  // translate([-pcb_buffer,-pcb_buffer,pcb_z]) cube(size=[2, 1.5, 2]);
  // translate([-pcb_buffer,13.2,pcb_z]) cube(size=[2, 1.5, 2]);
  // translate([pcb_x-2+pcb_buffer,pcb_y-1.5+pcb_buffer,pcb_z]) cube(size=[2, 1.5, 2]);
  // translate([pcb_x-2+pcb_buffer,-pcb_buffer,pcb_z]) cube(size=[2, 1.5, 2]);
}
// digi();