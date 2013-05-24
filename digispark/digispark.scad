$fn        = 50;

pcb_x      = 19.18;
pcb_y      = 17.66;
pcb_z      = 2.4;
usb_x      = 12.26;
usb_y      = 8.79;
hole_diam  = 1;
hole_pitch = 2.6;
hole_offset = 1.4;

module pcb() {
  color("DarkOliveGreen")
  difference() {
    union() {
      // main PCB
      cube(size=[pcb_x, pcb_y, pcb_z], center=false);

      // USB connector
      translate([(pcb_x - usb_x)/2,-usb_y,0])
      cube(size=[usb_x, usb_y, pcb_z], center=false);
    }

    for ( i = [0 : 5] ) {
      translate([hole_offset + (i * hole_pitch), pcb_y - hole_offset, 0])
      cylinder(r=hole_diam/2, h=10, center=true);
    }

    for ( i = [0 : 2] ) {
      translate([pcb_x - hole_offset, hole_offset + 1.2 + (i * hole_pitch), 0])
      cylinder(r=hole_diam/2, h=10, center=true);
    }
  }

  pad_spacing_a = 1.00;
  pad_spacing_b = 0.65;
  pad_a = [1.96, 8.0, 0.02];
  pad_b = [1.48, 6.9, 0.02];
  usb_pad_width = (pad_spacing_a * 2) + (pad_spacing_b * 2) + (pad_a[0] * 2) + (pad_b[0] * 2);


  color("Gold") {
    for ( i = [0 : 5] ) {
      difference() {
        translate([hole_offset + (i * hole_pitch), pcb_y - hole_offset, pcb_z])
        cylinder(r=hole_diam, h=0.02, center=true);
        translate([hole_offset + (i * hole_pitch), pcb_y - hole_offset, 0])
        cylinder(r=hole_diam/2, h=10, center=true);
      }

    }

    for ( i = [0 : 2] ) {
      difference() {
        translate([pcb_x - hole_offset, hole_offset + 1.2 + (i * hole_pitch), pcb_z])
        cylinder(r=hole_diam, h=0.02, center=true);
        translate([pcb_x - hole_offset, hole_offset + 1.2 + (i * hole_pitch), 0])
        cylinder(r=hole_diam/2, h=10, center=true);
      }
    }

    translate([usb_pad_width/2 - (pad_a[0] - pad_b[0])/2,0,0]) {
      translate([    0, -8.0, pcb_z]) cube(size=pad_a);
      translate([ pad_a[0] + pad_spacing_a, -6.9, pcb_z]) cube(size=pad_b);
      translate([ pad_a[0] + pad_b[0] + pad_spacing_a + pad_spacing_b, -6.9, pcb_z]) cube(size=pad_b);
      translate([ pad_a[0] + pad_b[0] + pad_b[0] + pad_spacing_a + pad_spacing_b + pad_spacing_a, -8.0, pcb_z]) cube(size=pad_a);
    }
  }

}

module vreg_leg() {
  color("Silver")
  union() {
    translate([0, 0, 0.8]) cube(size=[0.8, 0.8, 0.8], center=false);
    translate([0, 1.36, -0.1]) rotate([45,0,0])  cube(size=[0.8, 0.8, 1.6], center=false);
    translate([0, 0.8, 0]) cube(size=[0.8, 2.2, 0.8], center=false);
  }
}

module atmel_leg() {
  color("Silver")
  union() {
    translate([0, 0, 0.48]) cube(size=[0.48, 0.48, 0.48], center=false);
    translate([0, 0.82, -0.06]) rotate([45,0,0])  cube(size=[0.48, 0.48, 0.96], center=false);
    translate([0, 0.48, 0]) cube(size=[0.48, 1.16, 0.48], center=false);
  }
}

module smd_comp() {
  color("Silver") translate([0,0,0]) cube(size=[0.48, 0.35, 0.2], center=false);
  color("DimGray") translate([0,0.35,0]) cube(size=[0.48, 0.55, 0.2], center=false);
  color("Silver") translate([0,0.35+0.55,0]) cube(size=[0.48, 0.35, 0.2], center=false);
}

module chips() {
  // vreg
  vreg_w = 7;
  vreg_l = 5;
  vreg_x = 7.5;
  vreg_y = 3.9;
  vreg_x2 = vreg_x + vreg_w;
  vreg_y2 = vreg_y + vreg_l;

  color("DimGray") translate([vreg_x, 3.9, pcb_z]) cube(size=[7, 5, 2.35], center=false);
  color("Silver") translate([(vreg_x + (7 - 5.45)/2), 3.9-1.4, pcb_z]) cube(size=[5.45, 1.4, 0.39], center=false);

  translate([vreg_x, vreg_y2, pcb_z]) vreg_leg();
  translate([vreg_x - 0.4 + vreg_w/2, vreg_y2, pcb_z]) vreg_leg();
  translate([vreg_x2 - 0.8, vreg_y2, pcb_z]) vreg_leg();

  // atmel
  color("DimGray")
  translate([0.25, 6.16, pcb_z]) cube(size=[5.11, 5.11, 1.44], center=false);

  atmel_pitch = 5.11/3 - 0.48/2;

  for ( i = [0 : 3] ) {
     translate([0.25+0.48+(0.48/4) + (atmel_pitch*i),6.16,pcb_z]) rotate([0,0,180]) atmel_leg();
  }

  for ( i = [0 : 3] ) {
     translate([0.25+(0.48/4) + (atmel_pitch*i),6.16 + 5.11,pcb_z]) atmel_leg();
  }

  translate([0.2,1.75,pcb_z]) smd_comp();
  translate([0.88,1.75,pcb_z]) smd_comp();
  translate([6.4,2.8,pcb_z]) smd_comp();

  color("DimGray")
  translate([3.26,0.5,pcb_z]) cube(size=[1.66, 1.27, 0.94], center=false);

  color("DimGray")
  translate([5.75,5.5,pcb_z]) cube(size=[1.27, 1.66, 0.94], center=false);

  color("DimGray")
  translate([pcb_x - 0.05 - 1.58, pcb_y - 1.88 - 2.58 ,pcb_z]) cube(size=[1.58, 2.5, 1], center=false);

  color("DimGray")
  translate([10.5,13,pcb_z]) cube(size=[1.27, 1.66, 0.94], center=false);

  translate([6.4,11,pcb_z]) smd_comp();

  translate([pcb_x - 0.5,10,pcb_z]) rotate([0,0,90]) smd_comp();

}

module header() {
  difference() {
    cube(size=[2.6, 2.6, 7.8], center=true);
    cube(size=[1.5, 1.5, 10], center=true);
  }
}

module headers() {
  for ( i = [0 : 5] ) {
    color("DimGray")
    translate([hole_offset + (i * hole_pitch), pcb_y - hole_offset, 3.9 + pcb_z + 0.65]) header();
    translate([hole_offset + (i * hole_pitch), pcb_y - hole_offset, -1.24]) cylinder(r=hole_diam/2, h=4.46);
  }

  for ( i = [0 : 2] ) {
    color("DimGray")
    translate([pcb_x - hole_offset, hole_offset + 1.2 + (i * hole_pitch), 3.9 + pcb_z + 0.65]) header();
    translate([pcb_x - hole_offset, hole_offset + 1.2 + (i * hole_pitch), -1.24]) cylinder(r=hole_diam/2, h=4.46);
  }
}

// pcb();
// chips();
// headers();
