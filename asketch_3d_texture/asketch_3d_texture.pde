//Cierra Cheung
float rotx, roty;
color orange = #F5CF7C;
PImage diamond;
PImage grass;
PImage dirta;
PImage dirtb;
void setup() {

  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
  diamond = loadImage("diamond.png");
  dirta = loadImage("dirta.png");
  dirtb = loadImage("dirtb.png");
  grass = loadImage("grass.png");
  textureMode(NORMAL);
}

void draw() {
  background(0);
 textCube(width/2, height/2, 0,diamond, 100);
 textCube(100, height/2, 0,dirta, 100);
 textCube(width/2, 100,0, grass, dirtb, dirta, 100);
}

void textCube(float x, float y, float z, PImage texture, float size){
  
  
   pushMatrix();
  translate(x,y,z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);
  texture(texture);

  //top
  //x,y,z,tx,ty
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,0,1,1,1);
  vertex(0,0,1,0,1);
  //bottom
 vertex(0,1,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  //front
 vertex(0,0,0,0,0);
 vertex(0,1,0,0,1);
 vertex(0,1,1,1,1);
 vertex(0,0,1,1,0);
  //back
  vertex(1,0,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(1,0,1,0,1);

  //left
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,1,0,1,1);
 vertex(0,1,0,0,1);
  //right
    vertex(0,0,1,0,0);
    vertex(1,0,1,0,1);
    vertex(1,1,1,1,1);
    vertex(0,1,1,1,0);
  endShape();
  popMatrix();
  
  
  
}
void textCube(float x, float y, float z, PImage top,PImage side, PImage bottom, float size){
  
  
   pushMatrix();
  translate(x,y,z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);
  texture(top);

  //top
  //x,y,z,tx,ty
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,0,1,1,1);
  vertex(0,0,1,0,1);
  endShape();
  //bottom
  beginShape(QUADS);
  texture(bottom);
 vertex(0,1,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  endShape();
  //front
    beginShape(QUADS);
  texture(side);
 vertex(0,0,0,0,0);
 vertex(0,1,0,0,1);
 vertex(0,1,1,1,1);
 vertex(0,0,1,1,0);
  //back
  vertex(1,0,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(1,0,1,0,1);

  //left
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,1,0,1,1);
 vertex(0,1,0,0,1);
  //right
    vertex(0,0,1,0,0);
    vertex(1,0,1,0,1);
    vertex(1,1,1,1,1);
    vertex(0,1,1,1,0);
  endShape();
  popMatrix();
  
  
  
}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
