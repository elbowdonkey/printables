use <digispark.scad>;
use <rgb_shield.scad>;

color("LightGrey") {
  pcb();
  chips();
  headers();
}

translate([0,1.2,14]) shield_assembly();