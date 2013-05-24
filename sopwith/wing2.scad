// $fn=80;

// module left_upper_wing_outline() {
//   difference() {
//     hull() {
//       rotate([0,0,20.37]) scale([0.4793,1,1]) circle(r=269.69);
//       translate([-93.90,0,0]) square(size=[246.49, 246.49], center=false);
//       translate([10,-240,0]) square(size=[828.48, 500], center=false);
//     }
//     color("Blue") translate([-120,246.49,0]) square(size=[2000, 246.49], center=false);
//     color("Blue") translate([-120,-223.44-246.49,0]) square(size=[2000, 246.49], center=false);
//   }
// }

// module left_lower_wing_outline() {
//   difference() {
//     hull() {
//       rotate([0,0,20.37]) scale([0.4793,1,1]) circle(r=269.69);
//       translate([-93.90,0,0]) square(size=[246.49, 246.49], center=false);
//       translate([10,-240,0]) square(size=[828.48+65.29, 500], center=false);
//     }
//     color("Blue") translate([-120,246.49,0]) square(size=[2000, 246.49], center=false);
//     color("Blue") translate([-120,-223.44-246.49,0]) square(size=[2000, 246.49], center=false);
//   }
// }

// module wing_center() {
//   difference() {
//     square(size=[460.77, 500], center=true);
//     translate([0,-223.44,0]) circle(r=97.99, $fn=6);
//     color("Blue") translate([-300,246.49,0]) square(size=[2000, 246.49], center=false);
//     color("Blue") translate([-300,-223.44-246.49,0]) square(size=[2000, 246.49], center=false);
//   }
// }

// module upper_wing_outline() {
//   linear_extrude(height=43.30, center=false, convexity=10, twist=0) {
//     translate([-838.48-(460.77/2),0,0]) left_upper_wing_outline();
//     color("orange") wing_center();
//     translate([ 838.48+(460.77/2),0,0]) mirror([1,0,0]) left_upper_wing_outline();
//   }

// }

// module lower_wing_outline() {
//   linear_extrude(height=43.30, center=false, convexity=10, twist=0) {
//     translate([-838.48-(460.77/2)+65.29,0,0]) left_lower_wing_outline();
//     // translate([ 838.48+(460.77/2)-65.29,0,0]) mirror([1,0,0]) left_lower_wing_outline();
//   }

// }

// module super_cyl() {
//   difference() {
//     translate([0,25,-1082.25+15]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=1710.25, h=2600, center=true);
//     difference() {
//       rotate([2,0,0]) translate([0,25,-1082.25+15]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=1110.25, h=2700, center=true);
//       //translate([0,25,-1082.25+15]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=1082.25, h=2800, center=true);
//     }
//     translate([0,0,-3220]) cube(size=[4200, 4200, 6200], center=true);
//     translate([0,0,3220]) cube(size=[4200, 4200, 6200], center=true);
//     translate([0,-1500,-120]) cube(size=[4200, 2000, 6200], center=true);
//     translate([0,1500,-120]) cube(size=[4200, 2000, 6200], center=true);
//   }
// }

// module solid_upper_wing() {
//   difference() {
//     upper_wing_outline();
//     color("Orange") super_cyl();
//     translate([0,180,2])
//     rotate([-10,0,0])
//     difference() {
//       difference() {
//         rotate([2,0,0]) translate([0,25,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=100, h=2700, center=true);
//         hull() {
//           rotate([2,0,0]) translate([0,0,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=40, h=2800, center=true);
//           rotate([2,0,0]) translate([0,25,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=40, h=2800, center=true);
//         }
//       }
//       translate([0,-150,0]) cube(size=[2800, 300, 300], center=true);
//     }
//   }
// }

// module solid_lower_wing() {
//   rotate([0,4.8,0])
//   difference() {
//     lower_wing_outline();
//     color("Orange") super_cyl();
//     translate([0,180,2])
//     rotate([-10,0,0])
//     difference() {
//       difference() {
//         rotate([2,0,0]) translate([0,25,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=100, h=2700, center=true);
//         hull() {
//           rotate([2,0,0]) translate([0,0,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=40, h=2800, center=true);
//           rotate([2,0,0]) translate([0,25,0]) scale([1,1.2,1]) rotate([0,90,0]) cylinder(r=40, h=2800, center=true);
//         }
//       }
//       translate([0,-150,0]) cube(size=[2800, 300, 300], center=true);
//     }
//   }
// }

// module framed_upper_wing() {
//   ribs = 8;
//   rib_spacing = 1050/8;

//   difference() {
//     solid_upper_wing();
//     // for (r = [-ribs : ribs]) {
//     //   translate([r*rib_spacing, 30, 0])
//     //   hull() {
//     //     translate([0, 140,0]) cylinder(r=60, h=200, center=true);
//     //     translate([0,-140,0]) cylinder(r=60, h=200, center=true);
//     //     // cube(size=[120, 340, 200], center=true);
//     //   }
//     // }
//   }
//   translate([0,100,26]) cube(size=[2400, 10, 30], center=true);
// }

// module framed_lower_wing() {
//   ribs = 8;
//   rib_spacing = 1050/8;

//   // difference() {
//     solid_lower_wing();
//     mirror([1,0,0]) solid_lower_wing();
//     // for (r = [-ribs : ribs]) {
//     //   translate([r*rib_spacing, 30, 0])
//     //   hull() {
//     //     translate([0, 140,0]) cylinder(r=60, h=200, center=true);
//     //     translate([0,-140,0]) cylinder(r=60, h=200, center=true);
//     //     // cube(size=[120, 340, 200], center=true);
//     //   }
//     // }
//   // }
// }

// module wings() {
//   translate([0,140.42,420.63+12]) rotate([2.267,0,0]) framed_upper_wing();
//   translate([0,0,12]) rotate([3.197,0,0]) framed_lower_wing();
// }

// module fuse() {
//   difference() {
//     translate([0,0,106])
//     union() {
//       rotate([90,0,180])
//       rotate_extrude(convexity = 10)
//       hull() {
//         translate([153,411,0]) square(size=[10, 10]);
//         translate([153,-254,0]) circle(30);
//         translate([116,-1086,0]) circle(30);
//         translate([0,411,0]) square(size=[10, 10]);
//         translate([0,-1110,0]) square(size=[10, 10]);
//       }
//     }

//     rotate([-9.339,0,0]) color("Orange") translate([-150,-1091.73 - 94.76,-330])    cube(size=[300, 1004.27, 300]);
//     rotate([0,0,-4.6695]) color("Orange") translate([  97.41 + 16,-1091.73-87.5,0]) cube(size=[300, 1004.27, 400]);
//     rotate([0,0,4.6695])  color("Orange") translate([-397.41 - 16,-1091.73-87.5,0]) cube(size=[300, 1004.27, 400]);

//     color("Pink") translate([  97.41,-1000,-400]) cube(size=[300, 2004.27, 800]);
//     color("Pink") translate([-397.41,-1000,-400]) cube(size=[300, 2004.27, 800]);
//     color("Pink") translate([-150,-1000,-300]) cube(size=[300, 2004.27, 300]);
//   }

//   // color("red") translate([0,0,294]) cube(size=[10, 4000, 10], center=true);
//   // color("red") translate([-20,0,-5]) cube(size=[10, 474, 10]);
// }

// module superFuse() {
//   difference() {
//     difference() {
//       union() {
//         hull() {
//           fuse();
//           translate([0,300,0])
//           hull() {
//             translate([0,121, 135]) rotate([90, 0, 0]) cylinder(r=155, h=10);
//             translate([0,-581,200-12]) sphere(r=98);
//           }
//         }
//         translate([0,418,135.5])
//         rotate([90,0,0])
//         rotate_extrude(convexity = 10)
//         translate([105, 0, 0])
//         circle(50);
//       }

//       difference() {
//         translate([0,0,139]) rotate([90,0,0]) cylinder(r=300, h=3000, center=true);
//         translate([0,0,139]) rotate([90,0,0]) cylinder(r=154, h=3100, center=true);
//       }
//       translate([0,450,135.5]) rotate([90,0,0]) cylinder(r=100, h=60, center=true);
//     }

//     translate([0,0,294])
//     linear_extrude(height=200, center=true, convexity = 10, twist = 0)
//     hull() {
//       translate([-38,19,0]) square([76,76]);
//       translate([0,-60,0]) circle(82);
//     }
//     translate([0,0,12]) rotate([3.197,0,0]) framed_lower_wing();
//   }
// }

// //wings();

// //  // Draw a NACA airfoil

// //  // calc symmetric 00xx half thickness
// // function yt (x,c,t) = t/0.2*c*(0.2969*sqrt(x/c)-0.126*(x/c)-0.3516*pow(x/c,2)+0.2843*pow(x/c,3)-0.1015*pow(x/c,4));

// // module airfoil (c,t) {
// //   step = c/80;
// //   for (i=[0:step:c]) {
// //     translate([i, 0, 0])
// //     cube([step, 0.1, 2 * (0.1+yt(i,c,t))], center=true);
// //   }
// // }

// // module test() {
// //   airfoil(50, 0.30);
// //   translate ([0,-20,0]) airfoil (50, 0.10);
// // }

// // module blend (len, c, t1, t2) {
// //   step = c/200;
// //   for (i=[0:step:c]) {
// //     assign(p1 = 0.1 + yt(i,c,t1), p2 = 0.1 + yt(i,c,t2)) {
// //       translate ([0, 0, i])
// //       polygon(points =  [
// //         [0,-p1],
// //         [0,p1],
// //         [len, p2],
// //         [len, -p2],
// //         [0, -p1] ]
// //       );
// //     }
// //   }
// // }

// // // rotate ([-90,0,0]) blend(50, 50,0.30,0.10);
// // test();


// // joinfactor = 0.125;

// // gFocalPoint = [0,0];
// // gSteps = 10;
// // gHeight = 4;

// // BezQuadCurve(
// //   [
// //     [ 0,  100],
// //     [ 5, 20],
// //     [10,  5],
// //     [15, 15]
// //   ], [0,0], gSteps, gHeight);

// //=======================================
// // Functions
// //=======================================
// function BEZ03(u) = pow((1-u), 3);
// function BEZ13(u) = 3*u*(pow((1-u),2));
// function BEZ23(u) = 3*(pow(u,2))*(1-u);
// function BEZ33(u) = pow(u,3);

// function PointAlongBez4(p0, p1, p2, p3, u) = [
//   BEZ03(u)*p0[0]+BEZ13(u)*p1[0]+BEZ23(u)*p2[0]+BEZ33(u)*p3[0],
//   BEZ03(u)*p0[1]+BEZ13(u)*p1[1]+BEZ23(u)*p2[1]+BEZ33(u)*p3[1]];


// //=======================================
// // Modules
// //=======================================
// // c - ControlPoints
// module BezQuadCurve(c, focalPoint, steps=gSteps, height=gHeight)
// {
//   // Draw control points
//   // Just comment this out when you're doing the real thing
//   for(point=[0:3]) {
//     color([point*100,0,0])
//     translate(c[point])
//     cylinder(r=1, h=height+joinfactor);
//   }

//   for(step = [steps:1])
//   {
//     linear_extrude(height = height, convexity = 10)
//     polygon(
//       points=[
//         focalPoint,
//         PointAlongBez4(c[0], c[1], c[2],c[3], step/steps),
//         PointAlongBez4(c[0], c[1], c[2],c[3], (step-1)/steps)],
//       paths=[[0,1,2,0]]
//     );
//   }
// }

// //==============================================
// // Test functions
// //==============================================
// //PlotBEZ0(100);
// //PlotBEZ1(100);
// //PlotBEZ2(100);
// //PlotBEZ3(100);
// //PlotBez4Blending();


// module PlotBEZ0(steps)
// {
//   cubeSize = 1;
//   cubeHeight = steps;

//   for (step=[0:steps])
//   {
//     translate([cubeSize*step, 0, 0])
//     cube(size=[cubeSize, cubeSize, BEZ03(step/steps)*cubeHeight]);
//   }
// }

// module PlotBEZ1(steps)
// {
//   cubeSize = 1;
//   cubeHeight = steps;

//   for (step=[0:steps])
//   {
//     translate([cubeSize*step, 0, 0])
//     cube(size=[cubeSize, cubeSize, BEZ13(step/steps)*cubeHeight]);
//   }
// }

// module PlotBEZ2(steps)
// {
//   cubeSize = 1;
//   cubeHeight = steps;

//   for (step=[0:steps])
//   {
//     translate([cubeSize*step, 0, 0])
//     cube(size=[cubeSize, cubeSize, BEZ23(step/steps)*cubeHeight]);
//   }
// }

// module PlotBEZ3(steps)
// {
//   cubeSize = 1;
//   cubeHeight = steps;

//   for (step=[0:steps])
//   {
//     translate([cubeSize*step, 0, 0])
//     cube(size=[cubeSize, cubeSize, BEZ33(step/steps)*cubeHeight]);
//   }
// }

// module PlotBez4Blending()
// {
//   sizing = 100;

//   translate([0, 0, sizing + 10])
//   PlotBEZ0(100);

//   translate([sizing+10, 0, sizing + 10])
//   PlotBEZ1(100);

//   translate([0, 0, 0])
//   PlotBEZ2(100);

//   translate([sizing+10, 0, 0])
//   PlotBEZ3(100);
// }


// //  imported from https://groups.google.com/group/SketchUp3d/browse_thread/thread/68865aa2fc881e30/26a9ccea8c3c9af1 (work of TaffGoch in public domain) by david buzz (GPLv2)
// //  removed 'mcad' dependency by qharley
// //  cleaned up by feng ling (levincoolxyz)
// //  use the "use" directive, please.
// //  module airfoil() default to NACA-8412
// //  camber_max - percent figure. ( range 0-9 )
// //  camber_position - tenths   ( range 0-9 )
// //  thickness - percentage relative to chord   ( range 0-99 )

// module airfoil(camber_max = 8, camber_position = 4, thickness = 12) {

//   m = camber_max/100;
//   p = camber_position/10;
//   t = thickness/100;

//   pts = 25; // datapoints on each of upper and lower surfaces

//   function xx(i) = 1 - cos((i-1)*90/(pts-1));
//   function yt(i) = t/0.2*(0.2969*pow(xx(i),0.5) - 0.126*xx(i)-0.3516*pow(xx(i),2) + 0.2843*pow(xx(i),3) - 0.1015*pow(xx(i),4));
//   function yc(i) = xx(i)<p ? m/pow(p,2)*(2*p*xx(i) - pow(xx(i),2)) : m/pow(1-p,2)*(1 - 2*p + 2*p*xx(i) - pow(xx(i),2));
//   function xu(j) = xx(j) - yt(j)*(sin(atan((yc(j)-yc(j-1))/(xx(j)-xx(j-1)))));
//   function yu(j) = yc(j) + yt(j)*(cos(atan((yc(j)-yc(j-1))/(xx(j)-xx(j-1)))));
//   function xl(j) = xx(j) + yt(j)*(sin(atan((yc(j)-yc(j-1))/(xx(j)-xx(j-1)))));
//   function yl(j) = yc(j) - yt(j)*(cos(atan((yc(j)-yc(j-1))/(xx(j)-xx(j-1)))));

//   polygon( points=[
//   // upper side front-to-back
//   [0,0],[xu(2),yu(2)],[xu(3),yu(3)],[xu(4),yu(4)],[xu(5),yu(5)],[xu(6),yu(6)],[xu(7),yu(7)],[xu(8),yu(8)],[xu(9),yu(9)],[xu(10),yu(10)],[xu(11),yu(11)],[xu(12),yu(12)],[xu(13),yu(13)],[xu(14),yu(14)],[xu(15),yu(15)],[xu(16),yu(16)],[xu(17),yu(17)],[xu(18),yu(18)],[xu(19),yu(19)],[xu(20),yu(20)],[xu(21),yu(21)],[xu(22),yu(22)],[xu(23),yu(23)],[xu(24),yu(24)],[xu(25),yu(25)],
//   // lower side back to front
//   [xl(25),yl(25)],[xl(24),yl(24)],[xl(23),yl(23)],[xl(22),yl(22)],[xl(21),yl(21)],[xl(20),yl(20)],[xl(19),yl(19)],[xl(18),yl(18)],[xl(17),yl(17)],[xl(16),yl(16)],[xl(15),yl(15)],[xl(14),yl(14)],[xl(13),yl(13)],[xl(12),yl(12)],[xl(11),yl(11)],[xl(10),yl(10)],[xl(9),yl(9)],[xl(8),yl(8)],[xl(7),yl(7)],[xl(6),yl(6)],[xl(5),yl(5)],[xl(4),yl(4)],[xl(3),yl(3)],[xl(2),yl(2)],
//   ] );
// }


// module af_left_upper() {
  // difference() {
  //   linear_extrude(height=43.30, center=false, convexity=10, twist=0)
  //   left_upper_wing_outline();

  //   difference() {
  //     color("Orange") translate([-300,-250,-10]) cube(size=[1400, 500, 60]);
  //     translate([400,243,10]) rotate([90,1,-90]) scale([465,205,1200]) airfoil(8,4,20);
  //   }
  // }
  cube(size=[10, 10, 10], center=true);
// }

// module af_right_upper() {
//   mirror([1,0,0]) af_left_upper();
// }

// translate([-1000,0,0]) af_left_upper();
// translate([1000,0,0]) af_right_upper();



