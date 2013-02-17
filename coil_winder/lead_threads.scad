module lead_threads() {
  color("Orange")
  difference() {
    import("LeadNut.stl");

    difference() {
      cylinder(r=20, h=22, center=true);
      cylinder(r=9, h=23, center=true);
    }
  }
}