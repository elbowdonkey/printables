$fn = 100;

shaft_diam = 12.67;
ball_diam = 6.9;
outer_radius = (shaft_diam/2) + ball_diam + 5;
length = ball_diam * 6;


module shaft() {
  cylinder(r=shaft_diam/2, h=60, center=true);
}

module bearing() {
  difference() {
    // hull() {
      cylinder(r=outer_radius, h=length, center=true);
      //translate([0,outer_radius,0]) cube(size=[outer_radius*2, outer_radius, length], center=true);
    //}
    scale([1.1, 1.1, 1.1]) shaft();
    for (i = [0:7]) {
      color("Orange") rotate([0,0,i * 360/8]) translate([shaft_diam/2 + ball_diam/2,0,0]) cylinder(r=ball_diam/2, h=60, center=true);
    }
    rotate([0,0,22.5]) {
      for (i = [0:7]) {
        color("Orange") rotate([0,0,i * 360/8]) translate([15,0,(length/2)-5.5]) cylinder(r=1.55, h=12, center=true);
        color("Orange") rotate([0,0,i * 360/8]) translate([15,0,-(length/2)+5.5]) cylinder(r=1.55, h=12, center=true);
      }
    }


    color("Blue") translate([outer_radius - 6,20,(length/2) - 6]) rotate([90,0,0]) cylinder(r=1.55, h=10, center=true);
    color("Blue") translate([-(outer_radius - 6),20,(length/2) - 6]) rotate([90,0,0]) cylinder(r=1.55, h=10, center=true);
    color("Blue") translate([outer_radius - 6,20,-((length/2) - 6)]) rotate([90,0,0]) cylinder(r=1.55, h=10, center=true);
    color("Blue") translate([-(outer_radius - 6),20,-((length/2) - 6)]) rotate([90,0,0]) cylinder(r=1.55, h=10, center=true);
  }
}

module cap() {
  difference() {
    cylinder(r=outer_radius, h=6, center=true);
    scale([1.1, 1.1, 1.1]) shaft();
    rotate([0,0,22.5]) {
      for (i = [0:7]) {
        color("Orange") rotate([0,0,i * 360/8]) translate([15,0,0]) cylinder(r=1.55, h=8, center=true);
        color("Red") rotate([0,0,i * 360/8]) translate([15,0,1.5]) cylinder(r=2.75, h=4, center=true);
      }
    }

    // for (i = [0:3]) {
    //   color("Red") rotate([0,0,i * 360/4]) translate([shaft_diam/2 + ball_diam/2 + 1,0,3]) cylinder(r=2.75, h=6, center=true);
    // }
  }
}



translate([40,0,2.5]) cap();
translate([80,0,2.5]) cap();
//translate([0,0,length/2]) bearing();
//shaft();



