PImage bici;
PFont texto;
float movimiento = 0;
float arriba = 500;
float lado = 0;

void pantallaCero () {
  background (222, 201, 201);
  fill (62, 51, 51);
  texto = loadFont ("CenturyGothic-Bold-48.vlw");
  textSize (40);
  textFont (texto, 40);
  text ("¿Qué son las\nbicicletas?", 200, 200);
  bici = loadImage ("botón.png");
  image (bici, 275, 325, 50, 50);
}

void pantallaUno () {
  bici = loadImage ("biciUno.jpeg");
  image (bici, 0, 0, 640, 480);
  fill (255);
  textSize (20);
  movimiento = movimiento + 1;
  text ("La bicicleta es un vehículo de transporte\npersonal. Es impulsada por el propio\nviajero, que acciona el vehículo con el\nesfuerzo muscular de las piernas, en\nparticular mediante pedales o manivelas.", 50, movimiento);
}

void pantallaDos () {
  bici = loadImage ("biciDos.jpeg");
  image (bici, 0, 0, 640, 480);
  textSize (20);
  arriba = arriba - 1;
  text ("Sus componentes básicos son dos ruedas, un\nsistema de transmisión de pedales, un\ncuadro que le da la estructura e integra los\ncomponentes, un manillar para controlar la\ndirección y un sillín para sentarse.", 50, arriba);
}

void pantallaTres () {
  bici = loadImage ("biciTres.jpeg");
  image (bici, 0, 0, 640, 480);
  textSize (20);
  lado = lado + 1;
  text ("Es un medio de transporte sano, ecológico,\nsostenible y económico, válido para\ntrasladarse tanto por ciudad como por\nzonas rurales", lado, 100);
}

void pantallaCuatro () {
  bici = loadImage ("botón.png");
  image (bici, 275, 325, 50, 50);
  movimiento = 0;
  arriba = 500;
  lado = 0;
}
