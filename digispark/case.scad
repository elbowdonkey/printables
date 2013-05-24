include <digispark.scad>;
include <rgb_shield.scad>;

$fn=100;

// pcb();
// chips();
// headers();
// translate([0,1.2,14]) shield_assembly();

pcb_x      = 19.18;
pcb_y      = 17.66;

bottom_h = 33;

// pcb();
// chips();
// headers();
// translate([0,1.2,14]) {
//   rgb_pcb();
//   translate([1.15,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
//   translate([3.65,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
//   translate([14.9,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
//   translate([9.71,7,0]) led();
// }
// translate([0,1.2,14]) shield_assembly();

// main shell
corner_r = 0.25;
module main_shell() {
  difference() {
    hull() {
      translate([0,corner_r,-2]) cylinder(r=corner_r, h=bottom_h);
      translate([pcb_x, pcb_y-(corner_r/2),-2]) cylinder(r=corner_r, h=bottom_h);
      translate([pcb_x, corner_r,-2]) cylinder(r=corner_r, h=bottom_h);
      translate([0, pcb_y-(corner_r/2),-2]) cylinder(r=corner_r, h=bottom_h);
    }
    translate([0,-1,0]) cube(size=[pcb_x, pcb_y+1, 30]);

    hull() {
      translate([9.71,8.2,17]) cylinder(r=2.8, h=10);
      translate([9.71,-3,17]) cylinder(r=2.8, h=10);
    }

    translate([9.71, 8.2,10]) cylinder(r=4, h=10);

    translate([pcb_x - 2.5,1,-1.25]) cube(size=[2, 8, 4]);
    translate([0,pcb_y - 2.5,-1.25]) cube(size=[16, 2, 4]);
  }
}


// tiny part
module tiny_part() {
  difference() {
    union() {
      translate([0,0,pcb_z]) cube(size=[pcb_x, 1.2, 18.6]);
      difference() {
        translate([pcb_x/2 - 2.68,0,pcb_z+2.35]) cube(size=[5.6, 10, 16.25]);
        translate([0,1.2,14]) cube(size=[pcb_x, 20, pcb_z]);
        translate([9.71, 8.2,17]) cylinder(r=2.8, h=10);
        translate([9.71, 8.2,15]) cylinder(r=4, h=5);
        translate([5,8.2,19]) cube(size=[10, 10, 10]);
      }
    }
    main_shell();
  }
}


// tiny_part();
main_shell();
translate([pcb_x,0,-5]) rotate([0,180,0]) main_shell();







