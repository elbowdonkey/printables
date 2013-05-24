$fn=100;
eigth_inch = 3.14;
hinge_diam = 2;
hinge_depth = 13;

// difference() {
//   cube(size=[25, 10, 20], center=true);
//   color("Orange") translate([0,0,10 - hinge_depth/2 + 0.01]) cube(size=[30, eigth_inch, hinge_depth], center=true);
//   cylinder(r=hinge_diam/2, h=40, center=true);
// }


// hull() {
//   translate([ 15,eigth_inch,0]) cylinder(r=eigth_inch/2, h=hinge_depth);
//   translate([-15,eigth_inch,0]) cylinder(r=eigth_inch/2, h=hinge_depth);
// }
// hull() {
//   translate([ 15,-eigth_inch,0]) cylinder(r=eigth_inch/2, h=hinge_depth);
//   translate([-15,-eigth_inch,0]) cylinder(r=eigth_inch/2, h=hinge_depth);
// }
difference() {
  union() {
    hull() {
      translate([ 15,eigth_inch,0]) sphere(r=eigth_inch/2);
      translate([-15,eigth_inch,0]) sphere(r=eigth_inch/2);
      translate([ 15,eigth_inch,hinge_depth]) sphere(r=eigth_inch/2);
      translate([-15,eigth_inch,hinge_depth]) sphere(r=eigth_inch/2);
    }

    hull() {
      translate([ 15,-eigth_inch,0]) sphere(r=eigth_inch/2);
      translate([-15,-eigth_inch,0]) sphere(r=eigth_inch/2);
      translate([ 15,-eigth_inch,hinge_depth]) sphere(r=eigth_inch/2);
      translate([-15,-eigth_inch,hinge_depth]) sphere(r=eigth_inch/2);
    }
  }
  translate([0,0,hinge_depth + 1.5]) rotate([0,45,0]) cube(size=[2, 30, 2], center=true);
}




difference() {
  hull() {
    translate([ 15, eigth_inch,-9.99]) cylinder(r=eigth_inch/2, h=10);
    translate([-15, eigth_inch,-9.99]) cylinder(r=eigth_inch/2, h=10);
    translate([ 15,-eigth_inch,-9.99]) cylinder(r=eigth_inch/2, h=10);
    translate([-15,-eigth_inch,-9.99]) cylinder(r=eigth_inch/2, h=10);
  }
  cylinder(r=hinge_diam/2, h=40, center=true);

}



