//These are the pieces for a enclosure for the profeVen class management beacon. It's got a base, a lid and two buttons.

//parameters
side = 43.180;
roundCorner = 2.54;
screwHoleRadius = 1.5;
throughHoleRadius = 1.6;
wallThickness = 2;
baseHeight= 14;
$fn = 20;
buttonHoleRadius = 5;
pushButtonHeight = 5.5; //this is the height of the push Button, higher pcb buttons, shorter printed buttons.
xPosButtonHoleStart = 21.336;
yPosButtonHoleStart = 5.588;

xPosButtonHoleReset = 7.112;
yPosButtonHoleReset = 18.796;
connectorHole = 15.240;

//All the pieces/////
base();
translate ([side*1.6,0,0]) lid();
translate([0,side*1.5,0]) buttons();
//////////////

//base
//it's a difference between two rounded corner boxes plus some things
module base(){
    difference(){
        extBox();
        translate([0,0,wallThickness])pcbHole();
        //cable hole
        translate ([11,side,baseHeight-2.5]) cube([3,6,3]);
    }
    pcbStands();
    translate([-roundCorner*1.6,side/2,baseHeight/2])baseMountStands();
    translate([side+roundCorner*1.6,side/2,baseHeight/2])rotate([0,0,180]) baseMountStands();
}

//lid
//the same as the base, minus some things
module lid(){
    difference(){
        extBox();
        translate([0,0,wallThickness])pcbHole();
        //hole Button start
        translate([side-xPosButtonHoleStart,yPosButtonHoleStart,-1]) cylinder(r=buttonHoleRadius,h=4);
        //hole Button reset
        translate([side-xPosButtonHoleReset,yPosButtonHoleReset,-1]) cylinder(r=buttonHoleRadius,h=4);
        //hole connector
        translate ([-6,0,baseHeight-2.5]) cube([6,connectorHole,3]);
         //switch Hole
        translate ([side,side/1.5,baseHeight-5]) cube([6,9,6]);
    }
    //baseMount Stands
    translate([-roundCorner*1.6,side/2,baseHeight/2])baseMountStands();
    translate([side+roundCorner*1.6,side/2,baseHeight/2])rotate([0,0,180]) baseMountStands();

}





//button
//simple cylinders with symbols
module buttons(){
    //startButton
    difference(){
        union(){
            cylinder(r=buttonHoleRadius+wallThickness,h=baseHeight-wallThickness-pushButtonHeight);
            cylinder(r=buttonHoleRadius*0.9,h=baseHeight+wallThickness-pushButtonHeight);
            }
        translate([0,0,9]) cylinder(r=buttonHoleRadius/1.5,h=wallThickness,$fn=3);
     }
    //resetButton
   translate([30,0,0]) difference(){
        union(){
            cylinder(r=buttonHoleRadius+wallThickness,h=baseHeight-wallThickness-pushButtonHeight);
            cylinder(r=buttonHoleRadius*0.9,h=baseHeight+wallThickness-pushButtonHeight);
        }
        translate([0,0,9]) cylinder(r=buttonHoleRadius/1.5,h=wallThickness,$fn=4);
   }
}

//exterior box
module extBox(){
    hull(){
        cylinder (r=roundCorner+wallThickness, h = baseHeight);
        translate ([side,0,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight);
        translate ([side,side,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight);
        translate ([0,side,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight);
    }
}

//pcb hole
module pcbHole(){
    hull(){
        cylinder (r=roundCorner, h = 16);
        translate ([side,0,0]) cylinder (r=roundCorner, h = 16);
        translate ([side,side,0]) cylinder (r=roundCorner, h = 16);
        translate ([0,side,0]) cylinder (r=roundCorner, h = 16);
    }
}

//pcb stands
module pcbStands(){
    difference(){
        translate([2.54,2.54,0])cylinder (r=roundCorner+wallThickness, h = baseHeight-1.7);
        translate([2.54,2.54,wallThickness]) cylinder (r=screwHoleRadius, h = baseHeight);
    }
    translate ([side,0,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight-1.7);
    difference(){
        translate ([side-2.54,side-2.54,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight-1.7);
        translate([side-2.54,side-2.54,wallThickness]) cylinder (r=screwHoleRadius, h = baseHeight);
    }
    translate ([0,side,0]) cylinder (r=roundCorner+wallThickness, h = baseHeight-1.7);
}
//base mount stands
module baseMountStands(){
    difference(){
        linear_extrude(height = baseHeight, center = true, convexity = 10, scale=[3.3,1])
        translate ([-1,0,0]) square([2,10],true);
        translate ([-3.6,0,baseHeight-8.8]) cylinder(r=throughHoleRadius,h=baseHeight);
        translate ([-3,0,-2]) cube([6,6,baseHeight],true);
}
}