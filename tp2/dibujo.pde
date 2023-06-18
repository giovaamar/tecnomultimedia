int cant = 9;
PImage vasarely;
color rojo = 15;
color verde = 30;
color azul = 20;

void fondo () {
  vasarely = loadImage ("vasarely.jpeg");
  image (vasarely, -10, -10, 420, 420);
  noStroke ();
  fill (206, 60, 60);
  rect (400, 0, 200, 400);
  fill (60, 121, 183);
  rect (600, 0, 200, 400);
}

void circulo () {
  
  for (int i=0; i<2; i++) {
    for (int j=0; j<cant; j++) {
      fill (rojo*j, verde*j, azul*j);
      ellipse (20*j + 593, 86*i+58, 88, 88);
      ellipse (11*j + 439, 42*i + 294, 46, 45);
    }
  }

  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    ellipse (692, i*-12 + 327, 88, 88);
    ellipse (i*17 + 450, 230, 87, 87);
    ellipse (761, 8*i + 212, 50, 50);
    ellipse (444, -5*i + 170, 35, 35);
  }

  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    ellipse (600, i*14 + 237, 100, 100);
    ellipse (505, i*14 + 40, 90, 70);
    ellipse (600, i*-5 + 100, 30, 30);
    ellipse (-15*i + 745, 145, 66, 60);
  }
  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    ellipse (691, i*8 + 266, 50, 50);
    ellipse (i*6 + 575, 231, 32, 31);
  }
}

void cuadrado () {
  
  for (int i=0; i<2; i++) {
    for (int j=0; j<cant; j++) {
      fill (rojo*j, verde*j, azul*j);
      rect (j*20 + 548, i*87 + 15, 85, 84);
      rect (j*10 + 418, i*43 + 273, 50, 42);
    }
  }

  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    rect (462, i*14 + 4, 85, 71);
    rect (580, i*-5 + 84, 35, 28);
    rect (i*-14 + 705, 115, 70, 60);
    rect (426, i*-5 + 157, 35, 30);
    rect (549, i*15 + 187, 99, 89);
    rect (i*13 + 406, 187, 85, 85);
    rect (649, i*-14 + 300, 85, 70);
  }

  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    rect (735, i*10 + 187, 49, 45);
    rect (549, i*15 + 187, 99, 89);
    rect (666, i*9 + 241, 50, 43);
  }

  for (int i=0; i<cant; i++) {
    fill (rojo*i, verde*i, azul*i);
    rect (i*-7 + 615, 216, 25, 30);
  }
}
