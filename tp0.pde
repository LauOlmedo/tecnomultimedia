PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("auto.jpg");
}

void draw() {
  image(imagen, 0, 0, 400, 400);
  fill(255);
  rect(400, 0, 400, 400);
  fill(245, 227, 190);
  rect(400, 260, 400, 400);
  //lineas verticales
  line(500, 400, 530, 260);
  line(400, 380, 460, 260);
  line(610, 400, 600, 260);
  line(715, 400, 670, 260);
  line(800, 380, 740, 260);
  //lineas horizontales
  line(400, 395, 800, 395);
  line(400, 345, 800, 345);
  line(400, 290, 800, 290);
  //cuadro fondo
  fill(0);
  stroke(0);
  rect(470,7,185,140);
  fill(255);
  textSize(40);
  text("PASTORE",485,100);
  textSize(15);
  text("CAR COLLECTION",510,120);
  //cuerpo auto
  fill(90, 27, 27);
  stroke(90, 27, 27);
  beginShape();
  vertex(417, 230);
  vertex(530, 210);
  vertex(530, 300);
  vertex(417, 300);
  endShape();
  beginShape();
  vertex(530, 211);
  vertex(570, 145);
  vertex(705, 145);
  vertex(770, 201);
  endShape();
  beginShape();
  vertex(770, 200);
  vertex(770, 300);
  vertex(530, 300);
  vertex(530, 210);
  endShape();
  //detalles auto
  fill(106, 103, 103);
  beginShape();
  vertex(415, 270);
  vertex(415, 275);
  vertex(775, 265);
  vertex(775, 260);
  endShape();
  stroke(211, 11, 11);
  line(415, 275, 775, 265);
  fill(198, 184, 156);
  stroke(198, 184, 156);
  beginShape();
  vertex(415, 275);
  vertex(415, 300);
  vertex(775, 300);
  vertex(775, 265);
  endShape();
  fill(255, 92, 15);
  stroke(255, 92, 15);
  rect(417, 235, 10, 20);
  fill(188, 4, 4);
  stroke(188, 4, 4);
  rect(760, 230, 10, 20);
  fill(0);
  stroke(0);
  rect(760, 230, 10, 10);
  fill(255);
  //ventanas
  beginShape();
  vertex(540,210);
  vertex(740,195);
  vertex(690,150);
  vertex(580,150);
  endShape();
  beginShape();
  fill(0,50);
  stroke(0,50);
  vertex(540,210);
  vertex(740,195);
  vertex(690,150);
  vertex(580,150);
  endShape();
  fill(0);
  stroke(0);
  rect(580,150,5,58);
  rect(650,150,10,52);
  stroke(0);
  line(655,202,655,300);
  line(540,210,540,300);
  //ruedas auto
  fill(0);
  stroke(0);
  ellipse(485, 300, 60, 60);
  ellipse(720, 300, 60, 60);
  fill(183, 181, 181);
  stroke(183, 181, 181);
  ellipse(485, 300, 40, 40);
  ellipse(720, 300, 40, 40);
}
