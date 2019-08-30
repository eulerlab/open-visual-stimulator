
// Fish Cinema v10.0
// Designed by Bartel & Zimmermann, BadenLab, University of Sussex
// Modified on 20190305 by AM Chagas
// CC BY SA 4.0
// 

    // // // // // // // // // //  // // // // // //
   // // // // // Variables for Users// // // // //
  // // // // // // // // // // //  // // // // //
  

              Smoothness = 360; //  
              tol = 0.125; // Tolerance applied to the seal tight
              Walls = 3; // Thickness of tank walls
              sep = 0 ; //z_separation for mount() and slide()
              rotation = 34; //Angle of the screen relative to the y_axis in degrees (0-85° ; 270-360°)
              Format = 16/9; //Screen resolution (16/9, 4/3, 5/4, etc.)


               d_Screen = 33.5/2+10; //Screen distance from the fish lens (33.5=R_Objective)
               FoV_angle = 128/2; // Field of View angle: 128 immuno file, 165 described
               visual_angle = 1; // Larvae visual resolution 
               objective_angle = 36; // Maximum angle with objective hindrance
               tt=360;
    
    // // // // // // // // // // // // 
   // // // // Switches // // // // //
  // // // // // // // // // // // //
    reference = 0;
               Holder = 1;
               Tank = 1;
               Screen = 0;
               
                        Objective = 0;
                        FieldOfView = 0;
                        FieldOfView_Limits=0;
                        Screen2 = 0;
                        Fish = 0;

  // // // // // // // // // // // // // // // // // // // // // // // //
 // // // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // //

//translate([-100,-100,Bottom+h_Screen/2-z_Glass+2*tol+tol])cube([200,200,tol]);

//Holder parameters
    x_Holder = 45;
    y_Holder = 45;
    z_Holder = 5;
    x_HolderPos = -80;
    y_HolderPos = -y_Holder/2;
    z_HolderPos = 25;
    x_ScrewPos = x_HolderPos+14;
    y_ScrewPos = 10;
    z_ScrewPos = z_HolderPos;
    Screw_M6 = 6.5/2; //hole for M6 screws
    pos_x_Holder_Support = x_HolderPos+x_Holder-15.4;

//Tank parameters
    z_Bottom = 1.5;
    Bottom = z_Bottom + 3.5;
    h_Tank = 60; //height of the tank
    r1 = 80; //radius of the first level (bottom of the tank)
    r2 = r1 + 15; //radius of the second level
    r3 =  r2 + 25; //radius of the third level (top of the tank)
    h_r1_r2 = z_HolderPos; //first level height
    h_r2_r3 = h_Tank - h_r1_r2; //second level height
    x_Tank = 1;
    y_Tank = 40;
    z_Tank = 1;
    r_Rubber = 25/2; //rubber seal radius 
    z_Rubber = 1; //rubber seal thickness
    y_Minkowski = 75;// Modify the length of the tank
    Margin = 20; //back wall y position relative to the origin + x_Holder

//Mount parameters
    SealHole = 40/2;
    MainHole = 20/2;
    h_Mount = h_Tank/2;
    GlassRing = 25/2;
    r_Seal = 35/2;
    Seal_Width = 2;
    h_Seal =(Bottom-z_Bottom)/2;

//Slide Holder parameters
    x_Slide = 26;
    z_Slide = 4.5;
    x_Glass = 22;

//Screen parameters
    h_Screen = h_Tank-Bottom+1-Walls;
    
// Glass Slide
x_Glass = 25.85 + 4*tol;
y_Glass = 75.75 + 4*tol;
z_Glass = 1.0;

//Magnet
r_Magnet = 5.1/2;
y_Magnet = 19;
h_Magnet = 3.1;


    
    
// Objective parameters
R_Objective = 33.5/2;
H_Objective = 61.6;
h_Objective = 11.5;
r_Objective = 4.7/2;
focus = 1.9;


// // // // // Holder // // // // //

module posHolder(){
    translate([x_HolderPos,y_HolderPos,z_HolderPos])cube([x_Holder,y_Holder,z_Holder]);
    translate([pos_x_Holder_Support,y_HolderPos,h_Screen/2-z_Glass-3.49-Walls])cube([15.4,y_Holder,z_HolderPos-(h_Screen/2-z_Glass-3.49-Walls)]);
}

module negHolder(){
    translate([x_ScrewPos,y_HolderPos+y_ScrewPos,z_ScrewPos])cylinder(r=Screw_M6, h=z_Holder, $fn=Smoothness);
    translate([x_ScrewPos,-y_HolderPos-y_ScrewPos,z_ScrewPos])cylinder(r=Screw_M6, h=z_Holder, $fn=Smoothness);
    
}

if (Holder==1){rotate([0,0,$t*tt])translate([0,0,-(h_Screen/2-z_Glass-1+Bottom+z_Glass+tol+8/18.18+7.5)])difference(){
    posHolder();
    negHolder();
    }
}

// // // // // Fish Tank // // // // //

module posTank(){

      translate([0,y_Minkowski,0])
        minkowski(){
            cylinder (r1= r1, r2= r2, h= h_r1_r2, $fn= Smoothness);
            rotate([0,0,180])cube ([x_Tank,y_Tank,z_Tank]);
        }//First Level Positive
        
      translate([0,y_Minkowski,h_r1_r2])
        minkowski(){
            cylinder (r1= r2, r2= r3, h= h_r2_r3, $fn=Smoothness);
            rotate([0,0,180])cube ([x_Tank,y_Tank,z_Tank]);
        }//Second Level Positive 
}

module Water_Saving_outside(){
    rotate(rotation)translate([-158-11,-200,Bottom-7.5])cube([100,200,24]);
    rotate(rotation)translate([-x_Glass/2-Walls-100,-y_Glass/2-Walls-y_Minkowski-100,Bottom-7.5])cube([105,101.6,24]);
}
module Water_Saving_inside(){
    rotate(rotation)translate([-158-12,-200,Bottom-7.5])cube([100,200,36.5]);
    rotate(rotation)translate([-x_Glass/2-Walls-100,-y_Glass/2-Walls-y_Minkowski-100,Bottom-7.5])cube([105,101.6+5,36.5]);
    rotate(rotation)translate([-x_Glass/2-Walls-100-28,-y_Glass/2-Walls-y_Minkowski-100,Bottom-7.5])cube([105,101.6+14,36.5]);
}
        
module negTank() { 

    difference(){
        translate([0,y_Minkowski,Walls])
            difference(){
                minkowski(){
                    cylinder (r1= r1-Walls, r2= r2-Walls, h= h_r1_r2-Walls, $fn= Smoothness);
                    rotate([0,0,180])cube ([x_Tank,y_Tank,z_Tank]);
                }
                Water_Saving_inside();
            }//First Level Negative
            
        translate([pos_x_Holder_Support,-250,0])cube([Walls,500,h_Tank+Walls]);//First Level Left Wall
        rotate(rotation)translate([x_HolderPos-250,-x_HolderPos-x_Holder+Walls+Margin,0])cube([500,Walls,h_Tank+Walls]);//First Level Back Wall 
            
        difference(){
            union(){
                rotate([0,0,rotation])translate([SealHole+Walls,SealHole+Walls,0])cube([Walls,500,h_Tank+Walls]);// First Level Right Rotated Wall
                rotate([0,0,rotation])translate([SealHole+Walls,SealHole+Walls,0])mirror([0,1,0])cube([Walls,500,h_Tank+Walls]);// First Level Right Rotated Wall
            }
             union(){
        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])cube([3*Walls,(Format*h_Screen)/2,h_Screen]);//Screen
        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])mirror([0,1,0])cube([3*Walls,(Format*h_Screen)/2,h_Screen]);//Screen
             }
        }
        translate([x_HolderPos-250,-250,0])cube([500,500,Bottom]);//Bottom
}
     
      difference(){
        translate([0,y_Minkowski,h_r1_r2])
        difference(){
            minkowski(){
                cylinder (r1= r2-Walls, r2= r3-Walls, h= h_r2_r3, $fn=Smoothness);
                rotate([0,0,180])cube ([x_Tank,y_Tank,z_Tank]);
            }
            translate([0,0,Walls-h_r1_r2])Water_Saving_inside();
        }//Second Level Negative

        translate([pos_x_Holder_Support,-250,0])cube([Walls,500,h_Tank+Walls]);//Second Level Left Wall
        rotate(rotation)translate([x_HolderPos-250,-x_HolderPos-x_Holder+Walls+Margin,h_r1_r2])cube([500,Walls,h_Tank+Walls]);//Second Level Back Wall 

         difference(){
             union(){
                 rotate([0,0,rotation])translate([SealHole+Walls,SealHole+Walls,h_r1_r2])cube([Walls,500,h_Tank+Walls]);// Second Level Right Rotated Wall
                 rotate([0,0,rotation])translate([SealHole+Walls,SealHole+Walls,h_r1_r2])mirror([0,1,0])cube([Walls,500,h_Tank+Walls]);// Second Level Right Rotated Wall  
             }
             union(){
        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])cube([3*Walls,(Format*h_Screen)/2,h_Screen]);//Screen
        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])mirror([0,1,0])cube([3*Walls,(Format*h_Screen)/2,h_Screen]);//Screen
             }
         }     
}

rotate(rotation){
    translate([-x_Glass/2+Walls,-y_Glass/2+Walls,0])cube([x_Glass-2*Walls,y_Glass-2*Walls,Bottom]);
translate([-x_Glass/2-tol,-y_Glass/2-tol,0])cube([x_Glass+2*tol,y_Glass+2*tol,z_Glass+tol]); // Bottom Glass  
}
 
translate([pos_x_Holder_Support-100,-250,0])cube([100,500,100]);//Left Wall Negative
rotate(rotation)translate([x_HolderPos-250,-x_HolderPos-x_Holder+2*Walls+Margin,0])cube([500,250,h_Tank+Walls]);//Back Wall Negative
    
rotate([0,0,rotation])translate([SealHole+2*Walls,SealHole+2*Walls,0])cube([250,500,h_Tank+Walls]);//Right Wall Negative
rotate([0,0,rotation])translate([SealHole+2*Walls,SealHole+2*Walls,0])mirror([0,1,0])cube([250,500,h_Tank+Walls]);//Right Wall Negative 

translate([-Walls,y_Minkowski-Walls,-Walls])Water_Saving_outside();
}

module Glass(){
   rotate(rotation)translate([-x_Glass/2,0,0])difference(){
       union(){
           translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom-7.5])cube([x_Glass+2*Walls,2*Walls,h_Screen/2-z_Glass-1+7.5]);
           translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1-y_Magnet/2])cube([x_Glass+2*Walls,y_Magnet,y_Magnet/2]);
           translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([x_Glass+2*Walls,Walls-2*tol,z_Glass+tol]);
           translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([Walls-2*tol,y_Magnet,z_Glass+tol]);
           translate([x_Glass/2+2*tol,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([Walls-2*tol,y_Magnet,z_Glass+tol]);
           
           
           translate([-x_Glass/2-Walls,y_Glass/2-Walls,Bottom-7.5])cube([x_Glass+2*Walls,2*Walls,h_Screen/2-z_Glass-1+7.5]);
           mirror([0,1,0]){
               translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1-y_Magnet/2])cube([x_Glass+2*Walls,y_Magnet,y_Magnet/2]);
               translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([x_Glass+2*Walls,Walls-2*tol,z_Glass+tol]);
               translate([-x_Glass/2-Walls,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([Walls-2*tol,y_Magnet,z_Glass+tol]);
               translate([x_Glass/2+2*tol,-y_Glass/2-Walls,Bottom+h_Screen/2-z_Glass-1])cube([Walls-2*tol,y_Magnet,z_Glass+tol]);
           }
       }
   translate([-x_Glass/2-Walls,-y_Glass/2+Walls,Bottom+h_Screen/2-z_Glass-1-y_Magnet/2])rotate([-66,0,0])cube([x_Glass+2*Walls,x_Glass,x_Glass]);
   mirror([0,1,0])translate([-x_Glass/2-Walls,-y_Glass/2+Walls,Bottom+h_Screen/2-z_Glass-1-y_Magnet/2])rotate([-66,0,0])cube([x_Glass+2*Walls,x_Glass,x_Glass]);
       
   translate([-2*Walls,-y_Glass/2-Walls+1/3*y_Magnet+Walls/2,Bottom+h_Screen/2-z_Glass-1-h_Magnet])cylinder(r=r_Magnet+tol, h=h_Magnet, $fn=Smoothness);
   translate([2*Walls,-y_Glass/2-Walls+2/3*y_Magnet+Walls/2,Bottom+h_Screen/2-z_Glass-1-h_Magnet])cylinder(r=r_Magnet+tol, h=h_Magnet, $fn=Smoothness);
   mirror([0,1,0]){
       translate([-2*Walls,-y_Glass/2-Walls+1/3*y_Magnet+Walls/2,Bottom+h_Screen/2-z_Glass-1-h_Magnet])cylinder(r=r_Magnet+tol, h=h_Magnet, $fn=Smoothness);
       translate([2*Walls,-y_Glass/2-Walls+2/3*y_Magnet+Walls/2,Bottom+h_Screen/2-z_Glass-1-h_Magnet])cylinder(r=r_Magnet+tol, h=h_Magnet, $fn=Smoothness);
       }
   }  
}    
if (Tank==1){rotate([0,0,$t*tt])translate([0,0,-(h_Screen/2-z_Glass-1+Bottom+z_Glass+tol+8/18.18)]){
    translate([0,0,-7.5])difference(){
        posTank();
        negTank();
        ref();
        }
    Glass();
}}

// // // // // Screen // // // // //
module ref(){
//Screen right reference
translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),8/18.18+7.5-Walls/2])rotate([0,0,rotation])translate([Walls/2,(Format*h_Screen)/2-0.5,(h_Screen+Bottom+2*Walls)/2-Walls/2])cube([5/2*Walls,2*Walls,Walls]);


//Screen left reference
translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),8/18.18+7.5-Walls/2])rotate([0,0,rotation])translate([Walls/2,-(Format*h_Screen)/2-2*Walls+0.5,(h_Screen+Bottom+2*Walls)/2-Walls/2])cube([5/2*Walls,2*Walls,Walls]);
//Screen top reference
translate([cos(rotation)*(SealHole+Walls-0.5),sin(rotation)*(SealHole+Walls),h_Screen+Walls/3])rotate([0,0,rotation])cube([Walls+1,Walls/2,2*Walls]);
//Screen bottom reference
translate([cos(rotation)*(SealHole+Walls-0.5),sin(rotation)*(SealHole+Walls),3])rotate([0,0,rotation])cube([Walls+1,Walls/2,2*Walls]);




}//end module ref

if (reference==1){rotate([0,0,$t*tt])translate([0,0,-(h_Screen/2-z_Glass-1+Bottom+z_Glass+tol+8/18.18+7.5)]){
    ref();
}
}

module posScreen(){
    
    union(){
        translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),0])rotate([0,0,rotation])cube([2*Walls,(Format*h_Screen)/2+2*Walls,h_Screen+Bottom+2*Walls]);//Screen
       translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),0])rotate([0,0,rotation])mirror([0,1,0])cube([2*Walls,(Format*h_Screen)/2+2*Walls,h_Screen+Bottom+2*Walls]);//Screen
        
      translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),0])rotate([0,0,rotation])cube([5/2*Walls,Walls/2,h_Screen+Bottom+2*Walls]);//Screen top reference
        translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),0])rotate([0,0,rotation])mirror([0,1,0])cube([5/2*Walls,Walls/2,h_Screen+Bottom+2*Walls]);//Screen bottom reference
        translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),8/18.18+7.5-Walls/2])rotate([0,0,rotation])translate([0,-(Format*h_Screen)/2-2*Walls,(h_Screen+Bottom+2*Walls)/2-Walls/2])cube([5/2*Walls,2*Walls,Walls]);//Screen left reference
       translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),8/18.18+7.5-Walls/2])rotate([0,0,rotation])translate([0,(Format*h_Screen)/2,(h_Screen+Bottom+2*Walls)/2-Walls/2])cube([5/2*Walls,2*Walls,Walls]);//Screen right reference
             }
}

module negScreen(){

        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])cube([4*Walls,(Format*h_Screen)/2,h_Screen]);//Screen Right
        translate([cos(rotation)*(SealHole),sin(rotation)*(SealHole),Bottom])rotate([0,0,rotation])mirror([0,1,0])cube([4*Walls,(Format*h_Screen)/2,h_Screen]);//Screen Left
        
    
        translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),Bottom-Walls])rotate([0,0,rotation])cube([2*Walls+tol,(Format*h_Screen)/2+Walls,h_Screen+2*Walls]);//Screen Frame Right
        translate([cos(rotation)*(SealHole+Walls),sin(rotation)*(SealHole+Walls),Bottom-Walls])rotate([0,0,rotation])mirror([0,1,0])cube([2*Walls+tol,(Format*h_Screen)/2+Walls,h_Screen+2*Walls]);//Screen Frame Left
      
             
}    

if (Screen==1){rotate([0,0,$t*tt])translate([0,0,-(h_Screen/2-z_Glass-1+Bottom+z_Glass+tol+8/18.18+7.5)])difference(){
    posScreen();
    negScreen();
    }
}


/// /// // // // // // // // // //
coef = 18.18;
r_eye = 5/coef;
r_fish = r_eye;
r_head = 3*r_eye;
r_yolk = 0.6* r_head;
fish_ratio = 9;
fin = 5/coef;
fin_ratio = 2.5;
eye_rotation = [0,0,0];

module fish_eye(){
difference(){
    sphere(r=r_eye,$fn=Smoothness);
    translate([r_eye*2/3,-r_eye,-r_eye])cube([2*r_eye,2*r_eye,2*r_eye]);//eyeball
}
translate([r_eye/3,0,0])sphere(r=r_eye/2,$fn=Smoothness);//lens
}
module fin(){
difference(){    
    scale([1,fin_ratio,1])sphere(r=fin, $fn=Smoothness);
    translate([1/coef,0,0])scale([1,fin_ratio,1])sphere(r=fin, $fn=Smoothness);
    translate([-fin,-fin_ratio*fin,-fin])cube([2*fin,fin_ratio*fin,2*fin]);
    translate([-fin,-1/coef,fin/2])rotate([-7.5,0,0])cube([2*fin,fin_ratio*fin+0.25/coef,fin/2+5/coef]);
    translate([-fin,-1/coef,-fin-5/coef])rotate([7.5,0,0])cube([2*fin,fin_ratio*fin+1,fin/2+5/coef]);
}}
module fish_body(){
    translate([0,-fish_ratio*r_fish-r_head/2,r_eye])scale([fish_ratio/10,fish_ratio,1])sphere(r=r_fish,$fn=Smoothness);// Long tail
    translate([0,-r_head,r_eye*2/3])rotate([-5,0,0])scale([1.1,3,1])sphere(r=r_fish,$fn=Smoothness);    
    
    translate([0,-r_head/3,0])scale([1,1.75,1])sphere(r=r_head/2, $fn=Smoothness);// Head
    translate([0,-r_head/2-r_head-r_yolk/2,-r_yolk/4])rotate([-10,0,0])scale([0.8,1.4,0.75])sphere(r=r_yolk, $fn=Smoothness);// Yolk
    translate([r_head/2-5.25/coef,-r_head-4/coef,0])rotate([0,0,-120])fin();
    mirror([1,0,0])translate([r_head/2-5.25/coef,-r_head-4/coef,0])rotate([0,0,-120])fin();
        }
        
module Fish(){        
translate([r_head/3,0,0])rotate(eye_rotation)fish_eye();
mirror([1,0,0])translate([r_head/3,0,0])rotate(eye_rotation)fish_eye();
fish_body();
}

if (Fish==1){rotate([0,0,$t*tt])translate([-r_eye/3-r_head/3,0,0])rotate(rotation)Fish();}



/// /// // // // // / / /  /


module Objective(){ 
    translate([0,0,focus])cylinder(r1=r_Objective, r2=R_Objective, h=h_Objective, $fn=Smoothness);
    translate([0,0,focus+h_Objective])cylinder(r=R_Objective, H_Objective, $fn=Smoothness);
}

if(Objective==1){
    rotate(rotation)translate([0,0,0])Objective();
}

module FieldOfView(){
    %translate([0,0,0])rotate([0,90,0])cylinder(r1=0, r2=tan(FoV_angle)*d_Screen, h=d_Screen, $fn=Smoothness); // Field Of View for 128 degree
}
module FieldOfView_Limits(){ 
    color([0,0,1])rotate([0,90,0])cylinder(r1=0, r2=tan(visual_angle)*d_Screen  , h=d_Screen+tol, $fn=Smoothness); // Center pixel : 2 degree visual angle 
         
    color([0,1,0])rotate([0,90-objective_angle,0])cylinder(r1=0, r2=tan(visual_angle)*d_Screen  , h=(d_Screen+tol)/cos(objective_angle), $fn=Smoothness); // Top Pixel

    color([1,0,0])rotate([0,90+FoV_angle,0])cylinder(r1=0, r2=tan(visual_angle)*d_Screen  , h=(d_Screen+tol)/cos(FoV_angle), $fn=Smoothness); // Bottom Pixel

    color([1,1,0])rotate([0,90,-FoV_angle])cylinder(r1=0, r2=tan(visual_angle)*d_Screen  , h=(d_Screen+tol)/cos(FoV_angle), $fn=Smoothness); // Left Pixel
    
    color([1,0,1])rotate([0,90,FoV_angle])cylinder(r1=0, r2=tan(visual_angle)*d_Screen  , h=(d_Screen+tol)/cos(FoV_angle), $fn=Smoothness); // Rigth Pixel
}
if(FieldOfView==1){rotate([0,0,$t*tt])
    rotate(rotation)FieldOfView();
}
if(FieldOfView_Limits==1){rotate([0,0,$t*tt])
    rotate(rotation)FieldOfView_Limits();
}
module Screen2(){
    translate([d_Screen,-(tan(FoV_angle)*d_Screen),-(tan(FoV_angle)*d_Screen)])cube([tol,2*(tan(FoV_angle)*d_Screen),(tan(FoV_angle)*d_Screen)+(tan(objective_angle)*d_Screen)]);
    
}
if(Screen2==1){rotate([0,0,$t*tt])rotate(rotation)Screen2();}