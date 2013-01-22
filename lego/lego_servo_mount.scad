include <mybeam.scad>
include <servo.scad>

$fn=100;

module beefyArm() {
  horn_width = beam_width * 3;
  horn_length = (beam_hole_length * 3) + 1;
  length = 7;
  width = 3;
  height = 2;

  l = 2;
  w = 2;

  xa = 0 - (l/2);
  xb = (l/2);
  ya = 0 - (w/2);
  yb = (w/2);

  difference() {
    union() {
      color("Orange") translate([beam_hole_length,0,(beam_height/2)]) plate(l=length,w=width,h=height);
      color("Red") translate([0,0,(beam_height/2)]) cube([3*beam_hole_length,width*beam_width,height*beam_height], center=true);
    }

    color("Red") translate([0,0,-5]) cube([3*beam_hole_length,width*10,10], center=true);
    cylinder(h=25,r=5, center=true);

    for (x=[xa:xb]) {
      for (y=[ya:yb]) {
        if (y != 0) {
          translate([x * beam_hole_length, y * beam_hole_length, 0]) axle_hole(length=beam_height);
        }

      }
    }
    servoArmHoles();
  }
}

module altArm() {
  horn_width = beam_width * 3;
  horn_length = (beam_hole_length * 4);
  length = 3;
  width = 3;
  height = 2;

  l = 2;
  w = 2;

  xa = 0 - (l/2);
  xb = (l/2);
  ya = 0 - (w/2);
  yb = (w/2);

  difference() {
    union() {
      //color("Orange") translate([0,0,(beam_height/2)]) plate(l=length,w=width,h=height);
      cylinder(h=beam_height*2, r=horn_length/2-1, center=true);
      //color("Red") translate([0,0,(beam_height/2)]) cube([3*beam_hole_length,width*beam_width,height*beam_height], center=true);
    }
    slottedHorn();
    //translate([0,0,-5]) scale([1,1,10]) slottedHorn();

    color("Red") translate([0,0,-4.4]) cube([11,11,10], center=true);
    cylinder(h=25,r=1.5, center=true);

    for (x=[xa:xb]) {
      for (y=[ya:yb]) {
        if ((x < 0 || x > 0) || (y < 0 || y > 0)) {
          translate([x * beam_hole_length, y * beam_hole_length, 0]) axle_hole(length=beam_height);
        }
      }
    }
    //servoArmHoles();
  }
}

module servoBase() {
  length = 7;
  width = 3;
  height = 2;
  server_bottom_z_pos = -42;

  difference() {
    union() {
      difference() {
        translate([10,0,server_bottom_z_pos]) rotate([180,0,0]) base();
        translate([beam_hole_length,0,(-beam_height * 12) - (beam_height/2)]) cube([length*beam_hole_length,width*beam_hole_length,height*beam_height], center=true);
      }
      translate([beam_hole_length,0,(-beam_height * 12) - (beam_height/2)]) plate(l=length,w=width,h=height);

      translate([-beam_hole_length*2,0,(-beam_height * 6) - (beam_height/2)]) altPlate(l=1,w=3,h=12);
      translate([beam_hole_length*4,0,(-beam_height * 6) - (beam_height/2)]) altPlate(l=1,w=3,h=12);

      translate([beam_hole_length,0,0]) plate(l=length,w=width,h=2);
    }

    for (pos  = drill_table) {
      translate([10,0,-46]) {
        color("White")
        translate(pos)
        cylinder(r=3.8/2, h=10, center=true);
      }
    }

    cylinder(h=beam_height*4, r=beam_hole_length * 2, center=true);

    // translate([beam_hole_length*4,beam_hole_length,-55]) rotate([90,0,0]) axle(10);
    // translate([beam_hole_length*4,0,-55]) rotate([90,0,0]) axle(10);
    // translate([beam_hole_length*4,-beam_hole_length,-55]) rotate([90,0,0]) axle(10);
  }
}

//translate([0,0,-1]) servoWithArm();
// //beefyArm();
// altArm();
// difference() {
//   servoBase();

//   color("Red") translate([(beam_hole_length*3) + 2,0,(-beam_height * 7) - (beam_height/2) + 1.3]) cube([beam_width, 30, beam_height*7], center=true);
//   color("Red") translate([-10,0,-beam_height*11]) cube([30,4,3], center=true);
//   color("Red") translate([-17,0,-beam_height*11]) cube([10,8.5,3], center=true);

//   // color("Green")
//   // translate([beam_hole_length,0,(-beam_height * 2) - 4.5])
//   // cube([7*beam_hole_length,5*beam_hole_length,2*beam_height], center=true);
// }


altArm();

// TOP 6
// color("Orange") translate([0,0,-18]) rotate([0,0,-90]) gearCover();

// difference() {
//   union() {
//     translate([-11,11,-17.7]) rotate([0,0,-90]) cube([22,42,11.8+1.5]);
//     translate([beam_hole_length + (beam_hole_length/2),0,-beam_hole_length]) plate(l=8,w=3,h=2); // bottom plate
//   }

//   translate([-10,10,-18]) rotate([0,0,-90]) cube([20,40,11.8+1.5]);
//   translate([-0.3,0,-30]) cylinder(h=30, r=3.8); // output shaft
// }
//



//translate([0,0,-1]) servoWithArm();

//translate([0,0,-44]) rotate([0,0,-90]) bottomCover();


// difference() {
//   union() {
//     color("Orange") translate([0,0,-18]) rotate([0,0,-90]) gearCover();
//     difference() {
//       union() {

//         color("Green") translate([10,-10,-5]) cube([20,20,5]);
//         color("Green") translate([-13,-10,-45]) cube([3,20,44]);
//         color("Green") translate([-10,-10,-45]) cube([40,20,1]);
//         color("Red") translate([beam_hole_length*4,0,0]) cube([beam_height*2,beam_hole_length*3-0.6,beam_height*2], center=true);
//         color("Red") translate([-beam_hole_length*2,0,0]) cube([beam_height*2,beam_hole_length*3-0.6,beam_height*2], center=true);



//         rotate([0,90,0]) translate([beam_hole_length*3,0,-(beam_hole_length*2)]) plate(l=7,w=3,h=2);
//         rotate([0,90,0]) translate([beam_hole_length*3,0,(beam_hole_length*4)]) plate(l=7,w=3,h=2);
//         translate([beam_hole_length,0,0]) plate(l=7,w=3,h=2); // top plate
//         //translate([beam_hole_length,0,-beam_hole_length*6]) plate(l=7,w=3,h=2); // bottom plate
//       }

//       // translate([-beam_hole_length*2,-10,0]) rotate([90,0,0]) axle_hole(length=12);
//       // translate([beam_hole_length*4,-10,0]) rotate([90,0,0]) axle_hole(length=12);
//       color("Green") translate([28,-10,-44]) cube([2,20,40]);
//       translate([0,0,0.5]) cylinder(h=beam_height*2+3, r=(beam_hole_length * 4)/2, center=true);
//     }
//   }
//   color("Red") translate([0,0,-50]) cube([100,100,20], center=true);
// }