String [] lineas;


void pantalla (int num) {

  // fondos //

  if (num != 0 &&num != 25){
    image(fondosDePantallas[num], 0, 150, 600, 450);
  } else{
    image(fondosDePantallas[num], 0, 0, 600, 600);
  }

  // textos //

  fill (255);
  textSize (12);
  lineas = loadStrings ("textos" + num + ".txt");

  if (num != 0 && num != 25){
    for (int i=0; i<lineas.length; i++) {
      text(lineas[i], 5, i * 16 + 15);
    }
  } else if (num == 0){
    for (int i=0; i<lineas.length; i++) {
     fill (240, 187, 12);
      textSize (80);
      text(lineas[i], 60, i * 60+ 150);
    }
  }  else if (num == 25){
    for (int i=0; i<lineas.length; i++) {
     fill (240, 187, 12);
      textSize (30);
      text(lineas[i], 60, i * 60+ 50);
      fill (255);
    }
  }

  // botones //
  if (num != 0) {
    rect (500, 565, 80, 25);
    if (paraAvanzar == 1) {
      rect (400, 565, 80, 25);
    }
    fill (0);
  } else if (num == 0) {
    stroke(158, 165, 198);
    fill(36, 45, 93);
    rect(230, 255, 140, 35);
    rect(230, 310, 140, 35);
    textSize(18);
    fill(158, 165, 198);
    text("iniciar", 276, 277);
    text("créditos", 270, 332);
  }

 // opciones //
 
  if (pagina == 1) {
    text ("deberían", 516, 581);
    text ("no deberian", 410, 581);
  } else if (pagina == 7) {
    text ("rechazar", 516, 581);
    text ("aceptar", 420, 581);
  } else if (pagina == 9) {
    text ("no debería", 516, 581);
    text ("debería", 410, 581);
  } 
  else if (pagina == 13 || pagina == 20 || pagina == 23) {
    text ("reiniciar", 513, 583);
  } else if (pagina != 0 && reiniciar == 0) {
    text ("siguiente", 513, 583);
  }
}
