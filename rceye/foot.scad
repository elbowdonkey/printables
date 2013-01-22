$fn = 50;


prop_diam = 68;
motor_diam = 12.1;

module motor() {
  difference() {
    union() {
      translate([0,0,-10]) cylinder(r=motor_diam/2, h=20, center=true);
      hull() {
        translate([0,0,-20]) sphere(r=(motor_diam)/2);
        translate([0,0,-35]) sphere(r=(3)/2);
      }
    }
    translate([0,10,-10]) color("Orange") cube(size=[20,10,30], center=true);
    translate([0,-10,-10]) color("Orange") cube(size=[20,10,30], center=true);
  }
}

difference() {
  union() {
    translate([0,0,-1.5]) {
      difference() {
        cylinder(r=(prop_diam+1)/2, h=3, center=true);
        cylinder(r=prop_diam/2, h=4, center=true);
        translate([0,prop_diam/2,0]) cube(size=[prop_diam+1, prop_diam, 4], center=true);
      }

      difference() {
        color("Red")
        hull() {
          translate([0,0,0]) cube(size=[prop_diam+1, 0.6, 3], center=true);
          translate([0,0,-20]) cube(size=[6, 0.6, 3], center=true);
        }
        translate([0,(prop_diam/2)+1.5,0]) cube(size=[prop_diam + 4, prop_diam+1, 4], center=true);
        translate([0,0,3]) scale([1,1,2]) motor();
        hull() {
          translate([16.5,0,-25]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
          translate([16.5,0,-12]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
          translate([35,0,  -12]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
        }
        hull() {
          translate([-16.5,0,-25]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
          translate([-16.5,0,-12]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
          translate([-35,0,  -12]) rotate([90,0,0]) cylinder(r=10, h=10, center=true);
        }
      }
    }

    difference() {
      translate([0,0,0]) scale([1.1,1.1,1.2]) motor();
      translate([0,0,11]) scale([1,1,1.5]) motor();
    }
  }
  translate([0,12,1]) rotate([15,0,0]) cylinder(r=motor_diam, h=30, center=true);
  translate([0,-4,-30]) cube(size=[1, 30, 20], center=true);
  translate([0,0,-30]) cube(size=[30, 1, 20], center=true);
}

