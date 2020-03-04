/*
 LCr tilter
 tilt the LCr downwards to compensate for 
 its upwards projection.
 
 CC BY SA 4.0
 AM Chagas
 20200304

*/
platex = 150;
platey = 98;
platez = 3;
hole1yd = 10.75;
hole1xd = 5.45;

hole1d = 6.14;
hole2d= 3.88;  
tol = 0.1;
//m4 nut
nutd = 6.88;
nuth = 3;
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
    translate([hole1xd+hole1d/2,hole1yd+hole1d/2,-0.5]){
        cylinder(d=hole1d,h=platez+1);
        }//translate

    translate([platex-(hole1xd+hole1d/2),hole1yd+hole1d/2,-0.5]){
        cylinder(d=hole1d,h=platez+1);
        }//translate
    
    translate([platex-(hole1xd+hole1d/2),   platey-(hole1yd+hole1d/2),-0.5]){
        cylinder(d=hole1d,h=platez+1);
        }//translate

    translate([(hole1xd+hole1d/2),platey-(  hole1yd+hole1d/2),-0.5]){
        cylinder(d=hole1d,h=platez+1);
        }//translate
    if (extension==1){        
    translate([platex/2,platey+hole2d,-10.5]){
        cylinder(d=hole2d,h=platez+11);
        
        }//translate
        }//end if
    }//union
    
}//difference
}//plate 
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