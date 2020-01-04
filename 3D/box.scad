$fn=100;

color("Gainsboro")
{
    translate([-105.5,-8,0])
        cube([211,8,90]);
}

color("dimgrey")
{
    translate([80.5,0,3])
        side_sink(84);
    translate([-80.5,0,3])
        mirror([1,0,0])
            side_sink(84);
    translate([-85.5,0,0])
        cube([171,246,3]);
    translate([-85.5,246,0])
        cube([171,3,90]);
}

module side_sink(sink_len)
{
    cube([5,246,sink_len]);
    for(i=[0:34])
        translate([0,(i*7.175)+1,0])
            hull()
            {
                translate([2,0,0])
                    cylinder(d=2, h=sink_len);
                translate([24,0,0])
                    cylinder(d=2, h=sink_len);
            }
}

color("SlateGray")
{
    translate([0,75,3.003])
        toroid_cover(131.5,74, 5, 140, 1, 110, 170);
}

module toroid_cover(dia, height, corner_radius, base, thickness, hole_dist, base_dia)
{
    difference()
    {
        minkowski()
        {
            cylinder(d=dia-(corner_radius*2),h=height-corner_radius);
            sphere(r=corner_radius);
        }
        translate([0,0,-1* corner_radius - 0.001])
            cylinder(d=dia+0.001,h=corner_radius+0.001);
    }
    difference()
    {
        cylinder(d=base_dia, h=thickness);
        for(i=[-1,1])
            for(j=[-1,1])
                translate([hole_dist/2*i,hole_dist/2*j,-0.001])
                    cylinder(d=4,h=thickness+0.002);
        translate([base*-1,base/-2,-0.001])
            cube([base/2,base,thickness+0.002]);
        translate([base/2,base/-2,-0.001])
            cube([base/2,base,thickness+0.002]);
        translate([base/-2,base*-1,-0.001])
            cube([base,base/2,thickness+0.002]);
        translate([base/-2,base/2,-0.001])
            cube([base,base/2,thickness+0.002]);
        
    }
}