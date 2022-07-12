//versión con lente na tapa, a ver...
lensRadius = 10;
side = 43.180;
roundCorner = 2.54;
screwHoleRadius = 1.5;
throughHoleRadius = 1.6;
wallThickness = 2;
baseHeight= 14;
$fn = 20;
buttonHoleRadius = 5;
//should work with 0.2 more than the pushbutton total height
pushButtonHeight = 4.5;
xPosButtonHoleStart = 21.336;
yPosButtonHoleStart = 5.588;

xPosButtonHoleReset = 7.112;
yPosButtonHoleReset = 18.796;
connectorHole = 15.240;

//tapa con lente
lid();
difference(){
translate ([side-21,38.1,0]) cylinder(r= 6, h= 10);
translate ([side-21,38.1,wallThickness+lensRadius+2.8]) sphere (r=lensRadius);
}
////tapa con furado para tunel de luz
//difference(){
//lid();
//translate ([side-21,38.1,-1]) cylinder(r= 6, h= 10);
//}
//tunel de luz
//difference(){
//union(){
//cylinder(r=6.9,h=baseHeight-wallThickness);
//cylinder(r=5.9,h=30);
//}
//cylinder(r=3.1,h=11);
//}
//medidor
//translate ([side-24,33.1,0]) color ("red")  cube ([10,13,5]);

//base
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