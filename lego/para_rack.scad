/*
  Basic settings

    length_in_studs:
      This is how long our rack gear will be. Since there are 5 teeth
      for ever two studs in length this should always be an even number.

    width_in_studs:
      This defines how wide the rack gear will be.
*/

length_in_studs = 12;
width_in_studs = 1;


/*
  Settings you might need to tweak a bit depending on your printer.

  If your printer prints perfectly, then you probably should leave these alone.
*/

stud_width = 8;                 // Default: 8mm. The length and width of a standard Lego stud
vertical_su = 3.2;              // Default: 3.2mm. The height of a single plate (not including the vertical height of the stud)
stud_height = vertical_su * 3;  // Default: vertical_su * 3. Three stacked plates == one standard brick.

tooth_height = 2.75;            // Default: 2.75mm. The height of the gear tooth measured from the top of single plate to its apex
tooth_width = 2.2;             // Default: 2.24mm. The width of the gear tooth (not the width of the brick)
teeth_per_group = 5;            // Default: 5. How many teeth per group, where group is a pair of studs.

wall_thickness = 1.4;           // Default: 1.2mm. The width of the walls on the underside of the brick.

peg_radius = 1.55;               // Default: 1.1mm. The radius of the pegs on the underside of the brick.


// Messing with things beyond this point is probably not a great idea.

tooth_gap = ((stud_width * 2) - (teeth_per_group * tooth_width)) / teeth_per_group; // Automatically calculate the width of the gap between teeth
group_length = (teeth_per_group * (tooth_width + tooth_gap)); // Automatically determine how long a group is

// Define the shape of our base plate
module base_brick(su_height) {
  length = length_in_studs * stud_width;
  width = width_in_studs * stud_width;
  height = su_height * vertical_su;

  cube([length,width,height]);
}


// Define the shape of a tooth
module tooth() {
  rotate ([90,0,180])
  linear_extrude(height = stud_width * width_in_studs, center = false, convexity = 0, twist = 0)
  polygon([[tooth_width/2,tooth_height],[tooth_width,0],[0,0]], convexity = false);
}

// Create as many teeth as we tell it to, including the gap between them
module teeth(count) {
  for ( i = [0 : count-1] ) {
    translate([(i * tooth_width) + (i * tooth_gap), 0, 0]) tooth();
  }
}

// Group up some teeth and center with their gaps
module teethGroup() {
  translate([tooth_width + (tooth_gap/2), 0, vertical_su]) teeth(5);
}

// Create as many groups of teeth as needed for the length of our rack
module allTeeth() {
  for ( i = [0 : (length_in_studs/2)-1] ) {
    translate([i * group_length, 0, 0]) teethGroup();
  }
}

// Knock down the sharp points so no one gets hurt
module shavedTeeth() {
  length = length_in_studs * stud_width;
  width = (width_in_studs * stud_width) + 1;
  height = vertical_su;

  subtract_height = 2.3;

  start_at = vertical_su + 2;

  difference()
  {
    allTeeth();
    translate([0,-0.5,start_at]) cube([length, width, height]);
  }
}

// Define the channel where the studs from whatever we snap this gear rack onto will go
module channel() {
  length = (length_in_studs * stud_width) - (wall_thickness * 2);
  width = stud_width - (wall_thickness * 2);
  height = vertical_su - 0.2;

  cube([length, width, height]);
}

// Define a half peg. Half pegs (vertically split cylinders) stand proud of the walls if their radius is greater than the wall thickness.
module halfPeg() {
  length = wall_thickness;
  width = stud_width;// - (wall_thickness * 2);
  height = vertical_su + 0.1;

  difference() {
    union() {
      translate([-(wall_thickness/2), -(width/2), 0]) cube([length, width, height]);
      cylinder(h = height, r1=peg_radius, r2=peg_radius, $fn=100);
    }

    translate([0, -((width + 0.5)/2), -1]) cube([wall_thickness+1, (width + 0.5), vertical_su+2]);
  }

  // difference() {
  //   cylinder(h = vertical_su, r1=peg_radius, r2=peg_radius, $fn=100);
  //   translate([0, -peg_radius, -1]) cube([peg_radius * 2, peg_radius * 2, vertical_su+2]);
  // }
}



// A pair of half pegs (their flat sides facing away from eachother) define the area where studs will nestle into.
module pegPair() {
  translate([stud_width/2,0,0]) halfPeg();
  translate([-stud_width/2,0,0]) rotate([0,0,180]) halfPeg();
}

// Create as many pairs of pegs as need for the length and width of the brick
module pegs() {
  for ( i = [0 : length_in_studs-1] ) {
    for ( j = [0 : width_in_studs-1] ) {
      translate([i * stud_width + (stud_width/2), j * stud_width + (stud_width/2), 0]) pegPair();
    }
  }
}

// Glom the shaved teeth and the base brick together, carve out the underside channels, and add the half pegs.
module rack() {
  //union() {
    shavedTeeth();
    difference() {
      base_brick(1);

      for ( j = [0 : width_in_studs-1] ) {
        translate([wall_thickness, wall_thickness + (j * stud_width), -0.5]) channel();
      }
    }
    pegs();
  //}
}


// Go!
rack();
//pegPair();