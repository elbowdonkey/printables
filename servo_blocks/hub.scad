// 17.43
module hub() {
  shaft_height = 12;

  difference() {
    union() {
      cylinder(r=HUB_DIAM/2, h=PLATE_THICKNESS, center=true);
      translate([0,0,-shaft_height/2 - PLATE_THICKNESS/2]) cylinder(r=HUB_MAJOR_HOLE_DIAM/2, h=shaft_height, center=true);
    }


    translate([0,0,-3])
    for ( i = [0 : 7] ) {
      rotate( i * 360 / 8, [0, 0, 1])
      translate([0, HUB_SCREW_CENTERS/2, 0])
      cap_bolt(SCREW_HOLE_DIAM,10);
    }
    translate([0,0,-(shaft_height-PLATE_THICKNESS)/2]) cylinder(r=3, h=shaft_height+PLATE_THICKNESS+2, center=true);
    cylinder(r=1.5, h=40, center=true);
    translate([0,0,-shaft_height-3]) color("Red") slottedHorn();
  }



}