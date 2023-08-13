// https://youtu.be/Rf2QdynY96g //

int cant = 26;
PImage [] fondosDePantallas = new PImage [cant];
int pagina = 0;
int paraAvanzar = 0;
int reiniciar = 0;
boolean pag = false;

void setup () {
  size(600, 600);
  for (int i=0; i<cant; i++) {
    fondosDePantallas[i] = loadImage("fondos" + i + ".png");
  }
}


void draw () {
  background (0);

  pantalla (pagina);

  if (pagina == 1) {
    paraAvanzar = 1;
    reiniciar = 0;
  } else if (pagina == 7) {
    paraAvanzar = 1;
  } else if (pagina == 9) {
    paraAvanzar = 1;
  } else {
    paraAvanzar = 0;
  }

  if (pagina == 13) {
    reiniciar++;
  } else if (pagina == 20) {
    reiniciar++;
  } else if (pagina == 23) {
    reiniciar++;
  } else if (pagina == 25) {
    reiniciar++;
  }

  if (pagina == 8 && pag == true) {
    pagina = 24;
  }
}

void mouseClicked () {
  if (mouseX > 230 && mouseX < 370 && mouseY > 255 && mouseY < 290) {
    pagina = 1;
  } else if (mouseX > 230 && mouseX < 370 && mouseY > 310 && mouseY < 345) {
    pagina = 25;
  }

  if (mouseX >= 500 && mouseX <= 580 && mouseY >= 565 && mouseY <= 590) {
    if (pagina == 1) {
      pagina = 14;
      pag = true;
    } else if (pagina == 16) {
      pagina = 5;
    } else if (pagina == 7) {
      pagina = 17;
    } else if (pagina == 9) {
      pagina = 21;
    } else if (reiniciar != 0) {
      pagina = 0;
    } else if (pagina == 24) {
      pagina = 10;
    } else {
      pagina ++;
      paraAvanzar = 0;
    }
  }

if (mouseX >= 400 && mouseX <= 580 && mouseY >= 465 && mouseY <= 590 && paraAvanzar == 1) {
  if (pagina == 1) {
    pagina++;
    paraAvanzar = 0;
  } else if (pagina == 7) {
    pagina++;
    paraAvanzar = 0;
  } else if (pagina == 9) {
    pagina++;
    paraAvanzar = 0;
  }
}
}
