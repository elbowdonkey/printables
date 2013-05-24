include <head.scad>
include <mold.scad>

difference() {
  // union() {
  //   translate([0,0,-12]) rotate([180,0,0]) head();
    mold();
  // }
  // translate([0,15,0]) cube(size=[30, 30, 60], center=true);
}
