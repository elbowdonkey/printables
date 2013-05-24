$fn = 100;

module right() {
  difference() {
    cube(size=[25, 25, 25]);
    translate([2.5,-2.5,2.5]) cube(size=[25, 25, 25]);
  }

  difference() {
    hull() {
      translate([12.5,35,0]) cylinder(r=12.5, h=2.5);
      translate([12.5,0,0]) cylinder(r=12.5, h=2.5);
    }
    translate([12.5, 35, -1]) cylinder(r=1.75, h=50);
  }
}

translate([2,0,0]) right();
mirror([1,0,0]) {
  right();
}


