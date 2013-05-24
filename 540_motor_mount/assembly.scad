$fn = 100;
include <motor.scad>
include <mount.scad>



// rotate([1.5,2,0]) translate([0,0,15]) motor();

difference() {
  mount();
  rotate([1.5,2,0]) translate([-20,-20,15]) cube(size=[40, 40, 10]);
}


// difference() {
//   cylinder(r=20, h=32);
//   translate([0,0,-1]) cylinder(r=18, h=29);
//   translate([-20,0,-1]) cube(size=[40, 40, 50]);
// }
