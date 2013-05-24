module mold() {
  difference() {
    color("Orange") translate([0,0,-10]) cube(size=[20, 20, 20], center=true);
    hull() {
      translate([0,0,-9]) sphere(r=6);
      cylinder(r=6, h=2, center=true);
    }
  }
}