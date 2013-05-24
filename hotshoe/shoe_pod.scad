$fn=100;
cube(size=[18.62, 17.36, 2.05], center=true);
difference() {
  hull() {
    translate([0,0,2.05/2 + 5]) cube(size=[12.54, 12.54, 10], center=true);
    translate([0,0,2.05/2 + 20]) cylinder(r=12.54/2, h=10, center=true);
  }

  translate([0,0,2.05/2 + 20]) cylinder(r=5.1/2, h=11, center=true);
}
