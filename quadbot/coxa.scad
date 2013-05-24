$fn=60;

module coxa() {
  difference() {
    union() {
      cube(size=[33.18+8, 26, 11.75]);
      cube(size=[33.18+8, 41, 6]);
    }
    translate([4,-1,-1]) cube(size=[31.88, 22, 15]);
    color("Blue") translate([(33.18+8-23.4)/2,26.06,-1]) cube(size=[23.4, 12.2, 10]);

    translate([(33.18+8-28.7)/2,26+(15/2) - 1,0]) {
      translate([0,0,-1]) cylinder(r=1, h=20);
      translate([28.7,0,-1]) cylinder(r=1, h=20);
    }
    hull() {
      translate([-1,18,5.875]) rotate([0,90,0]) cylinder(r=3, h=3.4);
      translate([-1,5.5,5.875]) rotate([0,90,0]) cylinder(r=3.68, h=3.4);
    }
    translate([-1,5.5,5.875]) rotate([0,90,0]) cylinder(r=3.68, h=13.5);
  }

  translate([30.88+8-3.5-2,5.5,5.875]) rotate([0,90,0]) cylinder(r=1.45, h=3.5);
}


coxa();

translate([8,20,0])  mirror([0,1,0]) coxa();






