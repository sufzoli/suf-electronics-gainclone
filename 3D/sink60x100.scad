$fn=100;
sink_len=100;

color("silver")
{
    for(i=[0:15])
        translate([0,0,(i*3.93)+0.5])
            hull()
            {
                translate([sink_len/-2,9.5,0])
                    rotate([0,90,0])
                        cylinder(d=1, h=sink_len);
                translate([sink_len/-2,2,0])
                    rotate([0,90,0])
                        cylinder(d=1, h=sink_len);
            }
    translate([sink_len/-2,0,0])
        cube([sink_len,2,60]);
}