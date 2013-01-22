use <MCAD/metric_fastners.scad>

$fn = 100;

pole_diam = 34.9;
mic_diam = 21.66;
wall_thickness = 8;

lock_ring_diam = 33.1;
lock_ring_height = 5.22;
flange_diam1 = 56 + 1; // + 1 to make the part just a bit wider than the actual flange
flange_diam2 = 24 + 1;
flange_height = 4.83;

mic_center = (pole_diam/2) + (mic_diam/2) + 20;

module plate() {
  difference() {
    union() {
      cylinder(r=(pole_diam/2) + wall_thickness, h=10, center=true);
      hull() {
        cylinder(r=(pole_diam/2) + wall_thickness, h=10, center=true);
        translate([mic_center,0,0]) cylinder(r=flange_diam1/2, h=10, center=true);
      }
    }
    cylinder(r=pole_diam/2, h=pole_diam+2, center=true);
    translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam+2, center=true);
  }
}

module bottom_plate() {
  difference() {
    union() {
      cylinder(r=(pole_diam/2) + wall_thickness, h=10, center=true);
      hull() {
        cylinder(r=(pole_diam/2) + wall_thickness, h=10, center=true);
        translate([mic_center,0,0]) cylinder(r=mic_diam/2 + wall_thickness, h=10, center=true);
      }
    }
    cylinder(r=pole_diam/2, h=pole_diam+2, center=true);
    translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam+2, center=true);
  }
}

plate();

translate([0,0,-pole_diam/2 - 5])
difference() {
  cylinder(r=(pole_diam/2) + wall_thickness, h=pole_diam, center=true);
  cylinder(r=pole_diam/2, h=pole_diam+2, center=true);
  color("Silver") translate([-(pole_diam/2) - 5.5, 0, 0]) rotate([0,90,0]) cap_bolt(3,6);
}

translate([0,0,-pole_diam/2 - 5])
difference() {
  translate([mic_center,0,0]) cylinder(r=mic_diam/2 + wall_thickness, h=pole_diam, center=true);
  translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam+2, center=true);
}


translate([0,0,-pole_diam/2 - 25])
bottom_plate();








// // rhode mic mount lock ring
// color("Silver") translate([mic_center,0,-pole_diam/2 - lock_ring_height/2]) cylinder(r=lock_ring_diam/2, h=lock_ring_height, center=true);

// // rhode mic mount top plate
// color("Silver") translate([mic_center,0,pole_diam/2 + flange_height/2]) cylinder(r1=flange_diam1/2, r2=flange_diam2/2, h=flange_height, center=true);

