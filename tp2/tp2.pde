void setup () {
  size (800, 400);
}

void draw () {

  fondo ();
  if (keyPressed) {
    cuadrado ();
  } else {
    circulo ();
  }

  if (cant <= 5) {
    cant = 5;
  }
  if (cant >= 15) {
    cant = 15;
  }
}

void mouseClicked () {
  if (mouseButton == LEFT) {
    cant++;
  }
  if (mouseButton == CENTER) {
    cant = 9;
  }
  if (mouseButton == RIGHT) {
    cant--;
  }
}
