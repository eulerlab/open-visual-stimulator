difference(){
cylinder (d=17, h=4.8, $fn=100);
   translate ([-10,0,0])cube([20,2,5]);
   translate ([0,0,2.4])rotate([-90,0,0])cylinder (d=3, h=9, $fn=50);
}
translate ([0,0,4.8])cylinder (d=25, h=8, $fn=100); 
translate ([0,0,4.8+8])cylinder (d=10, h=15, $fn=100); 