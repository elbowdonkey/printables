include <MCAD/metric_fastners.scad>
include <servo.scad>
include <servo_plate.scad>
include <bearing_plate.scad>
include <hub_plate.scad>
include <hub.scad>

MAJOR_Y = 33.528; // 1.32"
MAJOR_Z = 5.715; // 0.225"
PLATE_THICKNESS = MAJOR_Z;//2.8575; // 0.1125"
HUB_DIAM = 25.4; // 1.0"
HUB_SCREW_CENTERS = 19.558; // 0.770"   ****
HUB_MAJOR_HOLE_DIAM = 9.525; // 0.375"
HUB_HOLE_DISTANCE = 19.558; // 0.770"
HUB_PLATE_Z_OFFSET = -2.3;
SCREW_HOLE_DIAM = 2.8;


// unplated
// translate([0,0,-MAJOR_Y/2 + PLATE_THICKNESS/2]) servo_plate();
// translate([0, MAJOR_Y/2 - PLATE_THICKNESS/2,0]) hub_plate();
// translate([0, -MAJOR_Y/2 + PLATE_THICKNESS/2,0]) hub_plate();
// translate([0,0,MAJOR_Y/2 - PLATE_THICKNESS/2]) bearing_plate();
// translate([0,0,MAJOR_Y/2 + PLATE_THICKNESS/2 + 0.5]) hub();
// translate([0,0,4.6]) servoWithArm();

// plated

translate([0,MAJOR_Y-3,0]) servo_plate();
translate([0,0,0]) rotate([90,0,0]) hub_plate();
translate([MAJOR_Y+1,0,0]) rotate([90,0,0]) hub_plate();
translate([0,-MAJOR_Y+5,0]) rotate([180,0,0]) bearing_plate();
translate([MAJOR_Y-5,-MAJOR_Y+5,0]) rotate([180,0,0]) hub();


//translate([0,MAJOR_Y/2 + 5, 0]) color("Orange") cube(size=[MAJOR_Y, PLATE_THICKNESS, MAJOR_Y], center=true);