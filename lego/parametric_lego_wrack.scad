/*
  Adjust the length and width as needed.

  Length should only be an even number because of the way the "stud pocket" dimensions work.
  Width can be odd or even.

*/

studs_length = 4;
studs_width = 1;

/*
  Everything below this line probably doesn't to be messed with.
*/

teeth_per_two_studs = 5; // this is a fixed amount, so studs should be in multiples of 2
totalteeth = (studs_length/2) * teeth_per_two_studs;
toothwidth = 2.0;
toothheight = 2.54;
toothgap = 1.0;
studwidth = 3.15;
teeth_per_group = 5;
group_length = studwidth * 4;
length = totalteeth * studwidth;

width = 7.8;
height = 5.8;

brick_width = 5.0625;
end_thickness = 1.2;
middle_thickness = 2.9;

module base() {
  difference()
  {
    cube([studwidth * studs_width,width,height]);
  }
}

module tooth() {
  rotate ([90,0,0])
  linear_extrude(height = brick_width*2, center = false, convexity = 0, twist = 0)
  polygon([[toothwidth/2,toothheight],[toothwidth,0],[0,0]], convexity = N);
}

module teeth(starting_pos_x, starting_pos_y) {
  /*
    Create each tooth, then chop the overall brick to size
  */
  union() {
    for ( i = [0 : teeth_per_group-1] ) {
      translate([starting_pos_x + (i*toothwidth) + (i * (toothgap)), starting_pos_y + width + 1, height-0.5]) tooth();
    }
  }

}

module toothGroup(starting_pos_x, starting_pos_y) {
  /*
    Dimensions for the channel on the underside of the brick
  */
  end_x_b = starting_pos_x + end_thickness;
  end_y_b = starting_pos_y + 1.15;
  end_z_b = -0.1;
  end_x_d = (group_length - 2 * end_thickness);
  end_y_d = 5.5;
  end_z_d = 2.6;

  /*
    Dimensions for the cube used to cut off the teeth points
  */
  top_x_a   = starting_pos_x - 0.5;
  top_y_a   = starting_pos_y - 0.5;
  top_z_a   = height - 0.5;
  top_x_b   = starting_pos_x + group_length + 2;
  top_y_b   = 10;
  top_z_b   = 2;

  difference() {
    union() {
      // translate([starting_pos_x + (0*toothwidth), starting_pos_y, 0]) base();
      // translate([starting_pos_x + (1*toothwidth), starting_pos_y, 0]) base();
      for ( i = [0 : teeth_per_group-1] ) {
        translate([starting_pos_x + (i*studwidth), starting_pos_y, 0]) base();
      }
    }
    translate([end_x_b, end_y_b, end_z_b]) cube([end_x_d, end_y_d, end_z_d]); // channel
    translate([top_x_a, top_y_a, top_z_a]) cube([top_x_b, top_y_b, top_z_b]);
  }


  translate([toothgap/2, 0, 0]) teeth(starting_pos_x,starting_pos_y);




  /*
    Dimensions for the bridge that separates a pair of studs on the
    underside of the brick.
  */
  peg_radius = 1.2;
  bridge_x_a = starting_pos_x;
  bridge_y_a = starting_pos_y + (width/2);// - (peg_radius/2);
  bridge_z_a = 0;
  bridge_x_b = middle_thickness;
  bridge_y_b = width/2;
  bridge_z_b = 3;

  //translate([bridge_x_a, bridge_y_a, bridge_z_a]) cube([bridge_x_b, bridge_y_b, bridge_z_b]);
  // difference() {
  //   translate([bridge_x_a, bridge_y_a, bridge_z_a]) cylinder(h = 3, r1=1.5, r2=1.5, $fn=100);
  //   translate([starting_pos_x-4, starting_pos_y + (width/2)-2, -1]) cube([4, 4, 5]);
  // }

  translate([bridge_x_a + width, bridge_y_a, bridge_z_a]) cylinder(h = 3, r1=1.5, r2=1.5, $fn=100);

  // difference() {
  //   translate([bridge_x_a + (width*2), bridge_y_a, bridge_z_a]) cylinder(h = 3, r1=1.5, r2=1.5, $fn=100);
  //   translate([group_length+starting_pos_x, starting_pos_y + (width/2)-2, -1]) cube([4, 4, 5]);
  // }
}

groups = studs_length/2;
for (l = [0 : groups -1] ) {
  for (w = [0 : studs_width -1] ) {
    toothGroup(l * group_length, w * width);
  }
}
