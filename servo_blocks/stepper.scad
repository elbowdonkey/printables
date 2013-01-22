$fn = 20;

difference() {
  cube(size=[42, 33.75, 42], center=true);
  translate([42/2,0,42/2]) color("Red") rotate([0,45,0])  cube(size=[8, 40, 5.7], center=true);
  translate([-(42/2),0,42/2]) color("Red") rotate([0,-45,0])  cube(size=[8, 40, 5.7], center=true);
  translate([-(42/2),0,-42/2]) color("Red") rotate([0,45,0])  cube(size=[8, 40, 5.7], center=true);
  translate([(42/2),0,-42/2]) color("Red") rotate([0,-45,0])  cube(size=[8, 40, 5.7], center=true);
  color("Green") translate([31/2,42/2,-31/2]) rotate([90,0,0])  cylinder(r=1.3, h=30, center=true);
  color("Green") translate([-31/2,42/2,-31/2]) rotate([90,0,0]) cylinder(r=1.3, h=30, center=true);
}