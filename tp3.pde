//alejo soiza
//el choete - Ray Bradbury
//https://youtu.be/GFLvpFRJ6ek
int estado = 0;
int c = 15;
PImage[] pagina = new PImage[c];
PFont fuente;
float y;
boolean botonReal( int x, int y, int r) {
  return dist(mouseX, mouseY, x, y) <= r;
}

void setup() {
  size(600, 600);

  for (int i = 0; i < c; i++) {
    pagina[i] = loadImage( "pagina"  + i + ".jpg");
  }

  textSize(8);
  textAlign(CENTER, CENTER);
  fuente = loadFont ("CourierNewPS-BoldMT-20.vlw");
}

void draw() {
  textFont (fuente);
  fill (255, 206, 8);
  textSize(20);

  switch (estado) {
  case 0:
    image(pagina[0], 0, 0);
    text("Bodoni era un niño\n como todos, \n pero tenia un sueño, \n conocer el espacio", 170, 320);
    boton(550, 550, 80);
    flecha();
    break;

  case 1:
    image(pagina[1], 0, 0);
    text("De adulto se coniertio \n en un hombre apasionado \n y trabajador. pero sus sueños  \n seguian siendo los del  \n pequeño BoodoniE", 170, 320);
    boton(550, 550, 80);
    flecha();
    break;

  case 2:
    image(pagina[2], 0, 0);
    fill(0);
    text("Aunque sus dias\n eran iguales\n y aburridos", 490, 220);
    boton(550, 550, 80);
    flecha();
    break;

  case 3:
    image(pagina[3], 0, 0);
    text("Una noche\n, particularmente estrellada,\nBodoni tomaria una decision\nque cambiaria su vida", 390, 250);
    boton(550, 550, 80);
    flecha();
    break;

  case 4:
    image(pagina[4], 0, 0);
    text("La mañana \n siguiente  Bodoni \n con las cosas \n que tenia a \n su alrededor \n comenzo a \n construir su \n propio cohete", 120, 100);
    boton(550, 550, 80);
    flecha();
    break;

  case 5:
    image(pagina[5], 0, 0);
    fill(0);
    text("La noticia  \n llego a oidos de los  \n vecinos y rapidamente  \n los niños de \nla zona  \n ayudaron a Bodoni \n en su proyecto", 170, 100);
    boton(550, 550, 80);
    flecha();
    break;

  case 6:
    image(pagina[6], 0, 0);
    text("3....2....1....\n \nDESPEGUE", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

  case 7:
    image(pagina[7], 0, 0);
    fill(255);
    text("Bodoni estaba cumpliendo\nsu sueño, con su\n cohete recorria por\n las estrellas que\n desde pequeño admiraba", 150, 80);
    boton(550, 550, 80);
    boton(50, 550, 80);
    textSize(30);
    fill(0);
    text("B", 550, 550);
    text("A", 49, 550);
    break;

  case 8:
    image(pagina[8], 0, 0);
    fill(255);
    text("Conocio marte", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

  case 9:
    image(pagina[9], 0, 0);
    fill(255);
    text("Conocio la luna", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

  case 10:
    image(pagina[10], 0, 0);
    fill(255);
    text("Bodoni enfrenta\n momentos de soledad\n y reflexión. \nSe cuestiona sobre el significado de su \nviaje y decide", 300, 480);
    boton(100, 100, 80);
    boton(300, 100, 80);
    boton(500, 100, 80);
    textSize(30);
    fill(0);
    text("B", 300, 100);
    text("A", 100, 100);
    text("c", 500, 100);
    break;


  case 11:
    image(pagina[11], 0, 0);
    fill(255);
    text("no decidir a tiempo y explotar", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

  case 12:
    image(pagina[12], 0, 0);
    fill(0);
    text("volver a la tierra", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

  case 13:
    image(pagina[13], 0, 0);
    fill(255);
    text("quedarse a vivir en la luna", 150, 80);
    boton(550, 550, 80);
    flecha();
    break;

   case 14:
    fill(255);
    background(0);
    textSize(30);
    y = y + 2;
    text("FIN ", 300, y);
    if (y > 150) {
      text("TP3 - Soiza Alejo", 300, y -150);
    }

    if (y > 300) {
      text("Programador:Soiza Alejo ", 300, y -300);
    }

    if (y > 450) {
      text("Gracias por ver,\nreinicia para probar otro final", 300, y -450);
    }
    if ( y > 900) {
      botonCuadrado();
    }
  }
}

void mousePressed() {
  if (estado == 0 && botonReal (550, 550, 80)) {
    estado =1;
  } else if (estado == 1 && botonReal (550, 550, 80)) {
    estado =2;
  } else if (estado == 2 && botonReal(550, 550, 80)) {
    estado =3;
  } else if (estado == 3 && botonReal (550, 550, 80)) {
    estado =4;
  } else if (estado == 4 && botonReal (550, 550, 80)) {
    estado =5;
  } else if (estado == 5 && botonReal (550, 550, 80)) {
    estado =6;
  } else if (estado == 6 && botonReal (550, 550, 80)) {
    estado =7;
  } else if (estado == 7 && botonReal (550, 550, 80)) {
    estado =8;
  } else if (estado == 8 && botonReal (550, 550, 80)) {
    estado =10;
  } else if (estado == 10 && botonReal (100, 100, 80)) {
    estado =12;
  } else if (estado == 12 && botonReal (550, 550, 80)) {
    estado =14;
  } else if (estado == 14 && botonReal (210, 270, 200)) {
    estado =0;
  }


  if (estado == 7 && botonReal (50, 550, 80)) {
    estado =9;
  } else if (estado == 9 && botonReal (550, 550, 80)) {
    estado =10;
  } else if (estado == 10 && botonReal (300, 100, 80)) {
    estado =11;
  } else if (estado == 11 && botonReal (550, 550, 80)) {
    estado =14;
  } else if (estado == 14 && botonReal (210, 270, 200)) {
    estado =0;
  }


  if (estado == 10 && botonReal (500, 100, 80)) {
    estado =13;
  } else if (estado == 13 && botonReal (550, 550, 80)) {
    estado =14;
  } else if (estado == 14 && botonReal (210, 270, 200)) {
    estado =0;
  }
 
}

void boton(int x, int y, int d) {
  noStroke();
  if (dist(mouseX, mouseY, x, y) <= d) {
    fill(223, 567, 0);
  } else {
    fill(456, 564, 0);
  }
  circle(x, y, d);
  if (dist(mouseX, mouseY, x, y) <= d) {
    fill(255, 206, 8);
  } else {
    fill(255);
  }
}

void botonCuadrado() {

  rect(210, 270, 180, 50);
  fill(200);
  textSize(26);
  text("REINICIAR", 300, 295);
}

void flecha() {
  fill (255);
  strokeWeight(5);
  stroke(255);
  line(535, 530, 565, 550);
  line(535, 570, 565, 550);
}
