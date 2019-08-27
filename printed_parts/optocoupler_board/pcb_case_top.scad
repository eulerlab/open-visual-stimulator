boardx=98;
boardy=78;
boardz=1.6;
$fn=20;

//distance of the screw hole to the closest edge of the board
bhdis=6;

box_space=8;

bncx=15;
bncy=bncx;
bncz=22;

potx=5;
poty=5;
potz=22;
module pcbpin(){
cylinder(d=6,h=12,center=true);
    translate([0,0,7]){
cylinder(d=2.9,h=2,center=true);
    }//translate
}//module

module bnch(){
   cube([bncx,bncy,bncz],center=true); 
    }

module poth(){
    cube([potx,poty,potz],center=true);
    }
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
    cube([boardx+box_space,boardy+box_space,24],center=true);
    translate([0,0,1]){
    cube([boardx+4,boardy+4,24],center=true);
    }//translate
}//difference





    }//module

/*
%board();
translate([boardx/2-bhdis,-boardy/2+bhdis,6]){
pcbpin();
    }//translate

translate([-boardx/2+bhdis,-boardy/2+bhdis,6]){
pcbpin();
    }//translate
    
translate([boardx/2-bhdis,boardy/2-bhdis,6]){
pcbpin();
    }//translate
    
translate([-boardx/2+bhdis,boardy/2-bhdis,6]){
pcbpin();
    }//translate
*/
difference(){
translate([0,0,12]){
box();
}//translate

union(){
////////SIDE1///////////////////////////////////////////////////
translate([(boardx)/2-(bhdis+(bncx/2)+12),-(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+bncx+2),-(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+2*bncx+4),-(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+3*bncx+6),-(boardy/2+4),14]){
bnch();
}//translate
//////////////////////////////////////////////////////////////

/////SIDE2//////////////////////////////////////////////////////////
translate([(boardx)/2-(bhdis+(bncx/2)+12),(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+bncx+2),(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+2*bncx+4),(boardy/2+4),14]){
bnch();
}//translate

translate([(boardx)/2-(bhdis+(bncx/2)+12+3*bncx+6),(boardy/2+4),14]){
bnch();
}//translate

/////////////////////////////////////////////////////////////////

///////blanking///////////////////////////////////////
translate([-(boardx/2+1),(boardy)/2-(bhdis+(bncy/2)+9),14]){
bnch();
}//translate
///////////////////////////////////////////////////
translate([boardx/2+2.5,-(boardy)/2+(bhdis+11.5),14]){
poth();
}//translate

translate([boardx/2+2.5,-(boardy)/2+(bhdis+29.5),14]){
poth();
}//translate

translate([-(boardx/2+2.5),-(boardy)/2+(bhdis+11.5),14]){
poth();
}//translate

translate([-(boardx/2+2.5),-(boardy)/2+(bhdis+29.5),14]){
poth();
}//translate
translate([-(bncy+2),-boardy/2+2,-0.5]){
rotate([0,0,180])
mirror(){
linear_extrude(1.3){
text("LCrG",size=3.5);
}//mirror
    }//linear_extrude
}//translate


translate([-(2*bncy+4),-boardy/2+2,-0.5]){
rotate([0,0,180])
mirror(){
linear_extrude(1.3){
text("LEDG",size=3.5);
}//mirror
    }//linear_extrude
}//translate

translate([-(bncy+2),boardy/2,-0.5]){
rotate([0,0,180])
mirror(){
linear_extrude(1.3){
text("LCrUV",size=3.5);
}//mirror
    }//linear_extrude
}//translate

translate([-(2*bncy+4),boardy/2,-0.5]){
rotate([0,0,180])
mirror(){
linear_extrude(1.3){
text("LEDUV",size=3.5);
}//mirror
    }//linear_extrude
}//translate

}//union
}


//translate([-(boardx/2+1),(boardy)/2-(bhdis+(bncy/2)+9),14]){
//rotate([0,90,0]){
//cylinder(d=12,h=10,center=true);
  //  }
//}