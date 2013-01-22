$fn=100;
max_h = 7;

module mainWing() {
  union() {
    difference() {
      hull() {
        translate([5,-5,0]) rotate([0,0,356]) cube([20,10,max_h], center=true);
        translate([5,-25,0]) cube([10,10,max_h], center=true);
        translate([25,-25,0]) cube([10,10,max_h], center=true);
        translate([88.5,-33.5,0]) rotate([0,0,98]) cube([6,6,max_h], center=true);
        translate([84,-9.5,0]) cylinder(r=4.5, h=max_h, center=true);
      }
      translate([0,-30.6,0]) scale([1,0.82,1]) cylinder(r=10, h=12, center=true);
      color("Red") translate([-10,0,0]) cube([20,60, 20], center=true);

      difference() {
        translate([44,-25.35 -46,-5]) rotate([0,0,356]) cube([46,46,10]);
        translate([37.4,-72.35,-6]) cube([10,60,12]);
      }
    }

  }
}

// difference() {
//   mainWing();
//   translate([0,-30.6,0]) scale([1,0.82,1]) cylinder(r=10, h=12, center=true);
// }

module aileron() {
  difference() {
    hull() {
      rotate([0,0,356]) translate([49,-24,0]) cube([12,12,max_h], center=true);
      translate([87.5,-24.5,0]) rotate([0,0,10]) cube([6,6,max_h], center=true);
      translate([84.4,-33,0]) cylinder(r=7, h=max_h, center=true);
    }
    translate([0.5,-0.5,0]) scale([1,1,2]) mainWing();
  }
}


module airfoil() {
  rotate([90,0,0])
  union() {
    difference() {
      hull() {
        translate([-9.5,0.5,0])  scale([1,1,1]) cylinder(r=0.75, h=2, center=true);
        translate([0,1,0]) rotate([0,0,1]) scale([5,1.2,1]) cylinder(r=2, h=2, center=true);
        translate([29,0,0]) cylinder(r=0.3, h=2, center=true);
      }
      color("Red") translate([10,-2,0]) cube([42,4,4], center=true);
    }
  }
}

module airfoilMold() {
  difference() {
    cube([70,150,10], center=true);
    translate([-10,0,0]) scale([1,80,1]) airfoil();
  }
}

module carvedWing() {
  difference() {
    union() {
      color("Red") mainWing();
      //color("Blue") aileron();
    }
    rotate([0,0,356]) translate([60,-20,0]) rotate([0,0,-90]) airfoilMold();

    // // holes for vertical supports on the fuse
    // color("Green") translate([9.5,-3,0]) rotate([-3,0,0]) cylinder(r=0.5, h=10, center=true);
    // color("Green") translate([6.5,-20,0]) rotate([-3,0,0]) cylinder(r=0.5, h=10, center=true);

    // // holes for cabanes
    // color("Green") translate([62,-8.5,0]) rotate([-3,0,0]) scale([1,2,1]) cylinder(r=0.5, h=10, center=true);
    // color("Green") translate([62,-24,0]) rotate([-3,0,0]) scale([1,2,1]) cylinder(r=0.5, h=10, center=true);

    // // holes for joining wing halves
    // translate([0,-5,1.5]) rotate([0,90,0]) cylinder(r=0.75, h=3, center=true);
    // translate([0,-15,1.5]) rotate([0,90,0]) cylinder(r=0.75, h=3, center=true);
  }
  // translate([49,-32,0.5])    cube([0.5,10,0.36]);
  // translate([49+10,-32,0.5]) cube([0.5,10,0.36]);
  // translate([49+20,-32,0.5]) cube([0.5,10,0.36]);
  // translate([49+30,-32,0.5]) cube([0.5,10,0.36]);
  // translate([49+40,-32,0.5]) cube([0.5,10,0.36]);
}

rib_width = 0.56;
gap_size = 11;

module ribbedWing() {
  difference() {
    carvedWing();
    translate([rib_width,0,0])
    difference() {
      union() {
        translate([0,-40,-1]) color("Pink") cube([7.67,40,8]);
        for ( i = [0 : 6] ) {
          translate([(gap_size * i) + (rib_width*i),-40,-1]) color("Pink") cube([gap_size,40,8]);
        }

        difference() {
          hull() {
            //translate([(gap_size * 7) + (rib_width*8),-40,-1]) color("Pink") cube([4,40,8]);
            translate([83,-31.4,3]) cylinder(r=7, h=8, center=true);
            translate([82.5,-10.6,3]) cylinder(r=4, h=8, center=true);
          }
          translate([(gap_size * 7) + (rib_width*8) - 4 - 0.6,-40,-1]) color("Pink") cube([4,40,8]);
        }

      }
      // color("Orange") rotate([0,0,356]) translate([0,-1, -2]) cube([100,20,10]);
      // color("Orange") rotate([0,0,355]) translate([0,-48.4, -2]) cube([100,20,10]);
      translate([0,-30,0]) scale([1,0.82,1]) cylinder(r=10, h=20, center=true);
      //rotate([0,0,356]) translate([49,-41.5, -2]) cube([50,20,10]);
      //
      // translate([-6.8,4,0]) scale([1.1,1.1,3]) aileron();
    }
    // balsa spar
  rotate([0,0,356]) translate([0,-9,2]) cube([100,1.6,1.6]);
  rotate([0,0,356]) translate([0,-1.3,-0.2]) cube([100,1.6,1.8]);
  rotate([0,0,356]) translate([45,-22.2,-0.2]) cube([60,1.6,1.8]);
  rotate([0,0,356]) translate([0,-30.5,-0.2]) cube([50,1.6,1.8]);
  }


}

// union() {
  ribbedWing();
  //mainWing();
  // airfoilMold();

translate([0.5,0,0]) mirror([1, 0, 0 ]) ribbedWing();
// }



