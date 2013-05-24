screw_diam = 5.8;
$fn=30;

translate([0,0,10]) {
  difference() {
    union() {
      cylinder(r=6, h=20, center=true);
      hull() {
        cylinder(r=4, h=20, center=true);
        // translate([10,0,-6]) rotate([90,90,0]) cylinder(r=4, h=8, center=true);
        translate([10,0,-6]) cube(size=[8, 8, 8], center=true);
      }
    }

    translate([0,0,5.1]) cylinder(r=screw_diam/2+0.25, h=20, center=true);
    translate([9,0,-5]) rotate([90,90,0]) cylinder(r=screw_diam/2 + 0.25, h=11, center=true);
  }
}



*rotate([0,-90,0]) {
  difference() {
    union() {
      hull() {
        translate([9,0,-5]) cube(size=[10, 18, 10], center=true);
        translate([9,0,-50]) cube(size=[10, 40, 30], center=true);
      }
      translate([9,-6.5,0]) cube(size=[10, 5, 20], center=true);
      translate([9,6.5,0]) cube(size=[10, 5, 20], center=true);
      translate([24.5,0,-45]) rotate([0,90,0]) cylinder(r=6, h=21, center=true);
    }
    translate([9,0,5]) rotate([90,90,0]) cylinder(r=screw_diam/2, h=30, center=true);
    translate([9,0,-45]) rotate([0,90,0]) cylinder(r=screw_diam/2+0.5, h=80, center=true);
  }
}