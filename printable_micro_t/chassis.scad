// use <ruler.scad>
// %ruler(length = 50, t=[-(23.65/2)-0.2,-25,0], r=[0,0,0]);
//$fn=100;

scale_from_sw = 1770;
estimated_wall_thickness = 1.93;
floor_height = 3;

translate([0,-70,13.8]) rotate([90,0,0]) import("chassis_r.stl");

// difference() {
//   rotate([0,0,180]) {
//     difference() {
//       union() {
//         translate([0,-70,13.8]) rotate([90,0,0]) import("chassis_r.stl");
//         color("Blue") translate([20,-86,1]) cube([10,20,floor_height], center=true);
//       }
//       color("Pink") translate([0,-110.65,16.9]) cube([15,22,30], center=true);

//     }
//   }
//   color ("Cyan") translate([-42,0,-1]) cube([20,120,30]);
//   color ("Cyan") translate([-25,29,-1]) cube([60,81,30]);
//   color ("Cyan") translate([22,0,-1]) cube([20,120,30]);
// }

// rotate([0,0,180]) {
//   color("Orange")
//   hull() {
//     translate([0,-90,  (floor_height/2) + 0.09]) cube([44,41,floor_height], center=true);
//     translate([0,-32,  (floor_height/2) + 0.09]) cube([60,10,floor_height], center=true);
//     translate([0,-28,  (floor_height/2) + 0.09]) cube([30,10,floor_height], center=true);
//     translate([-29,-32,(floor_height/2) + 0.09])  cylinder(r=5, h=floor_height, center=true);
//     translate([29, -32,(floor_height/2) + 0.09])  cylinder(r=5, h=floor_height, center=true);
//   }
// }

// difference() {
//   union() {
//     color("DarkGrey") translate([20,26,floor_height-1])  cube([2,84,22]);
//     color("DarkGrey") translate([-22,26,floor_height-1]) cube([2,84,22]);

//     color("DarkGrey") translate([20,26,floor_height-1])  rotate([0,0,30]) cube([2,84,22]);
//     color("DarkGrey") translate([-22,26,floor_height-1])  rotate([0,0,-30]) cube([2,84,22]);
//   }

//   color("Green")
//   hull() {
//     translate([-25,2,floor_height+80]) rotate([0,90,0]) cylinder(r=10, h=60);
//     translate([-25,145,floor_height+80]) rotate([0,90,0]) cylinder(r=10, h=60);
//     translate([-25,42,floor_height+14]) rotate([0,90,0]) cylinder(r=10, h=60);
//     translate([-25,94,floor_height+14]) rotate([0,90,0]) cylinder(r=10, h=60);
//   }
// }

//translate([0,-11,0]) color("Red") cube(size=[23.65, 23.65, 23.65], center=true); // sizing standard (the rear end of the chassis should be the same width)