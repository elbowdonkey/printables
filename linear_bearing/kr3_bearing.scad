$fn=100;

layer_thickness = 0.20;
width_in_studs = 3;
length_in_studs = 14;

main_hole_diam = 13.2;

brick_height = 9.64;
brick_width = 7.96;
stud_diameter = 4.88;
stud_height = 1.82;
plate_height = brick_height/3;
wall_thickness = 1.23;
height_in_plates = 1;
tooth_base_width = 2.3;
tooth_tip_width = 0.5;
tooth_height = 2.06;
tooth_top = 5.79;
tooth_tip_radius = 0.15;
teeth_per_brick = 2.5;
half_pegs_per_brick = 2;
gap_width = 0.884;

peg_diam = 3.05;
inner_peg_diam = 1.51;

module tooth() {
  //render()
  x_a = -((tooth_tip_width/2) - tooth_tip_radius);
  x_b = (tooth_tip_width/2) - tooth_tip_radius;
  //translate([(gap_width+tooth_base_width)/2,0,0.65])
  rotate([180,0,0])
  translate([0,-(brick_width * width_in_studs)/2,0]) {
    difference() {
      hull() {
        translate([0,0,tooth_height]) rotate([90,0,0]) cylinder(r=tooth_tip_radius, h=(brick_width * width_in_studs), center=true);
        translate([0,0,tooth_height]) rotate([90,0,0]) cylinder(r=tooth_tip_radius, h=(brick_width * width_in_studs), center=true);
        translate([0,0,0]) rotate([90,0,0]) cylinder(r=tooth_base_width/2, h=(brick_width * width_in_studs), center=true);
      }
      //translate([0,0,-1]) cube(size=[gap_width + tooth_base_width, brick_width * width_in_studs + 1, 1.9], center=true);
    }
  }
}

for (i = [0:20]) {
   rotate([90,0,i*360/20]) translate([0,0,(main_hole_diam/2) + tooth_height]) tooth();
}

difference() {
  translate([0,0,(brick_width * width_in_studs)/2]) cylinder(r=main_hole_diam/2 + tooth_height*2, h=(brick_width * width_in_studs), center=true);
  translate([0,0,(brick_width * width_in_studs)/2]) cylinder(r=main_hole_diam/2 + tooth_height, h=(brick_width * width_in_studs) + 1, center=true);
}

color("Red")
translate([5,0,0])
difference() {
  translate([5,0,(brick_width * width_in_studs)/2]) cube(size=[15, 18, (brick_width * width_in_studs)], center=true);
  translate([-5,0,  ((brick_width * width_in_studs)+1)/2]) cylinder(r=9.8,   h=(brick_width * width_in_studs)+3, center=true);

  translate([11.1,6, (((brick_width * width_in_studs)+1)/2) + 8]) rotate([0,90,0]) cylinder(r=1.5, h=6, center=true);
  translate([11.1,-6,(((brick_width * width_in_studs)+1)/2) + 8]) rotate([0,90,0]) cylinder(r=1.5, h=6, center=true);
  translate([11.1,6, (((brick_width * width_in_studs)-1)/2) - 8]) rotate([0,90,0]) cylinder(r=1.5, h=6, center=true);
  translate([11.1,-6,(((brick_width * width_in_studs)-1)/2) - 8]) rotate([0,90,0]) cylinder(r=1.5, h=6, center=true);
}