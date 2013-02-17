module coupler () {
  difference() {
    rotate([90,0,0]) cylinder(r=10, h=30, center=true);
    translate([0,8.5,0]) rotate([90,0,0]) cylinder(r=7, h=14, center=true);
    translate([0,-8.5,0]) rotate([90,0,0]) cylinder(r=shaft_diam/2, h=50, center=true, $fn=20);
    translate([0,-2,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
    translate([0,-10,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
    rotate([0,90,0]) translate([0,-2,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
    rotate([0,90,0]) translate([0,-10,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
  }

  translate([0,15,0]) rotate([90,0,0]) lead_threads();
}