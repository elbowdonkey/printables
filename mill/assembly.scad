include <MCAD/metric_fastners.scad>
include <MCAD/nuts_and_bolts.scad>
include <sbr16.scad>
include <alu_bar.scad>
include <angle_iron.scad>
include <bearing.scad>
include <flat_iron.scad>
include <hardware.scad>
include <lead_screw.scad>
include <steppers.scad>


$fn=100;

half_ten_diam = 12.7; // 0.5"
bearing_diameter = 22;
bearing_width = 7;
flat_iron_thickness = 6.35; // 0.25"
flat_iron_width = 38.1; // 1.5"
angle_iron_width = 31.75; // 1.25"
angle_iron_thickness = 3.175; // 0.125"

standard_alu_stock = 19.05; // 0.75"

m4_diam = COURSE_METRIC_BOLT_MAJOR_THREAD_DIAMETERS[4];
m4_head = 1.25*m4_diam;
m5_diam = COURSE_METRIC_BOLT_MAJOR_THREAD_DIAMETERS[5];
m5_head = 1.25*m5_diam;

m8_diam = COURSE_METRIC_BOLT_MAJOR_THREAD_DIAMETERS[8];
m8_head = 1.25*m8_diam;
m8_washer_thickness = 2;

alu_color = "LightSlateGray";

// module y_axis_gantry_bearing_set() {
//   x_pos = bearing_diameter + flat_iron_thickness;
//   z_pos = standard_alu_stock/2 + bearing_width/2 + m8_washer_thickness;
//   v_z_pos = flat_iron_width/2 + bearing_diameter/2;

//   // horizontal bearings
//   translate([x_pos,0,z_pos]) bearing();
//   translate([x_pos,0,-z_pos]) bearing();

//   // vertical bearings
//   translate([x_pos/2,-15,v_z_pos]) rotate([0,90,0]) bearing();
//   translate([x_pos/2,-15,-v_z_pos]) rotate([0,90,0]) bearing();

//   // bolts & washers
//   washer_x_pos1 = x_pos/2 - m8_washer_thickness/2 - bearing_width/2;
//   washer_x_pos2 = washer_x_pos1 + bearing_width + m8_washer_thickness;
//   bolt_x_pos = washer_x_pos1 - m8_washer_thickness/2;

//   // washers for vert
//   translate([washer_x_pos1,-15,-v_z_pos]) rotate([0,90,0]) m8_washer();
//   translate([washer_x_pos2,-15,-v_z_pos]) rotate([0,90,0]) m8_washer();
//   translate([washer_x_pos1,-15,v_z_pos]) rotate([0,90,0]) m8_washer();
//   translate([washer_x_pos2,-15,v_z_pos]) rotate([0,90,0]) m8_washer();

//   // washers for horiz
//   washer_z_pos1 = z_pos + bearing_width/2 + m8_washer_thickness/2;
//   washer_z_pos2 = washer_z_pos1 - bearing_width - m8_washer_thickness;

//   translate([x_pos,0,washer_z_pos1]) m8_washer();
//   translate([x_pos,0,washer_z_pos2]) m8_washer();
//   translate([x_pos,0,-washer_z_pos1]) m8_washer();
//   translate([x_pos,0,-washer_z_pos2]) m8_washer();

//   // bolts for vert bearings
//   translate([bolt_x_pos,-15,v_z_pos]) rotate([0,90,0]) cap_bolt(m8_diam,30);
//   translate([bolt_x_pos,-15,-v_z_pos]) rotate([0,90,0]) cap_bolt(m8_diam,30);

//   // bolts for horiz bearings
//   horiz_bolt_z_pos = z_pos + m8_washer_thickness + bearing_width/2 + standard_alu_stock;
//   translate([x_pos,0,horiz_bolt_z_pos]) rotate([0,180,0]) cap_bolt(m8_diam,38);
//   translate([x_pos,0,-horiz_bolt_z_pos]) rotate([0,0,0]) cap_bolt(m8_diam,38);
// }

// module left_y_axis_rail() {
//   translate([bearing_diameter/2 + flat_iron_thickness/2,0,0]) flat_iron();
// }

// module left_y_axis_gantry_car() {
//   //horiz_bearings_c = standard_alu_stock/2 + bearing_diameter - flat_iron_thickness/2;
//   horiz_bearings_c = standard_alu_stock/2 + bearing_diameter - flat_iron_thickness/2 + 3;
//   vert_upper_c = flat_iron_width/2 + bearing_diameter/2;
//   vert_lower_c = -vert_upper_c;
//   horiz_bar_length = 95;
//   horiz_upper_c = horiz_bar_length/2 - standard_alu_stock/2;
//   horiz_lower_c = -horiz_upper_c;
//   vertical_bar_length = vert_upper_c - vert_lower_c + standard_alu_stock;

//   // horizontal rows
//   translate([horiz_bearings_c, 0, vert_upper_c]) alu_bar(length=horiz_bar_length);
//   translate([horiz_bearings_c, 0, 0])            alu_bar(length=horiz_bar_length);
//   translate([horiz_bearings_c, 0, vert_lower_c]) alu_bar(length=horiz_bar_length);

//   //translate([horiz_bearings_c + standard_alu_stock, 0, 0])            color(alu_color) cube(size=[standard_alu_stock, horiz_bar_length - (standard_alu_stock*2), standard_alu_stock], center=true);

//   // bearings
//   translate([0,-bearing_diameter/2 - 0.5,0]) y_axis_gantry_bearing_set();
//   translate([0,bearing_diameter/2 + 0.5,0]) rotate([180,0,0]) y_axis_gantry_bearing_set();

//   // vertical bars
//   translate([horiz_bearings_c + standard_alu_stock,horiz_lower_c,0]) rotate([90,0,0]) alu_bar(length=vertical_bar_length);
//   translate([horiz_bearings_c + standard_alu_stock,horiz_upper_c,0]) rotate([90,0,0]) alu_bar(length=vertical_bar_length);
// }

// //left_y_axis_rail();

// module y_gantry() {
//   horiz_bar_length = 95;
//   horiz_bearings_c = standard_alu_stock/2 + bearing_diameter - flat_iron_thickness/2 + 3;
//   horiz_upper_c = horiz_bar_length/2 - standard_alu_stock/2;
//   horiz_lower_c = -horiz_upper_c;

//   vert_upper_c = flat_iron_width/2 + bearing_diameter/2;
//   cross_beam_length = 200;

//   bolt_x = -m4_head+1 + horiz_bearings_c + standard_alu_stock + standard_alu_stock/2;

//   difference() {
//     left_y_axis_gantry_car();
//     color("DarkSlateGray") translate([bolt_x,horiz_lower_c,vert_upper_c]) rotate([0,-90,0]) cap_bolt(m4_diam,35);
//     color("DarkSlateGray") translate([bolt_x,horiz_lower_c,0]) rotate([0,-90,0]) cap_bolt(m4_diam,35);
//     color("DarkSlateGray") translate([bolt_x,horiz_lower_c,-vert_upper_c]) rotate([0,-90,0]) cap_bolt(m4_diam,35);
//   }

//   //translate([horiz_bearings_c + standard_alu_stock,0,0]) alu_bar(length=(horiz_bar_length - standard_alu_stock*2));
//   //translate([horiz_bearings_c + standard_alu_stock*2,0,0]) alu_bar(length=(horiz_bar_length));

//   translate([cross_beam_length/2 + horiz_bearings_c + standard_alu_stock/2,horiz_lower_c + standard_alu_stock,-standard_alu_stock])
//   rotate([0,0,-90])
//   alu_bar(length=cross_beam_length);

//   translate([cross_beam_length/2 + horiz_bearings_c + standard_alu_stock/2,horiz_lower_c + standard_alu_stock*2,-standard_alu_stock])
//   rotate([0,0,-90])
//   alu_bar(length=cross_beam_length);

//   translate([cross_beam_length/2 + horiz_bearings_c + standard_alu_stock/2,horiz_lower_c + standard_alu_stock*3,-standard_alu_stock])
//   rotate([0,0,-90])
//   alu_bar(length=cross_beam_length);

//   // translate([(cross_beam_length/2) + horiz_bearings_c  + standard_alu_stock/2,-angle_iron_width/2 + horiz_bar_length/2 - standard_alu_stock,+(angle_iron_width/2)-(standard_alu_stock/2)-3])
//   // rotate([0,0,90])
//   // angle_iron(length=cross_beam_length);
// }

// //y_gantry();
// //y_axis_gantry_bearing_set();


// //lead_screw();


// //translate([-angle_iron_width/2 + bearing_diameter/2, 0, 0]) angle_iron();


x_width = 500;
mdf_thickness = 15.875;

module rail_and_blocks(length=800) {
  translate([0,0,0])  rotate([0,0,90]) sbr16_rail(length);
  translate([0,-30,0]) rotate([0,0,90]) sbr16_block();
  translate([0,30,0]) rotate([0,0,90]) sbr16_block();
}

// y rails/gantry
translate([-x_width/2,0,0]) rotate([0,-90,0]) rail_and_blocks();
translate([x_width/2,0,0])  rotate([0,90,0]) rail_and_blocks();
translate([0,0,-60]) lead_screw(length=800);
translate([0,450,-60]) nema17();

// x rails/gantry
translate([0,0,200]) rotate([0,180,90]) rail_and_blocks(500);
translate([0,0,240]) rotate([0,  0,90]) rail_and_blocks(500);
translate([0,0,220]) cube(size=[500, 40, 40], center=true);

// z gantry
translate([ -30, 43, 220]) cube(size=[mdf_thickness, 40, 120], center=true);
translate([  30, 43, 220]) cube(size=[mdf_thickness, 40, 120], center=true);
translate([  0, -50, 220]) rotate([90,0,0]) lead_screw(length=200);

translate([   0,  12, 152]) cube(size=[100, 100, mdf_thickness], center=true);
translate([   0,  12, 280]) cube(size=[100, 100, mdf_thickness], center=true);
translate([   0, -30, 220]) cube(size=[100, mdf_thickness, 120], center=true);

translate([   0, 43, 220]) rotate([0,0,90]) lead_screw(length=500);
translate([-300, 43, 220]) rotate([0,0,90]) nema17();




// base
translate([-250+(mdf_thickness/2),0,0]) cube(size=[mdf_thickness, 800, 80], center=true);
translate([250-(mdf_thickness/2),0,0]) cube(size=[mdf_thickness, 800, 80], center=true);
// translate([0,0,40 - (mdf_thickness/2)]) cube(size=[500 - (mdf_thickness*2), 800, mdf_thickness], center=true);
// translate([0,0,-40 + (mdf_thickness/2)]) cube(size=[500 - (mdf_thickness*2), 800, mdf_thickness], center=true);

x_slat_count = 5;
x_slat_distance = (500-(mdf_thickness*3)) / x_slat_count;
for (i = [-(x_slat_count/2):(x_slat_count/2)]) {
  translate([i * x_slat_distance,0,0]) cube(size=[mdf_thickness, 800, 80-(mdf_thickness*2)], center=true);
}

y_slat_count = 8;
y_slat_distance = (800-(mdf_thickness)) / y_slat_count;
for (i = [-(y_slat_count/2):(y_slat_count/2)]) {
  translate([0,i * y_slat_distance,0]) cube(size=[500-(mdf_thickness*2), mdf_thickness, 80-(mdf_thickness*2)], center=true);
}