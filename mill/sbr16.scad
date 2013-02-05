include <MCAD/shapes.scad>
$fn=100;
module sbr16_rail(length=100) {
  tri_w = 18;
  color("Silver")
  union() {
    translate([0,tri_w/2,10]) rotate([90,0,90]) equiTriangle(tri_w,length);
    translate([0,0,24]) rotate([0,90,0]) cylinder(r=8, h=length, center=true);
    translate([0,0,7.1]) cube(size=[length, 18, 6.2], center=true);
    translate([0,0,2]) cube(size=[length, 40, 4], center=true);
  }

}

module sbr16_block() {
  color("Silver")
  translate([0,0,-0.8])
  difference() {
    translate([0,0,24.5]) cube(size=[44, 44, 32], center=true);
    scale([1.05,1.05,1.05]) sbr16_rail();
    translate([0,0,24.5 + 16]) cube(size=[45, 16.8, 2], center=true);
    translate([0,-22,29.5-9.2]) cube(size=[45, 2, 24], center=true);
    translate([0,22,29.5-9.2]) cube(size=[45, 2, 24], center=true);
  }
}

// sbr16_rail();
// sbr16_block();




