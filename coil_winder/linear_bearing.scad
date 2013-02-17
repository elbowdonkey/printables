rod_diam = 13.95;
bearing_length = 15;

module linear_bearing() {
  difference() {
    union() {
      hull() {
        cylinder(r=(rod_diam/2) + 2.5, h=bearing_length, center=true, $fn=100);
        // translate([0,((rod_diam/2) + 2.5)/2,0]) cylinder(r=(rod_diam/2) + 2.5, h=bearing_length, center=true, $fn=100);
        translate([0,rod_diam/2 + 2.5, 0]) cube(size=[30, 4, bearing_length], center=true);
      }

      // translate([-1.25,4, 0]) cube(size=[rod_diam + 2.5, 8, bearing_length], center=true);
      translate([0,0,(bearing_length+5)/2]) cylinder(r=(rod_diam/2) + 2.5, h=bearing_length+5, center=true, $fn=100);
    }
    translate([0,0,(bearing_length+5)/2]) cylinder(r=rod_diam/2, h=bearing_length*4, center=true,         $fn=12);
    // translate([0,0, bearing_length/2 + (rod_diam/2) -3]) sphere(r=rod_diam/2 + 2, $fn=12);
    // translate([0,0,-bearing_length/2 - (rod_diam/2) +3]) sphere(r=rod_diam/2 + 2, $fn=12);

    translate([ 10,10, 4]) rotate([0,90,90])  cylinder(r=1.6, h=10, center=true, $fn=20);
    translate([ 10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
    translate([-10,10, 4]) rotate([0,90,90])  cylinder(r=1.6, h=10, center=true, $fn=20);
    translate([-10,10,-4]) rotate([0,90,90]) cylinder(r=1.6, h=10, center=true, $fn=20);
  }
}


module bearings() {
  for (i = [0 : 3]) {
    rotate(i * 360 / 4, [0,0,1])
    translate([0,14,0]) bearing();
  }
}






