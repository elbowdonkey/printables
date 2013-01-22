$fn=100;
difference() {
  cube(size=[20, 20, 4], center=true);
  color("Red") rotate([90,0,45]) cylinder(r=0.8, h=60, center=true);
  color("Red") rotate([90,0,-45]) cylinder(r=0.8, h=60, center=true);
  cylinder(r=3, h=5, center=true);
  rotate([0,0,45]) translate([0,17,0]) cube(size=[10, 10, 5], center=true);
  rotate([0,0,-45]) translate([0,17,0]) cube(size=[10, 10, 5], center=true);
  rotate([0,0,45]) translate([0,-17,0]) cube(size=[10, 10, 5], center=true);
  rotate([0,0,-45]) translate([0,-17,0]) cube(size=[10, 10, 5], center=true);

  translate([0,12,0]) cylinder(r=5, h=5, center=true);
  translate([0,-12,0]) cylinder(r=5, h=5, center=true);
  translate([12,0,0]) cylinder(r=5, h=5, center=true);
  translate([-12,0,0]) cylinder(r=5, h=5, center=true);
}





