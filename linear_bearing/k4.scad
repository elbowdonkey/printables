rod_diam = 13.3 * 1.07; // 1.07 == anti shrinkage
bearing_length = 10;

difference() {
  cylinder(r=(rod_diam/2) + 2.5, h=bearing_length, center=true, $fn=100);
  cylinder(r=rod_diam/2, h=bearing_length+1, center=true,         $fn=12);
  translate([0,0, bearing_length/2 + (rod_diam/2) -3]) sphere(r=rod_diam/2 + 2, $fn=12);
  translate([0,0,-bearing_length/2 - (rod_diam/2) +3]) sphere(r=rod_diam/2 + 2, $fn=12);
}


