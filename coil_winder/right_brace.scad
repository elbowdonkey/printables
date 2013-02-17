module right_brace() {
  // difference() {
  //   cube(size=[140, 10, 45], center=true);
  //   rotate([90,0,0]) cylinder(r=6.6, h=12, center=true);
  //   translate([44,0,0]) rotate([90,0,0]) cylinder(r=6.6, h=12, center=true);
  //   translate([rod_distance, 0, 0]) rotate([90,0,0]) cylinder(r=rod_diam/2, h=12, center=true);
  // }

    difference() {
      union() {
        translate([8,0,0]) cube(size=[120, 5, 44], center=true);
        color("Red") translate([-24.5,  5,    0]) cube(size=[  3, 10, 44], center=true);
        color("Red") translate([-50.5,  5,    0]) cube(size=[  3, 10, 44], center=true);
        color("Red") translate([   22,  5,    0]) cube(size=[  3, 10, 44], center=true);
        color("Red") translate([ 66.5,  5,    0]) cube(size=[  3, 10, 44], center=true);
        color("Red") translate([   8, 7.5,-20.5]) cube(size=[120, 10,  3], center=true);
        color("Red") translate([   8,   5, 20.5]) cube(size=[120, 10,  3], center=true);
      }

      // rotate([90,0,0]) cylinder(r=8, h=12, center=true, $fn=100);
      // translate([rod_distance, 0, 0]) rotate([90,0,0]) cylinder(r=rod_diam/2, h=12, center=true, $fn=100);

      // translate([0, 0, 0]) rotate([90,0,0])  cylinder(r=16, h=12, center=true, $fn=100);
      // translate([44, 0, 0]) rotate([90,0,0]) cylinder(r=16, h=12, center=true, $fn=100);

      rotate([90,0,0]) cylinder(r=lead_diam/2, h=12, center=true, $fn=100);
      translate([44,0,0])
      rotate([90,0,0]) cylinder(r=lead_diam/2, h=12, center=true, $fn=100);


      translate([rod_distance, 0, 0])
      rotate([90,0,0]) cylinder(r=rod_diam/2, h=12, center=true, $fn=100);
      translate([ 55, 7,-10]) cylinder(r=1.5, h=50, center=true, $fn=100);
      translate([ 34, 7,-10]) cylinder(r=1.5, h=50, center=true, $fn=100);
      translate([ 10, 7,-10]) cylinder(r=1.5, h=50, center=true, $fn=100);
      translate([-10, 7,-10]) cylinder(r=1.5, h=50, center=true, $fn=100);
      translate([-34, 7,-10]) cylinder(r=1.5, h=50, center=true, $fn=100);
      translate([ 55, 7,-20.4]) cylinder(r1=1.5, r2=3, h=3, center=true, $fn=100);
      translate([ 34, 7,-20.4]) cylinder(r1=1.5, r2=3, h=3, center=true, $fn=100);
      translate([ 10, 7,-20.4]) cylinder(r1=1.5, r2=3, h=3, center=true, $fn=100);
      translate([-10, 7,-20.4]) cylinder(r1=1.5, r2=3, h=3, center=true, $fn=100);
      translate([-34, 7,-20.4]) cylinder(r1=1.5, r2=3, h=3, center=true, $fn=100);

      color("Blue") translate([0,16.5,0]) rotate([10,0,0]) cube(size=[160, 20, 60], center=true);
    }
  translate([0,8,0]) rotate([90,0,0]) tube2(8, lead_diam, lead_diam + 4, center = false);
  translate([44,8,0]) rotate([90,0,0]) tube2(8, lead_diam, lead_diam + 4, center = false);
}