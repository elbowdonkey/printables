$fn=100;

spring_diameter = 4.8;
spring_height = 25;
wall_thickness = 0.5;
upper_height = spring_height/2;


module upper() {
  difference() {
    translate([0,0,upper_height/2]) cylinder(r=(spring_diameter - 0.45)/2, h=upper_height, center=true);
    translate([0,0,upper_height/2]) cylinder(r=((spring_diameter - 0.45)/2) - wall_thickness, h=upper_height+1, center=true);
  }
  difference() {
    translate([0,0,wall_thickness]) cylinder(r=(spring_diameter - 0.45)/2, h=wall_thickness*2, center=true);
    translate([0,0,wall_thickness]) cylinder(r=1, h=wall_thickness*3, center=true);
  }
}

module upperCap() {
  diameter = spring_diameter + (wall_thickness*2);
  rim_height = 1.6;
  difference() {
    union() {
      translate([0,0,rim_height/2 + spring_height/2]) cylinder(r=diameter/2, h=rim_height, center=true);
      hull() {
        translate([0,0,rim_height + spring_height/2 + 0.5]) cube(size=[diameter-0.5, 1.4, 1], center=true);
        translate([0,0,rim_height + spring_height/2 + (diameter)/2]) rotate([90,0,0]) cylinder(r=(diameter-0.5)/2, h=1.4, center=true);
      }
    }
    translate([0,0,rim_height + spring_height/2 + (diameter)/2]) rotate([90,0,0]) cylinder(r=0.62, h=3, center=true);
    translate([0,0,(upper_height/2) + rim_height - wall_thickness]) cylinder(r=(spring_diameter/2) + 0.05, h=upper_height, center=true);
  }
}

module lower() {
  translate([0,0,upper_height/2 - 2]) cylinder(r=0.95, h=upper_height, center=true);
  translate([0,0,upper_height-2]) cylinder(r=((spring_diameter - 0.45)/2) - wall_thickness - 0.05, h=2, center=true);
}

module lowerCap() {
  diameter = spring_diameter + (wall_thickness*2);
  rim_height = 1.6;
  translate([0,0,rim_height/2]) {
    difference() {
      union() {
        translate([0,0,0]) cylinder(r=diameter/2, h=rim_height, center=true);
        //translate([0,0,-1]) cylinder(r1=wall_thickness+0.5, r2=diameter/2 - 0.5, h=3, center=true);
        hull() {
          translate([0,0,0 + 0.5]) cube(size=[diameter-0.5, 1.4, 1], center=true);
          translate([0,0,0 + (diameter)/1.5]) rotate([90,0,0]) cylinder(r=(diameter-0.5)/2, h=1.4, center=true);
        }
      }
      translate([0,0,0 + (diameter)/1.5]) rotate([90,0,0]) cylinder(r=0.62, h=3, center=true);
      color("Red") translate([0,0,-1]) cylinder(r=1+0.05, h=2.5, center=true);
    }

  }

}

upper();
// translate([10,0,upper_height - 1]) rotate([180,0,0]) lower();
// translate([20,0,-upper_height]) upperCap();
// translate([30,0,0]) lowerCap();

