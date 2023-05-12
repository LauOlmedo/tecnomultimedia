PImage imagen1, imagen2, imagen3;
int segundos = 0;
int transparencia = 0;
float tamañoFuente = 0;
float posY = 480;
int contador = 0;
void setup() {
  size(640, 480);
  
  imagen1 = loadImage("submarino1.jpg");
  imagen2 = loadImage("submarino2.jpg");
  imagen3 = loadImage("submarino3.jpg");
}
void draw() {
  if(frameCount % 60 == 0){
    segundos = segundos + 1;
  }  
  PFont mi_fuente;
  mi_fuente = loadFont("FranklinGothic-DemiCond-48.vlw");
  textFont(mi_fuente, 50);
  if(segundos <= 10){
    image(imagen1,0,0,640,480);
    fill(255,0,0,transparencia);
    transparencia++;
    text("Comúnmente, por «submarino» \nse entiende un buque que \nfunciona en la superficie y \nbajo el agua por sí mismo.",0,50);
  }  
  else if(segundos >= 11 && segundos <= 25){
    image(imagen2,0,0,640,480);
    textFont(mi_fuente, tamañoFuente);
    if(tamañoFuente <= 40){
      tamañoFuente = tamañoFuente + 0.5;
    }  
    text("Un submarino nuclear típico tiene \nuna tripulación de unas 120 personas, \nlos buques no nucleares tienen menos \nde la mitad.Las condiciones dentro de \nun submarino pueden ser difíciles \ndebido a que los miembros de la \ntripulación tienen que trabajar aislados \ndurante largos periodos de tiempo, \nsin contacto con sus familias.",0,30);
  }
  else if(segundos >= 26 && segundos <=35){
    image(imagen3,0,0,640,480);;
    text("La energía nuclear se usa \nactualmente en todos los \nsubmarinos grandes, pero \ndebido a su alto coste y gran \ntamaño, los submarinos más \npequeños siguen usando \npropulsión diésel-eléctrica.",0,posY);
    if(posY != 50){
      posY = posY - 1;
    }
  }
  else if(segundos >= 36 && segundos <=45){
    fill(200);
    rect(545,435,60,30);
    textFont(mi_fuente, 15);
    fill(0);
    text("Reiniciar",550,455);
  }  
}  

void mousePressed(){
  if(segundos >= 31 && mouseX>545 && mouseX<605 && mouseY>435 && mouseY< 465){
    segundos = 0;
    transparencia = 0;
    tamañoFuente = 0;
    posY = 480;
  }
}
