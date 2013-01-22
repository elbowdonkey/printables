$fn=100;

support_angle = 18;

// translate([0,-70,25]) {
//   difference() {
//     translate([0,0,0])
//     hull() {
//       translate([ 3, 0, 0]) cylinder( r=1.8, h=4.4, center=true);
//       translate([ 0, -3, 0]) cylinder(r=1.8, h=4.4, center=true);
//       translate([-3, 0, 0]) cylinder( r=1.8, h=4.4, center=true);
//     }
//     rotate([90,0,0]) cylinder(r=1.8, h=10, center=true);
//     color("Gray") translate([-3,0,0]) rotate([90-support_angle, 0,  7])  translate([0,0,-30]) cylinder(r=0.815, h=80, center=true);
//     color("Gray") translate([3,0,0])  rotate([90-support_angle, 0, -7]) translate([0,0,-30]) cylinder(r=0.815, h=80, center=true);
//   }

// }


difference() {
  hull() {
    translate([ 11.75, 0, 1.4]) cylinder(r=1.5, h=4, center=true);
    translate([ 0, -1, 1.4]) cylinder(r=1.5, h=4, center=true);
    translate([ 0, 2, 1.4]) cylinder(r=1.5, h=4, center=true);
    translate([-11.75, 0, 1.4]) cylinder(r=1.5, h=4, center=true);
  }
  translate([ 0, 0, 0]) cylinder(r=1.325, h=20, center=true);
  translate([0,-70,25]) {
    color("Gray") translate([-3,0,0]) rotate([90-support_angle, 0,  7])  translate([0,0,-40]) cylinder(r=0.815, h=80, center=true);
    color("Gray") translate([3,0,0])  rotate([90-support_angle, 0, -7]) translate([0,0,-40]) cylinder(r=0.815, h=80, center=true);
  }
  rotate([90,0,0]) translate([4.48, -0.2, -4.2]) cylinder(r=1, h=10, center=true);
  rotate([90,0,0]) translate([-4.48, -0.2, -4.2]) cylinder(r=1, h=10, center=true);
  rotate([90,0,90]) cylinder(r=1, h=23, center=true);
  translate([0, 0, 21]) rotate([90,0,0]) translate([0, 0, 0]) cylinder(r=20, h=10, center=true);
}






// 4.75

