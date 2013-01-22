$fn = 50;

ring_radius = 30;
ring_width = 4;
ring_height = 2;

// render() {
//   difference() {
//     translate([-41.5,-40.5,0]) linear_extrude(file="spiral2_converted.dxf", height=ring_height, twist = 0);
//     difference() {
//       cylinder(r=ring_radius + 50, h=ring_height+5, center=true);
//       cylinder(r=ring_radius - (ring_width/2), h=ring_height*2, center=true);
//     }
//     cylinder(r=8, h=ring_height*2, center=true);
//   }
// }


//translate([0,0,-ring_height/2]) cylinder(r=ring_radius - (ring_width/2), h=ring_height, center=true);

// import_stl("scrollbk.stl");
// import_stl("slides.stl");
reduce = 0.2817;

jaw_diam = 85.63;
rearplate_diam = 80;
scrollbk_diam = 71.635;


// translate([(jaw_diam - rearplate_diam)/2,(jaw_diam - rearplate_diam)/2,-20]) scale([reduce,reduce,reduce]) import("rear plate.stl");
color("Green") translate([-3.74,-6.65,-16]) scale([reduce,reduce,reduce]) import("slides.stl");
//translate([0,0,26]) scale([reduce,reduce,reduce]) import("3 jaw.stl");
//color("Red") translate([(jaw_diam - scrollbk_diam)/2,(jaw_diam - scrollbk_diam)/2,1.2]) rotate([-90,0,0]) scale([reduce,reduce,reduce]) import_stl("scrollbk.stl");



//color("Red") translate([0,0,-10]) cube(size=[scrollbk_diam/2, scrollbk_diam, 40]);
