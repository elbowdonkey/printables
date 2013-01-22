include <servo_base.scad>

module servo() {
  translate([-10,-10,-42]) {
    difference() {
      union() {
        //translate([20,10,-0.5]) rotate([0,180,180]) base();
        color("Gray")
        union() {
          translate([ 10,    10,     32.22]) cylinder(h = 3.88, center = false, r=10);
          translate([ 10,    10,     32.22]) cylinder(h = 5.38, center = false, r=6.465); // topmost cylinder
          translate([ 13,    1.125,  32.22]) cube([22.37,17.75,3.88]);
          cube(     [ 40,    20,     33.22]); // main body
          translate([ -2,    10-3.2, 0    ]) cube([3,6.4,3.5]); // wire port
          translate([ -6.38, 0,      26.4 ]) cube([52.76,20,2.5]); // tabs
        }

        color("White")
        translate([10,10,32.22]) cylinder(h = 9.38, center = false, r=2.865); // 41.6 -
      }

      //translate([-5,-5,-1.2]) cube(     [ 50,    30,     4.29]); // base cutout
      translate([-3.3,4.5,26])  cylinder(h = 3.88, center = false, r=1.9);
      translate([-3.3,15.5,26]) cylinder(h = 3.88, center = false, r=1.9);
      translate([43.3,4.5,26])  cylinder(h = 3.88, center = false, r=1.9);
      translate([43.3,15.5,26]) cylinder(h = 3.88, center = false, r=1.9);
    }
  }
}

module servoSingleArm() {
  hole_distance = 1.2;
  hole_radius = 0.7;
  hole_center_distance = (hole_radius * 2) + hole_distance;

  difference() {
    translate([0,-15.5,0])
    hull() {
      cylinder(h = 2, center = true, r=2.4);
      translate([0,15.5,0]) cylinder(h = 2, center = true, r=4.4);
    }

    for ( i = [1 : 3] ) {
      translate([0,-7.14 - (hole_center_distance * i),0]) cylinder(h = 5, center = true, r=hole_radius);
    }
  }
}

module servoFullArm() {
  rotate([0,180,0]) {
    color("White")
    difference() {
      union() {
        for ( i = [1 : 4] ) {
          rotate( i * 360 / 4, [0, 0, 1]) translate([0,0,0]) servoSingleArm();
        }
        translate([0,0,2]) cylinder(h = 2.43, center = true, r=4.4);
        difference() {
          translate([0,0,-1]) cylinder(h = 1.8, center = true, r=3.74);
          translate([0,0,-1]) cylinder(h = 3, center = true, r=2.98);
        }
      }

      translate([0,0,3.88]) cylinder(h = 5, center = true, r=2.65);
      translate([0,0,-1]) cylinder(h = 5, center = true, r=1.35);
    }
  }
}



module servoWithArm() {
  //translate([0,0,0]) servoFullArm();
  translate([0,0,0.5]) slottedHorn();
  servo();
  //translate([10,0,-42.6]) rotate([180,0,0]) base();
}

module servoArmHoles() {
  hole_distance = 1.2;
  screw_radius = 2.5;
  hole_radius = 0.9;
  hole_center_distance = (hole_radius * 2) + hole_distance;

  for ( j = [1 : 4] ) {
    if (j == 1 || j == 3) {
      rotate( j * 360 / 4, [0, 0, 1])
      translate([0,0,0])
      union() {
        for ( i = [1 : 1] ) {
          translate([0,-7.14 - (hole_center_distance * i),0]) cylinder(h = 30, center = true, r=hole_radius);
        }
      }
    }
  }

  for ( j = [1 : 4] ) {
    rotate( j * 360 / 4, [0, 0, 1])
    translate([0,0,0])
    //union() {
      //for ( i = [1 : 3] ) {
        if (j == 1 || j == 3) {
          translate([0,-7.14 - (hole_center_distance),beam_height+1]) cylinder(h = 2, center = true, r1=hole_radius, r2=screw_radius);
        }

      //}
    //}
  }
}

module slottedHorn() {
  rotate([0,180,0]) {
    color("White")
    difference() {
      union() {
        translate([0,0,2]) cylinder(h = 2.89, center = true, r=4.4);
        translate([0,0,-1]) cube([10,10,3.3], center=true);
      }

      translate([0,0,-2.2]) cube([12,10-2.4,3.3], center=true);
    }
  }
}

module gearCover() {
  extra = 1;
  screw_distance = 2.4;
  screw_radius = 0.9;
  lip = 1;
  bearing_height = 11.8;
  wall_thickness = 1.5;

  // outer shell
  difference() {
    union() {
      translate([-10,-10,0]) cube([20,40,bearing_height+1.5]);
    }

    color("Red") translate([-10 + (lip/2),-10 + (lip/2),-0.5]) cube([20-lip,40-lip,1.5]);

    union() {
      translate([0,-0.3,0]) cylinder(h=20, r=3.8); // output shaft
      translate([0,-0.3,0]) cylinder(h=9.85, r=9.1); // main gear
      translate([0,-0.3,0]) cylinder(h=11.84, r=5.3); // bearing area
      translate([0,(30-8.65),0]) cylinder(h=11.25, r=1); // pin hole
      translate([0,(30-17.84),0]) cylinder(h=11.25, r=1);  // pin hole
      hull() {
        translate([0,0,0]) cylinder(h=9.85, r=8.5); // smaller gear a
        translate([0,(29.5-8.65),0]) cylinder(h=9.85, r=8.5); // smaller gear b
      }

      // screw holes
      translate([-10 + screw_distance,-10+screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
      translate([10 - screw_distance,-10+screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
      translate([-10 + screw_distance,30-screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
      translate([10 - screw_distance,30-screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);


    }
  }
}

module bottomCover() {
  extra = 1;
  screw_distance = 2.4;
  side_wall_thickness = 1.5;
  wall_thickness = 1;
  height = 4;
  screw_radius = 1.2;
  fillet_radius = 7;

  difference() {
    translate([-10,-10,0]) cube([20,40,height]);

    //translate([-10+side_wall_thickness/2,-10+side_wall_thickness/2,wall_thickness]) cube([20-side_wall_thickness,40-side_wall_thickness,height-wall_thickness+extra]);
    hull() {
       translate([(-10+side_wall_thickness) + fillet_radius ,(-10+side_wall_thickness) + fillet_radius,wall_thickness]) cylinder(h=7+extra, r=fillet_radius);
       translate([(10-side_wall_thickness) - fillet_radius ,(-10+side_wall_thickness) + fillet_radius,wall_thickness]) cylinder(h=7+extra, r=fillet_radius);

       translate([(-10+side_wall_thickness) + fillet_radius ,(30-side_wall_thickness) - fillet_radius,wall_thickness]) cylinder(h=7+extra, r=fillet_radius);
       translate([(10-side_wall_thickness) - fillet_radius ,(30-side_wall_thickness) - fillet_radius,wall_thickness]) cylinder(h=7+extra, r=fillet_radius);
    }

    translate([-10 + screw_distance,-10+screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
    translate([10 - screw_distance,-10+screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
    translate([-10 + screw_distance,30-screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
    translate([10 - screw_distance,30-screw_distance,-extra]) cylinder(h=7+extra, r=screw_radius);
    color("Red") translate([-2,20,3]) cube([4,20,3]);
  }



}