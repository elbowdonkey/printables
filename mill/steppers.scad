module nema17() {
  hole_distance = 33;
  can_depth = 44;
  can_size = 42;
  band_depth = 12;
  band_size = can_size - 1;
  center_depth = can_depth - (band_depth*2);
  screw_radius = 1.5;
  from_c = hole_distance/2;
  band_c = (band_depth + center_depth)/2;
  corner_c = can_depth/2;
  corner_cut_size = 8;


  // Stepper body
  difference() {
    union() {
      color("Gray")    translate([0,-band_c,0]) cube(size=[can_size, band_depth, can_size], center=true);
      color("Black") translate([0,0,0])       cube(size=[band_size, center_depth+1, band_size], center=true);
      color("Gray")    translate([0,band_c,0])  cube(size=[can_size, band_depth, can_size], center=true);
    }

    for (i = [-from_c,from_c]) {
      for (j = [-from_c,from_c]) {
        translate([i, -(can_depth - 4)/2, j])
        color("Gray") rotate([90,0,0]) cylinder(r=screw_radius, h=8, center=true);
      }
    }

    for (i = [-corner_c,corner_c]) {
      for (j = [-corner_c,corner_c]) {
        translate([i, 0, j])
        rotate([0,45,0])
        union() {
          color("Gray")    translate([0, -band_c, 0]) cube(size=[corner_cut_size, band_depth+0.2,   corner_cut_size], center=true);
          color("DimGray") translate([0,       0, 0]) cube(size=[corner_cut_size+1, center_depth+0.2, corner_cut_size+1], center=true);
          color("Gray")    translate([0,  band_c, 0]) cube(size=[corner_cut_size, band_depth+0.2,   corner_cut_size], center=true);
        }
      }
    }
  }

  // Face
  color("LightGray")
  translate([0,-23,0]) rotate([90,0,0]) cylinder(r=11, h=2, center=true);

  // Shaft
  color("LightGray")
  difference() {
    translate([0,-33,0]) rotate([90,0,0]) cylinder(r=2.5, h=22, center=true);
    translate([0,-35,11]) cube(size=[19, 20, 19], center=true);
  }

  // JST Connection (S6B-PH-K-S)
  color("Ivory")
  translate([0,(can_depth - 6)/2,(can_size + 3)/2])
  cube(size=[13.9, 4.5, 6], center=true);
}