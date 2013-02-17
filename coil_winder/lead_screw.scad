module lead_screw() {
  measured_major_diam = 12.85;
  color("LightGray") rotate([90,0,0]) cylinder(r=measured_major_diam/2, h=200, center=true);
}