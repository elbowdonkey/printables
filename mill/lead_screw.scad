module lead_screw(length=400) {
  color("DimGray")
  rotate([90,0,0]) cylinder(r=half_ten_diam/2, h=length, center=true);
}