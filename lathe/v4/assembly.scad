use <MCAD/involute_gears.scad>;
use <MCAD/metric_fastners.scad>;
include <front.scad>;
include <scroll_back.scad>;
include <teeth.scad>;
include <gear.scad>;

// front();
teeth();
scroll_back();


// difference() {
  // cylinder(r=900, h=5, center=true);

  // rotate([0,0,30])
  // scroll_back();
// }
