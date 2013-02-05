// using the rendered STL:
module scroll_back() {
  //diamond_threads();
  square_threads();
}

module square_threads() {
  difference() {
    translate([0,0,-5]) scale([1,1,2]) import("compiled_square_spiral.stl");
    translate([0,0,-5]) cube(size=[60, 60, 10], center=true);
  }

}

module diamond_threads() {
  import("compiled_diamond_spiral.stl");
}

// module thread_stopper() {
//   color("Blue")
//   difference() {
//     difference() {
//       translate([0,0,0]) cylinder(r=80, h=10, center=true, $fn=100);
//       translate([0,0,0]) cylinder(r=36.4, h=11, center=true, $fn=100);
//     }
//     color("Red") translate([50,0,0]) cube(size=[100, 200, 12], center=true);
//     color("Red") translate([0,50,0]) cube(size=[200, 100, 12], center=true);
//   }

// }

// module scroll_back() {
//   difference() {
//     scale([0.03, 0.03, 0.03]) import("spiral.stl");
//     difference() {
//       translate([0,0,0]) cylinder(r=80, h=40, center=true, $fn=100);
//       translate([0,0,0]) cylinder(r=36.4, h=50, center=true, $fn=100);
//     }
//     translate([0,0,0]) cylinder(r=19, h=50, center=true, $fn=100);
//     translate([0,-1,0]) rotate([0,0,-90]) thread_stopper();
//     translate([0,1,0])
//     difference() {
//       cylinder(r=19, h=15, center=true, $fn=100);
//       translate([-10,0,0]) cube(size=[20, 40, 16], center=true);
//       translate([0,-10,0]) cube(size=[40, 20, 16], center=true);
//     }
//   }
// }