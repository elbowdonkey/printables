$fn=100;

difference() {
  cylinder(r=24.3/2, h=6.4);
  cylinder(r=6.2/2, h=20, center=true);
}

for ( i = [0 : 3] )
{
    rotate( i * 360 / 4, [0, 0, 1])
    translate([0, 13.75/2, 6.4])
    cylinder(r=4.3/2, h=0.75);
}
