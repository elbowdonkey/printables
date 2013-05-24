$fn=100;

difference() {
  union() {
    cube(size=[1.5, 70.68, 31.50]);
    translate([-5,15,0]) cube(size=[20, 1.5, 31.50]);
    translate([-5,70.68 - 15 - 1.5,0]) cube(size=[20, 1.5, 31.50]);
    translate([0,10,31.5]) cube(size=[40, 50.68, 1.5]);

    hull() {
      translate([0,10,31.5]) cylinder(r=10, h=1.5);
      translate([30,10,31.5]) cylinder(r=10, h=1.5);
      translate([0,60.68,31.5]) cylinder(r=10, h=1.5);
      translate([30,60.68,31.5]) cylinder(r=10, h=1.5);
    }
  }
  translate([30,13.52,0]) cylinder(r=1.75, h=50);
  translate([30,70.68 - 13.52, 0]) cylinder(r=1.75, h=50);

  translate([5,0,0]) rotate([0,30,0]) cube(size=[31.50, 70.68, 36]);

  // translate([-11,-40,0]) cube(size=[50, 40, 40]);
  // translate([-11,70.68,0]) cube(size=[50, 40, 40]);
}



