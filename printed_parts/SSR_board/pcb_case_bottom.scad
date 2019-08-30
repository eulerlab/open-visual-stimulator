boardx=98;
boardy=78;
boardz=1.6;
$fn=20;



module pcbpin(){
cylinder(d=6,h=12,center=true);
    translate([0,0,7]){
cylinder(d=2.9,h=2,center=true);
    }//translate
}//module



module board(){
    difference(){
cube([boardx,boardy,boardz],center=true);
union(){
translate([boardx/2-6,boardy/2-6,0]){
cylinder(d=3.1,h=2,center=true);  
}//translate

translate([-boardx/2+6,boardy/2-6,0]){
cylinder(d=3.1,h=2,center=true);  
}//translate

translate([-boardx/2+6,-boardy/2+6,0]){
cylinder(d=3.1,h=2,center=true);  
}//translate

translate([boardx/2-6,-boardy/2+6,0]){
cylinder(d=3.1,h=2,center=true);  
}//translate
}//union
}//difference
}//module

module box(){
    difference(){
    cube([boardx+8,boardy+8,12],center=true);
    translate([0,0,1]){
    cube([boardx+2,boardy+2,12],center=true);
    }//translate
}//difference





    }//module


%board();
translate([boardx/2-6,-boardy/2+6,6]){
pcbpin();
    }//translate

translate([-boardx/2+6,-boardy/2+6,6]){
pcbpin();
    }//translate
    
translate([boardx/2-6,boardy/2-6,6]){
pcbpin();
    }//translate
    
translate([-boardx/2+6,boardy/2-6,6]){
pcbpin();
    }//translate
translate([0,0,6]){
box();
}
//}



