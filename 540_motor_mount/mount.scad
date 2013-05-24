module mount() {
  // hull() {
  //   for (i = [0 : 2]) {
  //   rotate(i * 360 / 3, [0,0,1])
  //     translate([motor_screw_hole_distance_from_center, 0, 13]) cylinder(r=motor_tab_width/2 + 1, h=2);
  //   }
  // }
  difference() {
    union() {
      for (i = [0 : 2]) {
        rotate(i * 360 / 3, [0,0,1])
        translate([motor_screw_hole_distance_from_center, 0, 0]) cylinder(r1=motor_tab_width/2 + 3, r2=motor_tab_width/2 + 1, h=18);
      }

      hull() {
        for (i = [0 : 5]) {
        rotate(i * 360 / 6, [0,0,1])
          translate([motor_screw_hole_distance_from_center, 0, 0]) cylinder(r=motor_tab_width/2 + 2, h=2);
        }
      }
    }

    for (i = [0 : 5]) {
      rotate(i * 360 / 6, [0,0,1])
      translate([motor_screw_hole_distance_from_center, 0, -1]) cylinder(r=motor_screw_hole_diam/2, h=5);
    }

    rotate([1.5,2,0])
    union() {
      for (i = [0 : 2]) {
        rotate(i * 360 / 3, [0,0,1])
        translate([motor_screw_hole_distance_from_center, 0, 0]) cylinder(r=motor_screw_hole_diam/2 - 0.3, h=30);
      }
    }


    cylinder(r=9, h=40, center=true);
  }

}