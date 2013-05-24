$fn=100;

module cap() {
  difference() {
    union() {
      translate([0,0,-3]) cube(size=[22.93, 12.02, 5.72+3]);
      // translate([22.93,(12.02 - 4.61)/2,5.72-1.75]) cube(size=[1, 4.61, 1.75]);
    }

    // main hollow
    translate([0.96, 1, 1]) cube(size=[22.93-0.96-1, 10.02, 5.72]);

    // wire path
    translate([20,(12.02 - 3.5)/2,5.72-1]) cube(size=[5, 3.5, 1.1]);

    // screw holes
    translate([1.215,1.51,-10]) {
      cylinder(r=0.5, h=20);
      translate([20.5,0,0]) cylinder(r=0.5, h=20);
      translate([20.5,9,0]) cylinder(r=0.5, h=20);
      translate([0,9,0]) cylinder(r=0.5, h=20);
    }


    // screw head clearance
    translate([1.215,1.51,-4]) {
      translate([-0.3,-0.3,0]) cylinder(r=1.8, h=4);
      translate([20.5+0.3,-0.3,0]) cylinder(r=1.8, h=4);
      translate([20.5+0.3,9+0.3,0]) cylinder(r=1.8, h=4);
      translate([-0.3,9+0.3,0]) cylinder(r=1.8, h=4);
    }

    // motor contact clearance
    translate([2.5,1,1-0.44]) cube(size=[4.18, 2.6, 2]);
    translate([2.5,12.02-1-2.6,1-0.44]) cube(size=[4.18, 2.6, 2]);

    // bearing hole
    translate([22.93-5.96,12.02-5.96,-4]) cylinder(r=4.2, h=4);
  }

  difference() {
      union() {
        // screw holes
        translate([1.215,1.51,1]) {
          cylinder(r=0.9, h=4.72);
          translate([20.5,0,0]) cylinder(r=0.9, h=4.72);
          translate([20.5,9,0]) cylinder(r=0.9, h=4.72);
          translate([0,9,0]) cylinder(r=0.9, h=4.72);
        }
      }
      // screw holes
      translate([1.215,1.51,-10]) {
        cylinder(r=0.5, h=20);
        translate([20.5,0,0]) cylinder(r=0.5, h=20);
        translate([20.5,9,0]) cylinder(r=0.5, h=20);
        translate([0,9,0]) cylinder(r=0.5, h=20);
      }
    }

  difference() {
    translate([4.68,12.02/2,1]) cylinder(r=1.585, h=1, center=true);
    translate([4.68,12.02/2,1]) cylinder(r=1.25, h=1.1, center=true);
  }
}

cap();
translate([25,0,0]) cap();