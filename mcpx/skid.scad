$fn=50;

//rotate([0,0,4]) import("Blade-mCPX_LG_Skid-X.stl");

thickness = 1.5;

module skid() {
  difference() {
    color("Orange")
    hull() {
      translate([3,12,0])        cylinder(r=2, h=thickness, center=true);
      translate([-18,13,0])      cylinder(r=2, h=thickness, center=true);
      translate([-30.8,-11.5,0]) cylinder(r=2, h=thickness, center=true);
      translate([32.6,-9.7,0])   cylinder(r=2, h=thickness, center=true);
      translate([28,-10,0])   cylinder(r=4, h=thickness, center=true);
    }

    hull() {
      translate([13,10,0]) cylinder(r=8, h=5, center=true);
      translate([10,-3,0]) cylinder(r=8, h=5, center=true);
      translate([27,-3, 0]) cylinder(r=8, h=5, center=true);
      translate([32,0,0]) cylinder(r=8, h=5, center=true);
    }

    hull() {
      translate([-27,-3,0]) cylinder(r=8, h=5, center=true);
      translate([-37,-3, 0]) cylinder(r=8, h=5, center=true);
      translate([-25,6,0]) cylinder(r=8, h=5, center=true);
    }

    hull() {
      translate([-11,7,0]) cylinder(r=4, h=5, center=true);
      translate([-9,-3, 0]) cylinder(r=8, h=5, center=true);
      translate([-1.8,7,0]) cylinder(r=4, h=5, center=true);
      translate([-8,-3, 0]) cylinder(r=8, h=5, center=true);
    }

    color("red") translate([3,12,0]) cylinder(r=1, h=5, center=true);
    color("red") translate([-18,13,0]) cylinder(r=1, h=5, center=true);
  }
}

skid();
translate([0,-30,0]) mirror([0,1,0]) skid();