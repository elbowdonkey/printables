$fn=20;

stud_diam = 3.08 + (0.9 * 2);
stud_height = 2;
head_diam = 10.11;
head_height = 8.36;
neck_diam = 6.52;
neck_height = 1.21;
head_curve_radius = 1.75;


module head() {
  translate([0,0,-stud_height]) cylinder(r=stud_diam/2, h=stud_height);

  translate([0,0,-(head_curve_radius + stud_height)])
  hull() {
    rotate_extrude(convexity = 10)
    translate([(head_diam/2) - head_curve_radius, 0, 0])
    circle(r = head_curve_radius);

    translate([0,0,-(head_height - (head_curve_radius*2))])
    rotate_extrude(convexity = 10)
    translate([(head_diam/2) - head_curve_radius, 0, 0])
    circle(r = head_curve_radius);
  }

  translate([0,0,-(stud_height + head_height + neck_height)]) cylinder(r=neck_diam/2, h=neck_height);
}