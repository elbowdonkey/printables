module front() {
  difference() {
    translate([0,0,-8]) cylinder(r=40, h=40, center=true);

    // tooth slide cutouts
    for (i = [0 : 2]) {
      rotate(i * 360 / 3, [0,0,1])
      color("Green")
      // union() {
      //   translate([0,25,6])       cube(size=[10.3,40, 20], center=true);
      //   translate([-5.99,27.5,7]) cube(size=[2.2, 40, 4.2], center=true);
      //   translate([5.99,27.5,7])  cube(size=[2.2, 40, 4.2], center=true);
      // }
      union() {
        translate([0,25,8]) cube(size=[10, 40, 12], center=true);
        translate([-5,25,8]) rotate([0,45,0]) cube(size=[3, 40, 3], center=true);
        translate([5,25,8]) rotate([0,45,0]) cube(size=[3, 40, 3], center=true);
      }
    }

    translate([0,0,5]) cylinder(r=15, h=30, center=true);
    difference() {
      translate([0,0,-17]) cylinder(r=36.4, h=40, center=true);
      translate([0,0,-8]) cylinder(r=19, h=40, center=true);
    }
    color ("Red") translate([0,0,-35]) scale([1.2,1.2,1.2]) cap_bolt(4,40);
    color ("Red") translate([0,0,-9]) rotate([180,0,0]) scale([1,1,2]) flat_nut(4);
    color ("Red") translate([0,0,-29]) scale([1,1,2]) flat_nut(4);
  }
}