largura = 124.5;
grossuraChapa =2;
alturaComputador = 31.7;
alturaGancho = 79.5;
larguraGancho = 21;
lingueta = 20;

//rotate([0,45,0]) cube([20,grossuraChapa,20]);

difference(){
    cube([largura ,  grossuraChapa,  alturaComputador], center);
    translate([0,0,alturaComputador]) rotate([0,45, 0]) cube([ 30, grossuraChapa*2 , 30], center = true);
    translate([largura,0,alturaComputador]) rotate([0,45, 0]) cube([ 30, grossuraChapa*2 , 30], center = true);
}
cube([largura,  alturaComputador + grossuraChapa*2,  grossuraChapa ],center);

// Gancho
translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  0]) cube([larguraGancho, grossuraChapa, alturaGancho]);

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa]);

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa*3,  alturaGancho -lingueta + grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);

// Reforço da dobra do gancho

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa *5]);


// Gancho 2
translate([(largura - larguraGancho)/2,  0 ,  0]) cube([larguraGancho, grossuraChapa, alturaGancho]);

translate([(largura - larguraGancho)/2,  0 - grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa]);

translate([(largura - larguraGancho)/2,  0 - grossuraChapa*3,  alturaGancho -lingueta + grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);

// Reforço da dobra do gancho

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa *5]);




// Reforço do gancho

difference() {

    translate([(largura - larguraGancho)/2 - larguraGancho, alturaComputador + grossuraChapa, grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 - larguraGancho, alturaComputador + grossuraChapa *2, grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}

difference(){
    translate([(largura - larguraGancho)/2 + larguraGancho, alturaComputador + grossuraChapa,grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);
    translate([(largura - larguraGancho)/2 + larguraGancho*2, alturaComputador + grossuraChapa *2, grossuraChapa + larguraGancho ]) rotate ([90,0,0]) cylinder(grossuraChapa, larguraGancho , larguraGancho , false);
}

translate([10,0,2]) rotate ([90,0,0]) linear_extrude(height = 1) {
text("wahalla v4", size = 4, font = "Bitstream Vera Sans", halign = "down", valign = "left", $fn = 1);
}