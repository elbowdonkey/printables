$fn=50;

motor_diam = 7.1;
motor_length = 20; // estimate
shaft_diam = 1;
shaft_length = 4.5;

module motor() {
  color("Silver") translate([0,0,shaft_length/2 + motor_length/2]) cylinder(r=shaft_diam/2, h=shaft_length, center=true);
  color("Gray") cylinder(r=motor_diam/2, h=20, center=true);
}

mount_diam = 7.75;
mount_height = 10;

module mount() {
  difference() {
    union() {
      difference() {
        translate([0,0,-mount_height/2]) {
          hull() {
            translate([-5, 1.375, 0]) cylinder(r=1.5, h=mount_height, center=true);
            translate([-5, -1.375, 0]) cylinder(r=1.5, h=mount_height, center=true);
            cylinder(r=mount_diam/2, h=mount_height, center=true);
            translate([8.5-(mount_diam/2), 1.375, 0]) cylinder(r=1.5, h=mount_height, center=true);
            translate([8.5-(mount_diam/2), -1.375, 0]) cylinder(r=1.5, h=mount_height, center=true);
          }
        }

        translate([0,0,-1.2 - 1.5]) cylinder(r=20, h=1.2); // first "fin" is shorter than the rest
        translate([0,0,-1.2 -1.5 -1.2 -1.6]) cylinder(r=20, h=1.2);
        translate([0,0,-1.2 -1.5 -1.2 -1.6 -1.2 -1.6]) cylinder(r=20, h=1.2);

        cylinder(r=2.9, h=10, center=true); // hole for axle
      }
      translate([-5,0,-2.65-2.3]) cube(size=[10, 5.3, 5.3], center=true);
      translate([-3.5,0,-5]) cube(size=[4, 5.3, 8], center=true);
    }
    translate([0,0,-motor_length/2 -0.6]) motor();
  }

}

mount();
