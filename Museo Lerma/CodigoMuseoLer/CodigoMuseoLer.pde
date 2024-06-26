PFont fuente;
PFont fuente1;
PFont fuente2;

int x=0;

void setup (){
  
  fullScreen(); // Es para definir la pantalla completa
  frameRate (30);
  fuente = createFont ("century Gothic", 60); // Fuente de las letras del cartel y su tamaño
  fuente1 = createFont ("Century Gothic", 20);
  fuente2 = createFont ("Century Gothic", 15);
}

void draw (){
  background (165, 51, 179); // El color del fondo
  
  PImage img;
  img = loadImage ("../assets/kiosco.jpg"); // Imagen del quiosco
  image (img, 600, 300);
  
  fill (0);
  translate (width/2, height/2);
  rect (100, 100, 100, 100, 28);
  
  fill (100, 149, 237);
  ellipse (x, 90, 160, 160); 
  x = x+1; // El valor de x, en donde se le suma 1 que es la velocidad a la que irá el circulo
  
  fill (255, 140, 0);
  textFont (fuente);
  text ("SALA ESTRELLA", x, 100, 80); // El texto en movimiento con el valor de x
  
  fill (255);
  textFont (fuente1);
  text ("Grand Love Museum", 100, 278);
  
  fill (0);
  textFont (fuente2);
  text ("EXPOSICIÓN: Volando Al Mar", 600, 425);
  text ("ARTISTA: Lewis Blue",640, 445);
  text ("FECHA:  10 AL 30 de julio del 2024", 550, 465);
}
  
