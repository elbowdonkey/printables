$fn=100;

ball_diam = 5.33;
thick_length = 33.54;
ball_distance = 46.05;
narrow_length = 5;


rotate([90,0,90]) cylinder(r=2, h=thick_length, center=true);

translate([ (thick_length/2) + (narrow_length/2),0,0]) rotate([90,0,90]) cylinder(r1=2, r2=1.64, h=narrow_length, center=true);
translate([-(thick_length/2) - (narrow_length/2),0,0]) rotate([90,0,90]) cylinder(r1=1.64, r2=2, h=narrow_length, center=true);

difference() {
  union() {
    translate([ ball_distance/2,0,0]) sphere(r=ball_diam/2, center=true);
    translate([-ball_distance/2,0,0]) sphere(r=ball_diam/2, center=true);
  }
  translate([-ball_distance/2,0,0]) cylinder(r=0.95, h=10, center=true);
  translate([ ball_distance/2,0,0]) cylinder(r=0.95, h=10, center=true);
}
