wall_thickness = 4;
fillet_radius = 4;
$fn = 100;

module fillet_shape() {
  difference() {
    polygon(points=[[0,0],[fillet_radius,0],[0,fillet_radius]], paths=[[0,1,2]]);
    translate([fillet_radius,fillet_radius,0]) circle(r = fillet_radius);
  }
}

module fillet(inner_diam=10, radius=5 ) {
  rotate_extrude()
  translate([inner_diam, 0, 0])
  fillet_shape();
}

color("red")
cylinder(r=10, h=20, center=true);
fillet();
