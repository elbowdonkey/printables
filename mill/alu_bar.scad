module alu_bar(length=100) {
  difference() {
    color(alu_color) cube(size=[standard_alu_stock, length, standard_alu_stock], center=true);
    color(alu_color) translate([standard_alu_stock - (standard_alu_stock/6),0,standard_alu_stock - (standard_alu_stock/6)]) rotate([0,45,0]) cube(size=[standard_alu_stock, length+1, standard_alu_stock], center=true);
    color(alu_color) translate([-standard_alu_stock + (standard_alu_stock/6),0,-standard_alu_stock + (standard_alu_stock/6)]) rotate([0,-45,0]) cube(size=[standard_alu_stock, length+1, standard_alu_stock], center=true);
    color(alu_color) translate([-standard_alu_stock + (standard_alu_stock/6),0,standard_alu_stock - (standard_alu_stock/6)]) rotate([0,-45,0]) cube(size=[standard_alu_stock, length+1, standard_alu_stock], center=true);
    color(alu_color) translate([standard_alu_stock - (standard_alu_stock/6),0,-standard_alu_stock + (standard_alu_stock/6)]) rotate([0,45,0]) cube(size=[standard_alu_stock, length+1, standard_alu_stock], center=true);
  }
}