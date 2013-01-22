beam_width = 7.4;
beam_height = 7.5/2;
end_wall_width = 2;
major_hole_radius = 3.065;
minor_hole_radius = 2.42;
minor_hole_height = 0.81;
beam_hole_length = (end_wall_width + (major_hole_radius*2));

module beam(holes, hole_type="axle") {
  holes = holes - 1;
  difference() {
    hull() {
      translate([(-(beam_hole_length * holes)/2),0,0]) cylinder(h=beam_height, r=beam_width/2, center=true);
      translate([((beam_hole_length * holes)/2),0,0]) cylinder(h=beam_height, r=beam_width/2, center=true);
    }
    translate([-(beam_hole_length * holes)/2, 0, 0])
    union() {
      for (i=[-1:holes]) {
        if (hole_type == "peg" || hole_type == "axle") {
          if (hole_type == "peg") {
            translate([i * beam_hole_length,0,0]) beam_hole();
          }
          if (hole_type == "axle") {
            translate([i * beam_hole_length,0,0]) axle_hole();
          }
        }
        //if (hole_type == "none") {
      }
    }
  }
}

module plate(l=2, w=2, h=1) {
  l = l - 1;
  w = w - 1;
  bhl = beam_hole_length;
  bl = (bhl * l) / 2;
  bw = (bhl * w) / 2;
  hh = h * beam_height;

  xa = 0 - (l/2);
  xb = (l/2);
  ya = 0 - (w/2);
  yb = (w/2);

  difference() {
    hull() {
      translate([-bl,-bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([ bl, bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([-bl, bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([ bl,-bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
    }

    for (x=[xa:xb]) {
      for (y=[ya:yb]) {
        translate([x * bhl, y * bhl, 0]) axle_hole(length=h);
      }
    }
  }
}

module axle_array(l=2, w=2, h=1) {
  l = l - 1;
  w = w - 1;
  bhl = beam_hole_length;
  bl = (bhl * l) / 2;
  bw = (bhl * w) / 2;
  hh = h * beam_height;

  xa = 0 - (l/2);
  xb = (l/2);
  ya = 0 - (w/2);
  yb = (w/2);

  for (x=[xa:xb]) {
    for (y=[ya:yb]) {
      translate([x * bhl, y * bhl, 0]) axle_hole(length=h);
    }
  }
}

module altPlate(l=2, w=2, h=1, cap=false) {
  l = l - 1;
  w = w - 1;
  bhl = beam_hole_length;
  bl = (bhl * l) / 2;
  bw = (bhl * w) / 2;
  //fh = h * 2;
  hh = h * beam_height;


  ya = 0 - w/2;
  yb = w/2;
  za = 0 - h/2;
  zb = h/2;

  difference() {
    hull() {
      translate([-bl,-bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([ bl, bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([-bl, bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);
      translate([ bl,-bw, 0]) cylinder(h=hh, r= beam_width/2, center=true);

      // translate([-bl,-bw, 0]) cube([beam_width, beam_width, hh], center=true);
      // translate([ bl, bw, 0]) cube([beam_width, beam_width, hh], center=true);
      // translate([-bl, bw, 0]) cube([beam_width, beam_width, hh], center=true);
      // translate([ bl,-bw, 0]) cube([beam_width, beam_width, hh], center=true);
    }

    for (y=[ya:yb]) {
      for (z=[za:zb]) {
        translate([0,y*bhl,(z * bhl) + (bhl)]) rotate([0,90,0]) axle_hole(length=w);
      }
    }
  }
  if (cap) {
    hull() {
      translate([-bl,-bw, beam_height*3]) cylinder(h=beam_height, r= beam_width/2, center=true);
      translate([ bl, bw, beam_height*3]) cylinder(h=beam_height, r= beam_width/2, center=true);
      translate([-bl, bw, beam_height*3]) cylinder(h=beam_height, r= beam_width/2, center=true);
      translate([ bl,-bw, beam_height*3]) cylinder(h=beam_height, r= beam_width/2, center=true);
    }
  }
}

module beam_hole() {
  // major holes
  translate([0,0, (beam_height/2)-(minor_hole_height/2)+0.5]) cylinder(h=minor_hole_height+1, r=major_hole_radius, center=true);
  translate([0,0,-(beam_height/2)+(minor_hole_height/2)-0.5]) cylinder(h=minor_hole_height+1, r=major_hole_radius, center=true);

  // minor hole
  cylinder(h=10, r=minor_hole_radius, center=true);
}

module axle_hole(length=2) {
  rotate([90,0,0]) axle(length=length);
}

module axle(length=2) {
  diameter = 4.9;
  total_length = (beam_height * length) + 0.5;
  width = 2.2;

  cube([width, total_length, diameter], center=true);
  rotate([0,90,0]) cube([width, total_length, diameter], center=true);
}