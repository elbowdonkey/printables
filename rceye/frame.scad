$fn=100;

center_diam = 48;
arm_length = 27;
arm_diam = 8;
mount_outer_diam = 14.30;
mount_height = 9.83;
motor_diam = 12.1;

mount_shaft_diam = 7.2;
mount_shaft_length = 13;


module motor() {
  bump_width = 9.14;
  rotate([0,0,90])
  translate([0,0,mount_height/2])
  union() {
    difference() {
      translate([0,0,-mount_height/2]) cylinder(r=mount_outer_diam/2, h=mount_height, center=true);
      translate([0,-10 - 1.3,0]) cube(size=[20, 10, 30], center=true);
    }


    difference() {
      translate([0,1.7,-mount_height/2]) cylinder(r=mount_outer_diam/2, h=mount_height, center=true);
      translate([bump_width/2 + 5, 0, -4]) cube(size=[10, 20, 20], center=true);
      translate([-bump_width/2 - 5, 0, -4]) cube(size=[10, 20, 20], center=true);
    }

    difference() {
      translate([0,mount_shaft_length/2 + 1.7 + mount_outer_diam/2 - 2,-mount_height/2]) rotate([90,0,0]) cylinder(r=mount_shaft_diam/2, h=mount_shaft_length + 4, center=true);
      translate([0,1.7 + mount_outer_diam/2 + 2.98 + 0.85,0]) cylinder(r=0.85, h=20, center=true);
    }

    difference() {
      union() {
        translate([0,0,-10]) cylinder(r=motor_diam/2, h=20, center=true);
      }
      translate([0,10,-10]) color("Orange") cube(size=[20,10,30], center=true);
      translate([0,-10,-10]) color("Orange") cube(size=[20,10,30], center=true);
    }
  }
}

module center() {
  difference() {
    union() {
      // rotate_extrude(convexity = 10, $fn = 100)
      // translate([18, 0, 0])
      // circle(r = 4, $fn = 100);

      difference() {
        union() {
          rotate_extrude(convexity = 10, $fn = 100)
          translate([21, 0, 0])
          circle(r = 4, $fn = 100);
          cylinder(r=21, h=8, center=true);
        }


        // hull() {
        //   translate([0,22, 0]) cylinder(r=1.875, h=8, center=true);
        //   translate([0,-22,0]) cylinder(r=1.875, h=8, center=true);
        //   translate([22,0, 0]) cylinder(r=1.875, h=8, center=true);
        //   translate([-22,0,0]) cylinder(r=1.875, h=8, center=true);
        // }

        translate([12,12,4]) cylinder(r=0.65, h=8, center=true);
      }
    }

    union() {
      translate([0,0,4]) cylinder(r=17, h=8, center=true);
      translate([0,0,4])
      rotate_extrude(convexity = 10, $fn = 100)
      translate([17, 0, 0])
      circle(r = 4, $fn = 100);
    }

    translate([0,0,3]) cylinder(r=8, h=8, center=true);


    // hull() {
    //   translate([0,16, 3]) cylinder(r=2, h=10, center=true);
    //   translate([0,-16,3]) cylinder(r=2, h=10, center=true);
    //   translate([16,0, 3]) cylinder(r=2, h=10, center=true);
    //   translate([-16,0,3]) cylinder(r=2, h=10, center=true);
    // }

    rotate([0,0,45]) translate([0,10.5,0]) cube(size=[10, 1, 20], center=true);
    rotate([0,0,45]) translate([0,-10.5,0]) cube(size=[10, 1, 20], center=true);
    //cylinder(r=3, h=10, center=true);
    rotate([0,90,0]) cylinder(r=1, h=200, center=true);
    rotate([0,90,90]) cylinder(r=1, h=200, center=true);

    rotate([0,0,-45]) translate([-16,0,0]) cube(size=[6.6, 13.6, 10], center=true);
    rotate([0,0,135]) translate([-16,0,0]) cube(size=[6.6, 13.6, 10], center=true);

  }

  difference() {
    union() {
      translate([12,12,0]) cylinder(r1=2, r2=2, h=8, center=true);
      translate([0,-12,0]) cylinder(r1=2, r2=2, h=8, center=true);
      translate([-12,0,0]) cylinder(r1=2, r2=2, h=8, center=true);
    }

    translate([12,12,4]) cylinder(r=0.35, h=8, center=true);
    translate([0,-12,4]) cylinder(r=0.35, h=8, center=true);
    translate([-12,0,4]) cylinder(r=0.35, h=8, center=true);

  }




// battery
//rotate([0,0,45]) translate([0,0,-11.5]) cube(size=[40, 20, 15], center=true);

}

module circuit_board() {
  color([0, 255, 0, 0.1]) cylinder(r=23, h=1, center=true);
}

module motor_mount() {
  cylinder(r=mount_outer_diam/2, h=arm_diam, center=true);
}

module arm() {

  // cube(size=[arm_diam, arm_diam, arm_length + 6], center=true);
  difference() {
    translate([(arm_length/2) + (center_diam/2) - 1.5,0,0]) rotate([0,90,0]) cylinder(r=arm_diam/2, h=arm_length+3, center=true);
    translate([(arm_length/2) + (mount_shaft_length/2)  + (center_diam/2) + 1,0,0]) rotate([0,90,0]) cylinder(r=mount_shaft_diam/2, h=mount_shaft_length+1, center=true);
    rotate([0,90,0]) cylinder(r=1, h=100, center=true);
  }

  //translate([arm_length + (center_diam/2) + (mount_outer_diam/2),0,0]) motor();
}

// motor();
// translate([0,0,5]) circuit_board();

center();

for ( i = [0 : 3] ) {
  rotate(i * 360 / 4 , [0, 0, 1]) arm();
}