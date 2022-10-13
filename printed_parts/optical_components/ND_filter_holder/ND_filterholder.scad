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

filterD = 51.8;
filter1T = 5/3.6;
filter2T = 5/3.6+0.4;

sockT = 8;

tol = 0.1;
$fn=40;


module filter_sock(filterThick=1){
    //positive
    

    difference(){
        union(){
translate([0,cageL/2-rodD-7,(sockT)/2]){
        cube([cageL,25,sockT],center=true);
    }//end translate
   cylinder(d=filterD+2*tol+2,h=sockT);
}//end union 
    translate([(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate

    translate([-(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate        
    
    
    translate([0,0,-5]){
    cylinder(d=filterD+2*tol-2.5,h=filterThick+2*tol+20);
    }//end translate
    translate([0,0,(sockT-(filterThick+2*tol))/2]){
        cylinder(d=filterD+2*tol,h=filterThick+2*tol);
    
      /*  
        rotate_extrude(convexity = 10, $fn = 50){
        translate([(filterD+2*tol-2)/2, 0, 0]){
            circle(r = filterThick, $fn = 100);
            }// end translate
        }//end rotate_extrude
        */
    }//end translate
    
    //translate([0,0,(sockT-filterThick)/2]){
    //%cylinder(d=filterD+2*tol,h=filterThick+2*tol);
    //}//end translate
   translate([(interRodDistance)/2+2.2,19,(sockT)/2]){
cube([rodD+5,20,10],center=true);
    }//end translate
translate([-(interRodDistance+rodD)/2+0.8,19,(sockT)/2]){
cube([rodD+5,20,10],center=true);
    }//end translate

    }//end difference
   }//end module



module filter_hanger(){
    difference(){
    cube([cageL,cageL-3,filter2T+5],center=true);

    translate([(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate

    translate([-(interRodDistance)/2,interRodDistance/2-1,0]){
    cylinder(d=rodD+2*tol,h=rodL,center=true);}
//end translate


translate([(interRodDistance)/2+2.6,-rodD/2-1,0]){
cube([rodD+5,interRodDistance+rodD+1,10],center=true);
    }//end translate

translate([-(interRodDistance+rodD)/2+0.8,cageL/2-9,0]){
%cube([rodD+5,5,10],center=true);
    }//end translate
translate([-(interRodDistance+rodD)/2,-rodD/2-6,0]){
cube([rodD+5,interRodDistance+rodD+1,10],center=true);
    }//end translate

    translate([0,0,-10]){
        cylinder(d=filterD-2,h=sockT+20);
       
        }//end translate
            translate([0,0,-sockT/2]){
    cylinder(d=filterD+4*tol+2,h=sockT);
    }//end translate
        translate([0,filterD/2,0]){
         cube([filterD+4*tol+2,filterD+4*tol+2,sockT+2*tol],center=true);
            
        }//end translate
    }//end difference
    }//end module

//filter_hanger();
filter_sock(filterThick=5);
//translate([60,00,0]){
//filter_sock(filterThick=filter1T);
//}

