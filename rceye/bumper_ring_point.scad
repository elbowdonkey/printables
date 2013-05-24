$fn=150;

module point() {
  rotate([-90,0,0])
  difference() {
    scale([1,1.5,1]) cylinder(r=3, h=4, center=true);
    translate([0,-4,0]) rotate([90,0,0]) cylinder(r=0.85, h=10, center=true);
    translate([0,2,0]) cube(size=[10, 2, 1], center=true);
    translate([0,7.4,0]) cube(size=[10, 10, 10], center=true);
  }
}

point();
translate([0,8,0]) point();
translate([0,16,0]) point();
translate([0,24,0]) point();


