module carraige() {
  $fn=50;
  counter_sink_depth = -1.6;

  difference() {
    union() {
      translate([-10,0,-2.75]) roundedBox(60, 30, 5, 2);
      translate([-40,0,-2.75]) roundedBox(35, 65, 5, 2);
      translate([-40, 21,-6.6]) roundedBox(35, 18, 5, 2);
      translate([-40,-21,-6.6]) roundedBox(35, 18, 5, 2);
    }

    translate([-50, 25,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-50, 17,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-40, 25,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-40, 17,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-30, 25,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-30, 17,   0]) cylinder(r=1.6, h=20, center=true);

    translate([-50,-17,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-50,-25,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-40,-25,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-40,-17,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-30,-17,   0]) cylinder(r=1.6, h=20, center=true);
    translate([-30,-25,   0]) cylinder(r=1.6, h=20, center=true);

    translate([-50, 4, 0]) cylinder(r=1.6, h=20, center=true);
    translate([-50,-4, 0]) cylinder(r=1.6, h=20, center=true);
    translate([-40, 4, 0]) cylinder(r=1.6, h=20, center=true);
    translate([-40,-4, 0]) cylinder(r=1.6, h=20, center=true);
    translate([-30, 4, 0]) cylinder(r=1.6, h=20, center=true);
    translate([-30,-4, 0]) cylinder(r=1.6, h=20, center=true);




    translate([-12, 6,-2.75]) cylinder(r=1.6, h=20, center=true);
    translate([-12,-6,-2.75]) cylinder(r=1.6, h=20, center=true);
    translate([ 12, 6,-2.75]) cylinder(r=1.6, h=20, center=true);
    translate([ 12,-6,-2.75]) cylinder(r=1.6, h=20, center=true);


    translate([-50, 25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-50, 17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-50,-17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-50,-25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);

    translate([-40, 25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-40, 17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-40,-17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-40,-25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);

    translate([-40, 4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-40, -4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);

    translate([-50, 4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-50,-4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-30, 4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-30,-4, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);

    translate([-30, 25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-30, 17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-30,-17, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-30,-25, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);

    translate([-12,  6, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([-12, -6, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([ 12,  6, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
    translate([ 12, -6, counter_sink_depth]) cylinder(r1=1.3, r2=3, h=2.8, center=true);
  }



}

