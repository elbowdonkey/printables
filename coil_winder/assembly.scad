include <MCAD/shapes.scad>
include <linear_bearing.scad>
include <lead_nut.scad>
include <lead_screw.scad>
include <lead_threads.scad>
include <rod.scad>
include <coupler.scad>
include <right_brace.scad>
include <left_brace.scad>
include <bobbin.scad>
include <carraige.scad>
include <../mill/steppers.scad>


nut_scale = 1;
rod_diam = 12.8;
rod_distance = -38.5;
lead_diam = 13;
hole_distance = 33;
can_depth = 44;
can_size = 42;
band_depth = 12;
band_size = can_size - 1;
center_depth = can_depth - (band_depth*2);
screw_radius = 1.5;
from_c = hole_distance/2;
band_c = (band_depth + center_depth)/2;
corner_c = can_depth/2;
corner_cut_size = 8;
screw_distance_from_center = 15.4;
shaft_diam = 5.3;

module assembly() {
  translate([0,-6,0]) rotate([90,0,180]) lead_nut();
  translate([0, 6,0]) rotate([90,0,0]) lead_nut();
  // translate([rod_distance,-21,0]) rotate([90,0,180]) linear_bearing();
  // translate([rod_distance, 21,0]) rotate([90,0,  0]) linear_bearing();
  translate([rod_distance,-10,0]) rod();
  lead_screw();
  translate([44, 0,0]) rotate([90,0,0]) color("LightGray") cylinder(r=3, h=220, center=true, $fn=100);

  translate([0,-100,0]) coupler();
  translate([44,-100,0]) coupler();

  translate([0,-96 - 45,0]) rotate([0,0,180]) nema17();
  translate([44,-96 - 45,0]) rotate([0,0,180]) nema17();

  translate([0,-113.5,0]) left_brace();
  translate([0,90,0]) right_brace();


}

bobbin2();

//assembly();

// color("Orange") translate([0,0,20]) carraige();

// rotate([90,0,0]) coupler();
// bobbin();

// rotate([-90,0,0]) coupler_side();
// translate([0,32,0]) rotate([-90,0,0]) cap();
