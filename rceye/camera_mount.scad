$fn = 100;

screw_diam = 1.6;
heads = 3.3;

w = 11.33;
l = 31.52;
h = 4.65;
screw_head_height = 12;

module screws() {
  translate([l/2, w/2,  (h/2) + (screw_head_height/2) - 0.1])  cylinder(r=heads/2,h=screw_head_height, center=true);
  translate([l/2,-w/2,  (h/2) + (screw_head_height/2) - 0.1])  cylinder(r=heads/2,h=screw_head_height, center=true);
  translate([-l/2, w/2, (h/2) + (screw_head_height/2) - 0.1]) cylinder(r=heads/2, h=screw_head_height, center=true);
  translate([-l/2,-w/2, (h/2) + (screw_head_height/2) - 0.1]) cylinder(r=heads/2, h=screw_head_height, center=true);

  translate([l/2, w/2, 0])  cylinder(r=screw_diam/2, h=h, center=true);
  translate([l/2,-w/2, 0])  cylinder(r=screw_diam/2, h=h, center=true);
  translate([-l/2, w/2, 0]) cylinder(r=screw_diam/2, h=h, center=true);
  translate([-l/2,-w/2, 0]) cylinder(r=screw_diam/2, h=h, center=true);
}


module sled() {
  translate([l/2,  w/2,  2])  cylinder(r2=screw_diam/2 + 2, r1=(screw_diam/2) + 0.6, h=4, center=true);
  translate([l/2, -w/2,  2])  cylinder(r2=screw_diam/2 + 2, r1=(screw_diam/2) + 0.6, h=4, center=true);
  translate([-l/2, w/2, 2])  cylinder(r2=screw_diam/2 + 2, r1=(screw_diam/2) + 0.6, h=4, center=true);
  translate([-l/2,-w/2, 2])  cylinder(r2=screw_diam/2 + 2, r1=(screw_diam/2) + 0.6, h=4, center=true);

  translate([l/2, 0, 3]) cube(size=[1.2, w, 2], center=true);
  translate([-l/2, 0, 3]) cube(size=[1.2, w, 2], center=true);

  translate([0, w/2, 3]) cube(size=[l, 1.2, 2], center=true);
  translate([0, -w/2, 3]) cube(size=[l, 1.2, 2], center=true);


  difference() {
    hull() {
      translate([ l/2 + 4,  w/2,  4]) cylinder(r=screw_diam/2 + 3, h=1, center=true);
      translate([ l/2 + 4, -w/2,  4]) cylinder(r=screw_diam/2 + 3, h=1, center=true);
      translate([-l/2 - 4, w/2, 4])   cylinder(r=screw_diam/2 + 3, h=1, center=true);
      translate([-l/2 - 4,-w/2, 4])   cylinder(r=screw_diam/2 + 3, h=1, center=true);
    }
    hull() {
      translate([l/2 - 4, 0,  4])  cylinder(r=screw_diam/2 + 2, h=2, center=true);
      translate([-l/2 + 4,0,  4])  cylinder(r=screw_diam/2 + 2, h=2, center=true);
    }

    translate([l/2 +  5, w/2, 0])  cylinder(r=screw_diam/2, h=30, center=true);
    translate([l/2 +  5,-w/2, 0])  cylinder(r=screw_diam/2, h=30, center=true);
    translate([-l/2 - 5, w/2, 0]) cylinder(r=screw_diam/2, h=30, center=true);
    translate([-l/2 - 5,-w/2, 0]) cylinder(r=screw_diam/2, h=30, center=true);

  }
}

difference() {
  sled();
  screws();
}
