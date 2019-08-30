difference(){
translate([0,0,4])cube([40,40,8], center=true);
    translate([0,0,8-4.5])cylinder (d=25, h=4.5, $fn=100);
    
    cylinder (d=3,h=10, $fn=50);
    
    translate([6,0,0])cylinder (d=2,h=10, $fn=50);
    translate([-6,0,0])cylinder (d=2,h=10, $fn=50);
    
    translate([15,15,0])cylinder (d=6,h=10, $fn=50);
    translate([15,-15,0])cylinder (d=6,h=10, $fn=50);
    translate([-15,15,0])cylinder (d=6,h=10, $fn=50);
    translate([-15,-15,0])cylinder (d=6,h=10, $fn=50);
}