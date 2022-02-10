largura = 124.1;
grossuraChapa =2;
alturaComputador = 31.7;
alturaGancho = 60;
larguraGancho = 21;
lingueta = 20;

cube([largura ,  grossuraChapa,  alturaComputador], center);
cube([largura,  alturaComputador + grossuraChapa*2,  grossuraChapa ],center);

// Gancho
translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  0]) cube([larguraGancho, grossuraChapa, alturaGancho]);

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa,  alturaGancho]) cube([larguraGancho, grossuraChapa *3 , grossuraChapa]);

translate([(largura - larguraGancho)/2,  alturaComputador + grossuraChapa*3,  alturaGancho -lingueta + grossuraChapa ]) cube([larguraGancho, grossuraChapa  , lingueta]);

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