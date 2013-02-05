module teeth() {
  difference() {
    union() {
      for (i = [0 : 2]) {
        rotate(i * 360 / 3, [0,0,1])
        translate([0,0.6,0]) tooth();
      }
    }
    translate([0,0,0]) scroll_back();
  }
}

module tooth() {
  tooth_length = 30;
  difference() {
    union() {
      translate([   0, tooth_length/2, 8]) cube(size=[9.5, tooth_length, 11], center=true);
      translate([-4.6, tooth_length/2, 8]) rotate([0,45,0]) cube(size=[3, tooth_length, 3], center=true);
      translate([ 4.6, tooth_length/2, 8]) rotate([0,45,0]) cube(size=[3, tooth_length, 3], center=true);
    }

    // chamfers
    color("LightSeaGreen") translate([-4.15, -1, 7]) rotate([0,0, 240]) cube(size=[5, 10, 20], center=true);
    color("LightSeaGreen") translate([ 4.15, -1, 7]) rotate([0,0,-240]) cube(size=[5, 10, 20], center=true);
    translate([0,-0.5,0]) scale([1.5,1,1]) cylinder(r=0.75, h=40, center=true, $fn=100);
  }
}