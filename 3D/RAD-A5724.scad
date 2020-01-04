$fn=100;
sink_len=40;

color("silver")
{
    for(i=[0:10])
        translate([(i*12)-60,0,0])
            hull()
            {
                translate([0,34,0])
                    cylinder(d=2, h=sink_len);
                translate([0,5,0])
                    cylinder(d=4, h=sink_len);
            }
    translate([-62,0,0])
        cube([124,5,sink_len]);
}