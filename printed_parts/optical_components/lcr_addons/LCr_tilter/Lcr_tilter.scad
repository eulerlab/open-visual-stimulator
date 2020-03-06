/*
 LCr tilter
 tilt the LCr downwards to compensate for 
 its upwards projection.
 
 CC BY SA 4.0
 AM Chagas
 20200304

*/
platex = 152;
platey = 105;
platez = 3;

hole1yd = 15.75;
hole1xd = 5.45;

inter1yd = 67.6;
inter1xd = 130;

centerholesx = (platex-inter1xd)/2;
centerholesy = (platey-inter1yd)/2+2;

hole1d = 6.5;
hole2d= 4.3;  

tol = 0.1;
//m4 nut
nutd = 6.95;
nuth = 3.2;
//m6 nut
//nutd = 9.82;
//nuth = 4.84;
wall = 2;
    
$fn=20;
linkl = 20;
module nut_pocket(){

    difference(){
    cube([nutd+wall+5,nutd+wall,nuth+wall+platez]);
        translate([2.5+wall/2,wall/2,wall-0.3]){
        cube([nutd+2*tol,nutd+wall,nuth+2*tol]);
        }//translate
    }//difference
}
module plate_holes(){
    
    cylinder(d=hole1d,h=platez+1);
    
    translate([0,inter1yd,0]){
        cylinder(d=hole1d,h=platez+1);
        }
    
    translate([inter1xd,inter1yd,0]){
        cylinder(d=hole1d,h=platez+1);
        }
        
    translate([inter1xd,0,0]){
        cylinder(d=hole1d,h=platez+1);
        }    
        }
    
    
    
module plate(extension=1){
difference(){
union(){
cube([platex,platey,platez]);
    
    if (extension==1){
        translate([platex/2-(nutd+wall)/2-2.5,  platey-0.1,-nuth-0.5-platez/2]){
            nut_pocket();
            }//translate
        }//end if
    if (extension==2){
        translate([platex/2-(nutd+wall)/2-2.5,  platey-0.1,0]){ 
        cube([nutd+wall+5,nutd+wall,platez]);
        }
        }//end if
    }//union
union(){
    translate([centerholesx,centerholesy,-0.1]){
        plate_holes();
    }//translate
    if (extension==1){        
    translate([platex/2,platey+hole2d,-10.5]){
        cylinder(d=hole2d,h=platez+11);
        
        }//translate
        }//end if
    }//union
    
}//difference
}//plate 
module plate1(){
plate();
for (i=[0:platex/4:platex/4]){
    echo(i);
rotate([0,90,0]){
    translate([(hole2d+2)/2-1,1,i]){
    difference(){
        cylinder(d=hole2d+2,h=platex/8-0.5);
            translate([0,0,-0.5]){
                cylinder(d=hole2d,h=platex/4+1);
            }//translate
        }//difference
    }//translate
    }//rotate

}//for

for (i=[3*platex/4:platex/4:3*platex/4]){
    echo(i);
rotate([0,90,0]){
    translate([(hole2d+2)/2-1,1,i]){
    difference(){
        cylinder(d=hole2d+2,h=platex/8-0.5);
            translate([0,0,-0.5]){
                cylinder(d=hole2d,h=platex/4+1);
            }//translate
        }//difference
    }//translate
    }//rotate

}//for

}//plate1
module plate2(){
translate([0,-5,0]){
mirror([0,90,0]){plate(extension=2);
    }

for (i=[platex/8:platex/4:platex/4]){
    echo(i);
rotate([0,90,0]){
    translate([(hole2d+2)/2-1,1,i]){
    difference(){
        cylinder(d=hole2d+2,h=platex/8-0.5);
            translate([0,0,-0.5]){
                cylinder(d=hole2d,h=platex/4+1);
            }//translate
        }//difference
    }//translate
    }//rotate

}//for

for (i=[5*platex/8:platex/4:7*platex/8]){
    echo(i);
rotate([0,90,0]){
    translate([(hole2d+2)/2-1,1,i]){
    difference(){
        cylinder(d=hole2d+2,h=platex/8-0.5);
            translate([0,0,-0.5]){
                cylinder(d=hole2d,h=platex/4+1);
            }//translate
        }//difference
    }//translate
    }//rotate

}//for

}
}//plate 2

plate1();
plate2();