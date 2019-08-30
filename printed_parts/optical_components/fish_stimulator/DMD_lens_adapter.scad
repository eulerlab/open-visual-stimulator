//Lens adapter for DMD - Lightcrafter unit
// Created by Maxime Zimmerman 2018
// CC BY SA 4.0

tol = 0.1;
Smoothness = 360;
r_cp12 = 30.5/2; //Radius of the lens holder
h_cp12 = 9;  //Width of the lens holder
r_lens = 28/2; 
h_lens = 13.4; //Heigh of the lens
h_connection = 5; //Tube external slope
Screwpos = 2; //Screw center relative to the square edge
r_screw = 1 + tol; //Mounting screws
Butee = 1.5; //Butee
Slice = 1.75;//Pin holder
R_lens = 26/2; //Radius of the lens
//  RGB  //
x_cubeRGB = 27 ;
y_cubeRGB = 27;
z_cubeRGB = 2;
h_totalRGB = 50.5; //Total tube length
h_tubeRGB = h_totalRGB-h_cp12; //Thin tube length
//  UV  //
x_cubeUV = 33.1 ;
y_cubeUV = 32.6;
z_cubeUV = 2;
h_totalUV = 32.5; //Total tube length
h_tubeUV = h_totalUV-h_cp12; //Thin tube length
  //  //  //  //  //  //  //  //
//  //  //  //  //  //  //  //  //
            RGB = 1;
            UV = 0;
// // // // // //  //  //  //  //
  //  //  //  // //  //  //  //
module posRGB (){
    translate([-x_cubeRGB/2,-y_cubeRGB/2,0])cube([x_cubeRGB,y_cubeRGB,z_cubeRGB]); //Square Base
    translate([0,0,z_cubeRGB])cylinder(r=r_lens, h=h_tubeRGB, $fn=Smoothness); //Thin Tube
    translate([0,0,z_cubeRGB+h_tubeRGB])cylinder(r=r_cp12, h=h_cp12, $fn=Smoothness);//cp12 Tube
    translate([0,0,z_cubeRGB+h_tubeRGB-h_connection])cylinder(r1=r_lens,r2=r_cp12, h=h_connection, $fn=Smoothness); //Connection
}
module negRGB(){
    difference(){
        cylinder(r=R_lens+tol, h=z_cubeRGB+h_totalRGB, $fn=Smoothness); //Main Hole
        difference(){
            translate([0,0,h_lens])cylinder(r=r_lens , h=Butee, $fn=Smoothness);//Butee
            cylinder(r=R_lens-1.5, h=z_cubeRGB+h_totalRGB, $fn=Smoothness); //Main Hole 2 
        }
    }
    
        translate([-Slice/2,y_cubeRGB/2-Slice,0])cube([Slice,Slice,z_cubeRGB]); //Slice corresponding to the DMD pin holder
    
    translate([0,0,h_lens/2])rotate([90,0,0])cylinder(r=3/2, h=x_cubeRGB, $fn=Smoothness); //Lens Holding Screw
    
    translate([x_cubeRGB/2-Screwpos,y_cubeRGB/2-Screwpos,0])cylinder(r=r_screw, h=h_totalRGB, $fn=Smoothness);
    translate([-x_cubeRGB/2+Screwpos,y_cubeRGB/2-Screwpos,0])cylinder(r=r_screw, h=h_totalRGB, $fn=Smoothness);
    translate([-x_cubeRGB/2+Screwpos,-y_cubeRGB/2+Screwpos,0])cylinder(r=r_screw, h=h_totalRGB, $fn=Smoothness);
    translate([x_cubeRGB/2-Screwpos,-y_cubeRGB/2+Screwpos,0])cylinder(r=r_screw, h=h_totalRGB, $fn=Smoothness);
}
if (RGB==1){difference (){
    posRGB();
    negRGB();
    }
}
//////////////////////////////////////////////
/////////////////////////////////////////////
module posUV (){
    translate([-x_cubeUV/2,-y_cubeUV/2,0])cube([x_cubeUV,y_cubeUV,z_cubeUV]); //Square Base
    translate([0,0,z_cubeUV])cylinder(r=r_lens, h=h_tubeUV, $fn=Smoothness); //Thin Tube
    translate([0,0,z_cubeUV+h_tubeUV])cylinder(r=r_cp12, h=h_cp12, $fn=Smoothness);//cp12 Tube
    translate([0,0,z_cubeUV+h_tubeUV-h_connection])cylinder(r1=r_lens,r2=r_cp12, h=h_connection, $fn=Smoothness); //Connection
    
    translate([0,0,-h_totalRGB+h_totalUV])cylinder(r=r_lens, h=h_totalRGB-h_totalUV, $fn=Smoothness);//tube inside DMD
}
module negUV(){
    difference(){
        translate([0,0,-h_totalRGB+h_totalUV])cylinder(r=R_lens+tol, h=z_cubeUV+h_totalRGB, $fn=Smoothness); //Main Hole
        difference(){
            translate([0,0,-h_totalRGB+h_totalUV+h_lens])cylinder(r=r_lens , h=Butee, $fn=Smoothness);//Butee
            translate([0,0,-h_totalRGB+h_totalUV])cylinder(r=R_lens-1.5, h=z_cubeUV+h_totalRGB, $fn=Smoothness); //Main Hole 2 
        }
    }
    
        translate([-Slice/2,y_cubeUV/2-Slice,0])cube([Slice,Slice,z_cubeUV]); //Slice corresponding to the DMD pin holder
    
    translate([0,0,-h_totalRGB+h_totalUV+h_lens/2])rotate([0,-90,0])cylinder(r=3/2, h=x_cubeUV, $fn=Smoothness); //Lens Holding Screw
    
    translate([x_cubeUV/2-Screwpos,y_cubeUV/2-Screwpos,0])cylinder(r=r_screw, h=h_totalUV, $fn=Smoothness);
    translate([-x_cubeUV/2+Screwpos,y_cubeUV/2-Screwpos,0])cylinder(r=r_screw, h=h_totalUV, $fn=Smoothness);
    translate([-x_cubeUV/2+Screwpos,-y_cubeUV/2+Screwpos,0])cylinder(r=r_screw, h=h_totalUV, $fn=Smoothness);
    translate([x_cubeUV/2-Screwpos,-y_cubeUV/2+Screwpos,0])cylinder(r=r_screw, h=h_totalUV, $fn=Smoothness);
}
if (UV==1){difference (){
    posUV();
    negUV();
    }
}