$fn=100;

module standoff() {
  difference() {
    cylinder(r=20, h=50, center=true);
    scale([1,1,2])
    color("Orange")
    rotate_extrude(convexity = 10, $fn = 100)
    translate([42, 0, 0])
    circle(r = 25, $fn = 100);
    cylinder(r=10, h=60, center=true);
  }
}

translate([-21,0,0]) standoff();
translate([-21,-41,0]) standoff();
translate([21,0,0]) standoff();
translate([21,-41,0]) standoff();
