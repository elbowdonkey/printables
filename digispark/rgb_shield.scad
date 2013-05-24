$fn        = 100;

rgb_pcb_x      = 19;
rgb_pcb_y      = 16.55;
rgb_pcb_z      = 2.4;
rgb_hole_diam  = 1;
rgb_hole_pitch = 2.6;
rgb_hole_offset = 1.4;

module rgb_pcb() {
  color("DarkOliveGreen")
  difference() {
    cube(size=[rgb_pcb_x, rgb_pcb_y, rgb_pcb_z]);

    for ( i = [0 : 5] ) {
      translate([rgb_hole_offset + (i * rgb_hole_pitch), rgb_pcb_y - rgb_hole_offset, 0])
      cylinder(r=rgb_hole_diam/2, h=10, center=true);
    }

    for ( i = [0 : 2] ) {
      translate([rgb_pcb_x - rgb_hole_offset, rgb_hole_offset + (i * rgb_hole_pitch), 0])
      cylinder(r=rgb_hole_diam/2, h=10, center=true);
    }
  }
}

module resistor() {
  res_end_r = 1.14;
  res_l = 6.7;
  pitch = 7.7;
  lead_r = 0.2;

  translate([0,0,res_end_r]) {
    color("Tan")
    translate([(pitch - res_l + res_end_r)/2,0,0]) {
      translate([res_end_r,0,0]) sphere(res_end_r);
      translate([res_end_r/2,0,0]) rotate([0,90,0]) cylinder(r=0.95, h=res_l - (res_end_r*2));
      translate([res_l - (res_end_r*2),0,0]) sphere(res_end_r);
    }

    color("Silver") translate([lead_r/2, 0, 0]) sphere(lead_r);
    color("Silver") translate([lead_r/2, 0, 0]) rotate([0,90,0]) cylinder(r=lead_r, h=pitch - lead_r);
    color("Silver") translate([pitch - lead_r/2, 0, 0]) sphere(lead_r);
  }

  color("Silver") translate([lead_r/2,0,0]) cylinder(r=lead_r, h=res_end_r);
  color("Silver") translate([pitch - lead_r/2,0,0]) cylinder(r=lead_r, h=res_end_r);
}

module led() {
  led_r = 2.5;
  led_h = 8.8;
  ridge_r = 2.935;
  lead_pitch = 1.625;
  lead_length = 5;
  lead_lw = 0.7;
  below_pcb = 0.3;

  color("White")
  translate([0,0,lead_length - below_pcb])
  difference() {
    union() {
      translate([0,0,led_h-led_r]) sphere(r=led_r);
      cylinder(r=led_r, h=led_h-led_r);
      cylinder(r=ridge_r, h=1);
    }
    translate([led_r,-5,-1]) cube(size=[10, 10, 10]);
  }
  color("Silver") {
    for ( i = [-1.5 : 1.5] ) {
      translate([(i * -lead_pitch)-lead_lw/4,0,-below_pcb+lead_length/2]) cube(size=[lead_lw, lead_lw, lead_length], center=true);
    }
  }
}

module rgb_header() {
  cube(size=[2.6, 2.6, 2.6], center=true);
}

module rgb_headers() {
  for ( i = [0 : 5] ) {
    color("DimGray")
    translate([rgb_hole_offset + (i * rgb_hole_pitch), rgb_pcb_y - rgb_hole_offset, -1.3]) rgb_header();
    translate([rgb_hole_offset + (i * rgb_hole_pitch), rgb_pcb_y - rgb_hole_offset, 1.45-11.3+rgb_pcb_z]) cylinder(r=rgb_hole_diam/2, h=11.3);
  }

  for ( i = [0 : 2] ) {
    color("DimGray")
    translate([rgb_pcb_x - rgb_hole_offset, rgb_hole_offset + (i * rgb_hole_pitch), -1.3]) rgb_header();
    translate([rgb_pcb_x - rgb_hole_offset, rgb_hole_offset + (i * rgb_hole_pitch), 1.45-11.3+rgb_pcb_z]) cylinder(r=rgb_hole_diam/2, h=11.3);
  }
}

module shield_assembly() {
  rgb_pcb();
  translate([1.15,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
  translate([3.65,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
  translate([14.9,2.4,rgb_pcb_z]) rotate([0,0,90]) resistor();
  translate([9.71,7,0]) led();
  rgb_headers();
}

// shield_assembly();

