$fn=150;

motor_diam = 12.1;
printed_diam = 11.66;
final_scale = motor_diam / printed_diam;

module motor() {
  difference() {
    cylinder(r=motor_diam/2, h=20, center=true);
    translate([0,10,0]) color("Orange") cube(size=[20,10,30], center=true);
    translate([0,-10,0]) color("Orange") cube(size=[20,10,30], center=true);
  }
}

module bumper() {
  scale([final_scale, final_scale, final_scale]) {
    difference() {
      union() {
        hull() {
          translate([0,-12,0]) cylinder(r=1.5, h=8, center=true);
          cylinder(r=motor_diam/2 + 1, h=8, center=true);
        }
      }

      motor();

      hull() {
        translate([0.75,4.5,0]) cylinder(r=1.5, h=10, center=true);
        translate([-0.75,4.5,0]) cylinder(r=1.5, h=10, center=true);
      }

      hull() {
        translate([0,3 + (motor_diam/2) + 1 - 1.2,2.5]) cube(size=[20, 10, 8], center=true);
        translate([0,2 + (motor_diam/2) + 0.5 - 5,8]) cube(size=[20, 10, 8], center=true);
      }

      // CF rod hole
      translate([0,-9.5,0]) rotate([90,0,0]) cylinder(r=0.85, h=10, center=true);

      hull() {
        translate([-2.2, -7, 0]) cylinder(r=0.75, h=10, center=true);
        translate([ 2.2, -7, 0]) cylinder(r=0.75, h=10, center=true);
        translate([0,-11, 0]) cylinder(r=1, h=10, center=true);
      }
    }
    difference() {
      translate([0,-8.5,0]) cube(size=[2, 7, 8], center=true);
      translate([0,-8.5,0]) rotate([90,0,0]) cylinder(r=0.85, h=10, center=true);
    }

  }
}



// translate([-10,0,0]) bumper();
// translate([-35,0,0]) bumper();

translate([-10,-22,0]) bumper();
translate([-35,-22,0]) bumper();

