module bearing() {
  color("Silver")
  difference() {
    cylinder(r=bearing_diameter/2, h=7, center=true);
    cylinder(r=4, h=8, center=true);
  }
}