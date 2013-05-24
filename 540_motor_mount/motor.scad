motor_diam = 18.33;
motor_can_height = 7;
motor_taper_height = 2.5;
motor_taper_diam = 13;
motor_shoulder_height = 2;
motor_shoulder_diam = 5.5;
motor_tab_diam = motor_diam;
motor_tab_thickness = 1;
motor_tab_width = 5.46;
motor_screw_hole_diam = 2.8;
motor_screw_hole_distance_from_center = 12.50;
motor_axle_diam = 2;
motor_axle_height = 25;

module motor() {
  color("Orange") {
    translate([0,0,motor_tab_thickness/2])
    difference() {
      union() {
          for (i = [0 : 2]) {
          rotate(i * 360 / 3, [0,0,1])
          hull() {
            translate([0, 0, 0]) cylinder(r=motor_tab_width, h=motor_tab_thickness, center=true);
            translate([motor_screw_hole_distance_from_center, 0, 0]) cylinder(r=motor_tab_width/2, h=motor_tab_thickness, center=true);
          }
        }
      }
      for (i = [0 : 2]) {
        rotate(i * 360 / 3, [0,0,1])
        translate([motor_screw_hole_distance_from_center, 0, 0]) cylinder(r=motor_screw_hole_diam/2, h=motor_tab_thickness+1, center=true);
      }
    }
    translate([0,0,motor_tab_thickness * 1.5])
    cylinder(r=motor_tab_diam/2, h=motor_tab_thickness, center=true);
  }

  color("Silver") {
    translate([0,0,(motor_tab_thickness * 2) + (motor_can_height/2)])
    cylinder(r=motor_diam/2, h=motor_can_height, center=true);

    translate([0,0,(motor_tab_thickness * 2) + (motor_can_height) + (motor_taper_height/2)])
    cylinder(r1=motor_diam/2, r2=motor_taper_diam/2 , h=motor_taper_height, center=true);

    translate([0,0,(motor_tab_thickness * 2) + (motor_can_height) + (motor_taper_height) + (motor_shoulder_height/2)])
    cylinder(r=motor_shoulder_diam/2, h=motor_shoulder_height, center=true);
  }

  color("Grey") {
    translate([0,0,5])
    cylinder(r=motor_axle_diam/2, h=motor_axle_height, center=true);
  }

  translate([0,0,(motor_tab_thickness * 2) + (motor_can_height) + (motor_taper_height) + (motor_shoulder_height/2) + 2]) prop_adapter();
}

collar_diam = 7.95;
collar_height = 4.8;
shoulder_diam = 11.8;
shoulder_height = 1;
shaft_height = 12.9;
shaft_diam = 4.8;

module prop_adapter() {
  color("Silver") {
    translate([0,0,0])
    cylinder(r=collar_diam/2, h=collar_height);

    translate([0,0,collar_height])
    cylinder(r=shoulder_diam/2, h=shoulder_height);

    translate([0,0,collar_height + shoulder_height])
    cylinder(r=shaft_diam/2, h=shaft_height);
  }
}