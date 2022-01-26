////////////////////////////
//   ND filter holder for //
//   Thorlabs cage system //
//    CC BY SA 4.0        //
//   Chagas, AM 20220126  //
////////////////////////////


rodD = 6;
rodL = 20;

interRodDistance = 20;

filterX = 20;
filterY = 20;
filterZ = 2;


tol = 0.1;
$fn=30;
difference(){
cube([interRodDistance+2*rodD+5,interRodDistance+rodD+10,filterZ+2],center=true);


translate([(interRodDistance+2*rodD-5)/2,(interRodDistance+rodD-2)/2,0]){
cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate

translate([-(interRodDistance+2*rodD-5)/2,(interRodDistance+rodD-2)/2,0]){
cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate


translate([(interRodDistance+2*rodD)/2,-(interRodDistance+10)/2+1.5*rodD,0]){
cube([rodD+5,interRodDistance+rodD+10,10],center=true);
    }//end translate

translate([-(interRodDistance+2*rodD)/2,-(interRodDistance+10)/2+1.5*rodD,0]){
cube([rodD+5,interRodDistance+rodD+10,10],center=true);
    }//end translate

cube([filterX-1,filterY-1,filterZ+10],center=true);
translate([0,(interRodDistance+rodD+10)/2-interRodDistance/2,0]){
cube([filterX+2*tol,filterY+rodD+10,filterZ+2*tol],center=true);
}//end translate

}//end difference