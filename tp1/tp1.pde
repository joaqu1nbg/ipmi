PImage nombredeimagen;

void setup() {
  size(800,400);
  nombredeimagen = loadImage("referencia.jpeg"); 
}

void draw() {
image(nombredeimagen, 0, 0, width/2, height/1); //introduccion de imagen de referencia


fill(40,41,43); // color de fondo
rect(400,0,400,400);

fill(255,255,255);

fill(124,138,164);
quad(400,350,500,300,700,300,800,350);
rect(400,350,400,50); //Partes que conforman el cuerpo

fill(114+25,82+25,71+25);
triangle(500,300,600,400,700,300); //Cuello de la remera

fill(5,5,5);
ellipse(600,100,300,200); //parte trasera del pelo

fill(215,170,151);
circle(700,200,125);// oreja
ellipse(600,200,300,330); //Craneo

fill(215,170,151);
triangle(575,250,600,185,625,250);//partes que conforman la nariz
line(575,250,560,235);

fill(114,82,71);
triangle(500,220,525,230,550,220); // ojeras
triangle(640,220,665,230,690,220);

fill(255,255,255);
ellipse(525,200,60,35); //ojos
ellipse(665,200,60,35);

fill(0,0,0);
circle(525,198,30); // pupilas
circle(665,198,30);


arc(525,175, 100, 50, PI, TWO_PI,PIE); //cejas
arc(665,175, 100, 50, PI, TWO_PI,PIE);

noFill();
arc(595,350, 50, 30, PI, TWO_PI); // pera

line(510,290,520,280);// partes de la boca
line(660,280,670,290);
arc(590,300, 100, 10, PI, TWO_PI);

fill(25,25,25);
quad(640,35,700,150,750,175,725,50); //mechones de pelo
quad(430,175,500,50,650,25,575,150);



















}



         
