module coupler_side() {
  difference() {
    union() {
      acme_thread();
      translate([0,10,0]) rotate([90,0,0]) cylinder(r=10, h=10, center=true, $fn=100);
      translate([0,15,0]) rotate([90,0,0]) cylinder(r=15, h=2, center=true, $fn=100);
    }
    rotate([90,0,0]) cylinder(r=2.22, h=40, center=true, $fn=100);
    translate([0,10,0]) cylinder(r=1.5, h=40, center=true, $fn=100);
  }
}

module acme_thread() {
  render() {
    difference() {
      translate([0,-5,0]) rotate([90,0,0]) cylinder(r=8, h=20, center=true, $fn=100);
      translate([0,-8,0]) scale([0.99, 0.99, 0.99]) coupler();
      translate([0,-11.7,0]) color("red") cube(size=[20, 20, 20], center=true);
    }
  }
}

module cap() {
  difference() {
    union() {
      translate([0,10,0]) rotate([90,0,0]) cylinder(r=10, h=10, center=true, $fn=100);
      translate([0,15,0]) rotate([90,0,0]) cylinder(r=15, h=2, center=true, $fn=100);
    }
    translate([0,10,0]) cylinder(r=1.5, h=40, center=true, $fn=100);
    rotate([90,0,0]) cylinder(r=2.22, h=40, center=true, $fn=100);
  }
}

module bobbin() {
  coupler_side();
  translate([0,40,0]) rotate([180,0,0]) cap();
}

module bobbin2() {
  difference() {
    union() {
      rotate([90,0,0]) cylinder(r=10, h=60, center=true, $fn=180);
      translate([0,32.5, 0]) rotate([90,0,0]) cylinder(r1=15, r2=10, h=5, center=true, $fn=180);
      translate([0,37.5, 0]) rotate([90,0,0]) cylinder(r=15, h=5, center=true, $fn=180);
      // translate([0,37.5, 0]) rotate([90,0,0]) cylinder(r1=10, r2=15, h=5, center=true, $fn=100);
    }

    translate([0,-21,0]) rotate([90,0,0]) cylinder(r=shaft_diam/2, h=20, center=true, $fn=100);
    rotate([90,0,0]) cylinder(r=2.35, h=100, center=true, $fn=100);

    rotate([0,90,0]) translate([0,-14,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
    rotate([0,90,0]) translate([0,-22,0]) cylinder(r=1.5, h=20, center=true, $fn=20);

    rotate([0,90,0]) translate([0,16,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
    rotate([0,90,0]) translate([0,24,0]) cylinder(r=1.5, h=20, center=true, $fn=20);
  }
}