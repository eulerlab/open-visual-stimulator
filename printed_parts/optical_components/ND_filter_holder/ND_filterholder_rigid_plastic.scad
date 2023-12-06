////////////////////////////
//   ND filter holder for //
//   Thorlabs cage system //
//    CC BY SA 4.0        //
//   Chagas, AM 20220126  //
////////////////////////////


rodD = 6;
rodL = 20;
cageL = 71.1;
interRodDistance = 60;

filterD = 50;
filter1T = 5/3.6;
filter2T = 5/3.6+0.4;

sockT = 6;

tol = 0.1;
$fn=40;

filterThick=filter1T+3;

difference(){
            union(){
translate([0,cageL/2-rodD-7,filterThick/2]){
        cube([cageL,25,filterThick],center=true);
}//translate
cylinder(d=filterD+2*tol+2,h=filterThick);
}//union
    union(){
    translate([filterD/2-5,(filterD)/2+tol,-0.1]){
    cylinder(d=3+2*tol,h=filterThick+10);
    }
    translate([-filterD/2+5,(filterD)/2+tol,-0.1]){
    cylinder(d=3+2*tol,h=filterThick+10);
    }
    translate([0,0,-1]){
cylinder(d=filterD+2*tol-2,h=sockT+5);
    }//translate
    translate([0,0,+3]){
cylinder(d=filterD+2*tol,h=sockT);
    }//translate
    
    translate([(interRodDistance)/2+2.2,19,(filterThick+5)/2-0.1]){
cube([rodD+5,20,10],center=true);
    }//end translate
translate([-(interRodDistance+rodD)/2+0.8,19,(filterThick+5)/2-0.1]){
cube([rodD+5,20,10],center=true);
    }//end translate
       translate([(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate

    translate([-(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate  
}//union
}//difference


translate([0,-(filterD)/2-3-tol,0]){
difference(){
cylinder(d=6,h=filterThick);
    translate([0,0,-0.1])
    cylinder(d=3+2*tol,h=filterThick+10);
}//end difference
}



