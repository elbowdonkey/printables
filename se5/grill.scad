// 0.27 layer height
width = 9.48;
height = 21.45;
depth = 0.81;

module slat() {
  cube(size=[width, height, depth], center=true);

  difference() {
    union() {
      for (i = [-6.5 : 6.5]) {
        translate([0,i*1.51,0]) rotate([-10,0,0]) cube(size=[width, 1.51, 1], center=true);
      }
    }
    translate([0,0,-(5 + depth/2)]) cube(size=[10, 25, 10], center=true);
  }
}





slat();
translate([12,0,0]) slat();