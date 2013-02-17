module lead_nut() {
  nut_diam = 22.5;
  nut_height = 10/2;
  rod_clearance_diam = 15.35;

  outer_diam = nut_diam+12;

  difference() {
    //hexagon(nut_diam+4,nut_height);
    hull() {
      cylinder(r=outer_diam/2, h=nut_height, center=true, $fn=100);
      translate([0,outer_diam/2, 0]) cube(size=[outer_diam, 4, nut_height], center=true);
    }

    translate([0,outer_diam/2 + 1, 0]) cube(size=[outer_diam+1, 8, nut_height+1], center=true);


    translate([0,0,3]) hexagon(nut_diam,nut_height+2);
    cylinder(r=rod_clearance_diam/2, h=30, center=true);

    // holes for bolting a top plate on
    translate([12,outer_diam/2-2,0]) rotate([90,0,0]) cylinder(r=1.6, h=20, center=true, $fn=8);
    translate([-12,outer_diam/2-2,0]) rotate([90,0,0]) cylinder(r=1.6, h=20, center=true, $fn=8);


    // holes for screws that join two halves together
    translate([ 12,  -7,0]) cylinder(r=1.6, h=10, center=true, $fn=8);
    translate([-12,  -7,0]) cylinder(r=1.6, h=10, center=true, $fn=8);
    translate([  0, -14,0]) cylinder(r=1.6, h=10, center=true, $fn=8);
    // translate([ 12,   7,0]) cylinder(r=1.6, h=10, center=true, $fn=8);
    // translate([-12,   7,0]) cylinder(r=1.6, h=10, center=true, $fn=8);
  }






  // difference() {

  //   translate([0,rod_diam/2 + 2.5 + 5,0]) cube(size=[60, 10, 40], center=true);
  //   translate([0,0,bearing_length/2]) {
  //     translate([ 10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
  //     translate([-10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
  //   }
  // }

  // translate([0,0,bearing_length/2]) {
  //   difference() {
  //     union() {
  //       hull() {
  //         cylinder(r=(rod_diam/2) + 2.5, h=bearing_length, center=true, $fn=100);
  //         translate([0,rod_diam/2 + 2.5, 0]) cube(size=[30, 4, bearing_length], center=true);
  //       }
  //     }
  //     translate([0,0,(bearing_length+5)/2]) cylinder(r=rod_diam/2 + 1, h=bearing_length*4, center=true);

  //     translate([ 10,10, 4]) rotate([0,90,90])  cylinder(r=1.6, h=10, center=true, $fn=20);
  //     translate([ 10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
  //     translate([-10,10, 4]) rotate([0,90,90])  cylinder(r=1.6, h=10, center=true, $fn=20);
  //     translate([-10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
  //   }
  // }
}