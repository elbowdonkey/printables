$fn=300;
difference() {
  cube(size=[30, 80, 20], center=true);
  translate([8,0,-8]) cube(size=[1, 90, 10], center=true);
  translate([-8,0,-8]) cube(size=[1, 90, 10], center=true);
  translate([0,0,10]) rotate([90,0,0]) cylinder(r=10, h=90, center=true);
  translate([10,0,12.5]) rotate([0,45,0]) cube(size=[4, 90, 10], center=true);
  translate([-10,0,12.5]) rotate([0,-45,0]) cube(size=[4, 90, 10], center=true);
  translate([-16,0,11.5]) rotate([0,45,0]) cube(size=[4, 90, 10], center=true);
  translate([16,0, 11.5]) rotate([0,-45,0]) cube(size=[4, 90, 10], center=true);
  translate([ 16,0,-11.5]) rotate([0,45,0]) cube(size=[4, 90, 10], center=true);
  translate([-16,0,-11.5]) rotate([0,-45,0]) cube(size=[4, 90, 10], center=true);
}






