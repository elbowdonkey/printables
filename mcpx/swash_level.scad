$fn = 100;
shaft_diam = 3.6; // the actual shaft diameter of the MCPX is 3mm, but I found 3.6 to provide a tight, but not too tight, fit.
outer_diam = shaft_diam + 2;


difference() {
  union() {
    translate([0,0,1]) cylinder(r=outer_diam/2, h=12, center=true);
    difference() {
      translate([0,0,0])
      difference() {
        translate([0,0,-2.5]) cylinder(r=outer_diam*3, h=5, center=true);
        translate([0,0,0.2]) rotate_extrude(convexity = 10, $fn = 100) translate([outer_diam, 0, 0]) circle(r=outer_diam/2);
      }
      difference() {
        translate([0,0,0]) cylinder(r=outer_diam*4, h=5, center=true);
        translate([0,0,0]) cylinder(r=outer_diam, h=6, center=true);
      }
    }
  }
  cylinder(r=shaft_diam/2, h=15, center=true);
  hull() {
    translate([-5,15,0]) cylinder(r=10, h=15, center=true);
    translate([-15,15,0]) cylinder(r=10, h=15, center=true);
  }

  hull() {
    translate([-5,-15,0]) cylinder(r=10, h=15, center=true);
    translate([-15,-15,0]) cylinder(r=10, h=15, center=true);
  }

  translate([20,0,0]) cylinder(r=10, h=15, center=true);
}