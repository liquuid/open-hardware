largura = 124.5;
grossuraChapa =2;
alturaComputador = 31.7;
alturaGancho = 79.5;
larguraGancho = 21;
lingueta = 20;

//rotate([0,45,0]) cube([20,grossuraChapa,20]);

//difference(){
//    cube([largura ,  grossuraChapa,  alturaComputador], center);
//    translate([0,0,alturaComputador]) rotate([0,45, 0]) cube([ 30, grossuraChapa*2 , 30], center = true);
 //   translate([largura,0,alturaComputador]) rotate([0,45, 0]) cube([ 30, grossuraChapa*2 , 30], center = true);
//}


// Base

cube([largura,  alturaComputador + grossuraChapa*2,  grossuraChapa ],center);
//cube([largura/5,  alturaComputador + grossuraChapa*2,  grossuraChapa ],center);

// teto

translate([0 ,  0   , alturaGancho + grossuraChapa ]) cube([largura, alturaComputador + grossuraChapa *2  , grossuraChapa ]);

// Suporte USB-C baixo

translate([ -17.7 , 11 , 0 ]) cube([17.7, 10  , grossuraChapa ]);
translate([ -17.7 - grossuraChapa, 11 , 0 ]) cube([grossuraChapa, 10  , 6 + grossuraChapa ]);
translate([ -17.7 - grossuraChapa, 11 , 0 ]) cube([2, 2  , 9 +grossuraChapa ]);
translate([ -17.7 - grossuraChapa, 19 , 0 ]) cube([2, 2  , 9 +grossuraChapa]);

translate([ -grossuraChapa , 0, 0 ])  cube([ grossuraChapa , alturaComputador + grossuraChapa *2, 4 ]);
translate([ -grossuraChapa , 0, alturaGancho ])  cube([ grossuraChapa , alturaComputador + grossuraChapa *2, 4 ]);



// Suporte USB-C alto

translate([  largura , 13 , alturaGancho + grossuraChapa  ]) cube([17.7 , 10  , grossuraChapa ]);
translate([ 17.7 + largura, 13 , alturaGancho + grossuraChapa - 6 ]) cube([grossuraChapa, 10  , 6 + grossuraChapa ]);
translate([ 17.7 + largura, 13 , alturaGancho + grossuraChapa - 9 ]) cube([2, 2  , 9 + grossuraChapa ]);
translate([ 17.7 + largura, 21 , alturaGancho + grossuraChapa - 9]) cube([2, 2  , 9 + grossuraChapa]);

translate([ largura  , 0, alturaGancho ])  cube([ grossuraChapa , alturaComputador + grossuraChapa *2, 4 ]);
translate([ largura  , 0, 0 ])  cube([ grossuraChapa , alturaComputador + grossuraChapa *2, 4 ]);


// Gancho
translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  0]) cube([larguraGancho, grossuraChapa, alturaGancho]);

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa*3,  alturaGancho -lingueta + grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta * 2]);

// Reforço da dobra do gancho

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa *5]);


// Gancho 2
translate([(largura - larguraGancho)/2,  0 ,  0]) cube([larguraGancho, grossuraChapa, alturaGancho]);

translate([(largura - larguraGancho)/2,  0 - grossuraChapa*2,  alturaGancho -lingueta + grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta * 2]);

// Reforço da dobra do gancho 2

translate([(largura - larguraGancho)/2, 0 - grossuraChapa *2,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa *5]);



// Reforço do gancho

difference() {

    translate([(largura - larguraGancho)/2 - larguraGancho, alturaComputador + grossuraChapa, grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 - larguraGancho, alturaComputador + grossuraChapa *2, grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}

difference(){
    translate([(largura - larguraGancho)/2 + larguraGancho, alturaComputador + grossuraChapa,grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 + larguraGancho*2, alturaComputador + grossuraChapa *2, grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}


// Reforço do gancho 2

difference() {

    translate([(largura - larguraGancho)/2 - larguraGancho, 0, grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 - larguraGancho, 0 + grossuraChapa , grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}

difference(){
    translate([(largura - larguraGancho)/2 + larguraGancho, 0, grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 + larguraGancho*2, 0 + grossuraChapa , grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}






translate([60,5,alturaGancho + grossuraChapa * 2]) rotate ([0,0,90]) linear_extrude(height = 1) {
text("wahalla v4", size = 4, font = "Bitstream Vera Sans", halign = "down", valign = "left", $fn = 1);
}