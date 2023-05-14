int pantalla = 0;

void setup () {
  size(640, 480);
}

void draw() {
  background(200);
  if (pantalla == 0) {
    pantallaCero ();
  } else if (pantalla == 1) {
    pantallaUno ();
  } else if (pantalla == 2) {
    pantallaDos ();
  } else if (pantalla == 3) {
    pantallaTres ();
  }

  if (frameCount % 600 == 0) {
    pantalla = pantalla + 1;
  } else if (pantalla >= 4) {
    pantallaCuatro ();
  }
}

void mousePressed () {
  if (dist (mouseX, mouseY, 300, 350) < 25 && pantalla >= 0) {
    pantalla = 1;
  }
  if (dist (mouseX, mouseY, 300, 350) < 25 && pantalla >= 4) {
    pantalla = 1;
  }
}
