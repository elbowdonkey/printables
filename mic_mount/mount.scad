use <MCAD/metric_fastners.scad>

$fn = 100;

pole_diam = 34.9 + 0.2; // 0.2 is some wiggle room
mic_diam = 21.66 + 0.2; // 0.2 is some wiggle room
wall_thickness = 4;

lock_ring_diam = 33.1;
lock_ring_height = 5.22;
flange_diam1 = 56 + 1; // + 1 to make the part just a bit wider than the actual flange
flange_diam2 = 24 + 1;
flange_height = 4.83;

mic_center = (pole_diam/2) + (mic_diam/2) + 20;

plate_thickness = 4;

module plate() {
  difference() {
    union() {
      cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
      hull() {
        cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
        translate([mic_center,0,0]) cylinder(r=flange_diam1/2, h=plate_thickness, center=true);
      }
    }
    cylinder(r=pole_diam/2, h=pole_diam+2, center=true);
    translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam+2, center=true);
  }
}

module bottom_plate() {
  difference() {
    union() {
      cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
      hull() {
        cylinder(r=(pole_diam/2) + wall_thickness, h=plate_thickness, center=true);
        translate([mic_center,0,0]) cylinder(r=mic_diam/2 + wall_thickness, h=plate_thickness, center=true);
      }
    }

    cylinder(r=pole_diam/2, h=pole_diam+2, center=true);
    translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam+2, center=true);
  }


}

translate([0,0,plate_thickness/2])
rotate([180,0,0]) {
  plate();
  // hull() {
    translate([0,0,-pole_diam/2 - (plate_thickness + pole_diam/2)])
    bottom_plate();

  // }

  translate([0,0,-pole_diam/2 - plate_thickness/2])
  difference() {
    union() {
      cylinder(r=(pole_diam/2) + wall_thickness, h=pole_diam, center=true);
      translate([mic_center,0,0]) cylinder(r=mic_diam/2 + wall_thickness, h=pole_diam, center=true);
      hull() {
        cylinder(r2=pole_diam/2,r1=(pole_diam/2)+wall_thickness, h=pole_diam, center=true);
        translate([mic_center,0,0]) cylinder(r2=mic_diam/2-5, r1=(mic_diam/2) + wall_thickness-5, h=pole_diam, center=true);
      }
    }
    translate([mic_center,0,0]) cylinder(r=mic_diam/2, h=pole_diam*2, center=true);
    cylinder(r=pole_diam/2, h=pole_diam*2, center=true);
    color("Silver") translate([-(pole_diam/2) - 5.5, 0, 0]) rotate([0,90,0]) cap_bolt(3,6);
  }

  translate([0,0,-pole_diam/2 - plate_thickness/2])
  difference() {


  }





}










// // rhode mic mount lock ring
// color("Silver") translate([mic_center,0,-pole_diam/2 - lock_ring_height/2]) cylinder(r=lock_ring_diam/2, h=lock_ring_height, center=true);

// // rhode mic mount top plate
// color("Silver") translate([mic_center,0,pole_diam/2 + flange_height/2]) cylinder(r1=flange_diam1/2, r2=flange_diam2/2, h=flange_height, center=true);

