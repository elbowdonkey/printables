$fn=100;
length=30;

// difference() {
//   union(){
//     cylinder(r=2, h=0.8, center=true);
//     difference() {
//       translate([length/2,0,0]) scale([4,1,1]) cylinder(r=4, h=0.8, center=true);
//       translate([length/2,0,0]) scale([4,1,1]) cylinder(r=3.4, h=2, center=true);
//     }
//     translate([length,0,0]) cylinder(r=2, h=0.8, center=true);
//   }

//   cylinder(r=1.3/2, h=2, center=true);
//   translate([length,0,0]) cylinder(r=1.3/2, h=2, center=true);
// }



difference() {
  union() {
    cylinder(r=2, h=0.8, center=true);
    translate([length,0,0]) cylinder(r=2, h=0.8, center=true);
    difference() {
      union() {
        for ( i = [0 : 4] ) {
          translate([i*-0.8,0,0]) {
            translate([i*8,0,0]) loop();
            translate([i*8 + (4-0.4),0.1,0]) mirror([0,1,0]) loop();
          }
        }
    }
    color("Red") translate([length+4,0,0]) cube([8,10,2], center=true);
  }
}
  cylinder(r=1.3/2, h=2, center=true);
  translate([length,0,0]) cylinder(r=1.3/2, h=2, center=true);
}






module loop() {
  difference() {
    difference() {
      hull() {
        translate([0,0,0]) cylinder(r=2, h=0.8, center=true);
        translate([0,-4,0]) cylinder(r=2, h=0.8, center=true);
      }

      hull() {
        translate([0,-0.1,0]) cylinder(r=1.6, h=2, center=true);
        translate([0,-6,0]) cylinder(r=1.6, h=2, center=true);
      }
    }
    color("Red") translate([0,-5,0]) cube([8,10,2], center=true);
  }
}