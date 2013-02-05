module m8_washer() {
  color("LightSteelBlue")
  difference() {
    cylinder(r=8.5, h=m8_washer_thickness, center=true);
    cylinder(r=m8_diam/2 + 0.2, h=10, center=true);
  }
}