$fn=50;

module rounded_square(d,r) {
    minkowski() {
        translate([r,r]) square([d[0]-2*r, d[1]-2*r]);
        circle(r);
    }
}
difference(){
color( [1, 1, 1, 1] ) { 
rotate([90,0,0])
linear_extrude(height = 2)
        rounded_square([64,89], 2);
}
    { 
    translate([4,-2,75])
    rotate([90,0,0]) 
    text("A");}
    translate([50,-2,14])
    rotate([270,0,0]) 
    text("A");
    
    translate([32,-2,44.5])
    rotate([90,0,0])
        cylinder(  2, d=30, center=true);
    }
