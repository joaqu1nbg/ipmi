PImage[] imagenes = new PImage[3];
String[] textos = {
  "El arte electrónico es una forma de arte\nque utiliza dispositivos y componentes electrónicos\npara crear obras",
  
  "El arte electrónico se caracteriza por\nla experimentación con tecnologías\ny la exploración de nuevas formas de expresión artística",
  
  "Estos fueron\n3 ejemplos de obras"
};

PFont fuente;

int pantallaActual = 0;
int duracionPantalla = 5000; 
int tiempoInicio;
boolean mostrarBoton = false;

float textoX;
float textoDestinoX;
float velocidad = 5;

void setup() {
  size(600, 480);

  imagenes[0] = loadImage("img1.jpg");
  imagenes[1] = loadImage("img2.jpg");
  imagenes[2] = loadImage("img3.jpg");
  
  fuente = loadFont("TrebuchetMS-Italic-48.vlw");
  textFont(fuente);
  
  tiempoInicio = millis();
  
  textoX = -width;            
  textoDestinoX = width / 2; 
}

void draw() {
  background(0);
  
  imageMode(CENTER);
  image(imagenes[pantallaActual], width/2, height/2, width, height);

  
  if (textoX < textoDestinoX) {
    textoX += velocidad;
    if (textoX > textoDestinoX) textoX = textoDestinoX;
  }

  fill(255);
  textAlign(CENTER, CENTER);

  
  String[] lineas = split(textos[pantallaActual], '\n');

  int tamanoTexto = 20;
  textSize(tamanoTexto);


  float totalAltura = lineas.length * (tamanoTexto + 10);
  float yInicial = height / 2 - totalAltura / 2;

  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], textoX, yInicial + i * (tamanoTexto + 10));
  }

 
  if (millis() - tiempoInicio > duracionPantalla && pantallaActual < 2) {
    pantallaActual++;
    tiempoInicio = millis();

    textoX = -width;
  }

  
  if (pantallaActual == 2 && millis() - tiempoInicio > duracionPantalla + 12) {
    mostrarBoton = true;

    fill(255);
    rect(180, height - 80, 250, 50);

    fill(0);
    textSize(24);
    text("Reiniciar", width/2, height - 55);
  }
}

void mousePressed() {
  if (mostrarBoton) {
    if (mouseX > 180 && mouseX < 180 + 250 &&
        mouseY > height - 80 && mouseY < height - 30) {
      pantallaActual = 0;
      tiempoInicio = millis();
      mostrarBoton = false;

      textoX = -width;
    }
  }
}
