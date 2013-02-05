module angle_iron(length=400) {
  color("Maroon")
  difference() {
    cube(size=[angle_iron_width, length, angle_iron_width], center=true);
    translate([-angle_iron_thickness, 0, angle_iron_thickness]) cube(size=[angle_iron_width, length+1, angle_iron_width], center=true);
  }
}