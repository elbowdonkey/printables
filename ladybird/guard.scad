$fn=300;
// color("Orange") translate([0,-3.75,0]) import("PropellerGuard1.stl");
// cylinder(r=28, h=5, center=true);

guard_radius = 33.5;

difference() {
  translate([0,0,0]) cylinder(r=guard_radius, h=10);
  difference() {
    translate([0,0,-1]) cylinder(r=guard_radius-0.4, h=12);
    translate([guard_radius-2,-15,-2]) cube(size=[10, 30, 14]);
  }
  // translate([-40,2,-1]) cube(size=[80, 35, 6]);
  // translate([-40,-37,-1]) cube(size=[80, 35, 6]);
  translate([-40,-40,-1]) cube(size=[80, 80, 6]);
}



difference() {
  union() {
    translate([guard_radius-2,-2.2,0]) cube(size=[10, 4.4, 10]);
    // hull() {
    //   translate([guard_radius - (10/2),-2,4]) cube(size=[10, 4, 1]);
    //   translate([guard_radius - 1,-2,9]) cube(size=[1, 4, 1]);
    // }
  }
  translate([guard_radius - (25/2),0, 1.5]) color("Red") cube(size=[50, 3, 3.5], center=true);
  translate([guard_radius + 1.7, 0, 4]) cylinder(r=0.85, h=20);
  translate([guard_radius + 4.0, 0, 4]) cylinder(r=0.85, h=20);
  translate([guard_radius + 6.2, 0, 4]) cylinder(r=0.85, h=20);
}



// difference() {
//   hull() {
//     translate([0,-30.1, 2]) cube(size=[5, 15, 4], center=true);
//     translate([0,-30.1, 9.5]) cube(size=[7, 1, 1], center=true);
//   }
//   translate([0,-30.1, 1.5]) color("Red") cube(size=[3, 25, 3.5], center=true);
// }

