
PImage[] eu = new PImage[6];
int foto = 0;
int azul = 0;
int rojo = 0;
int luz =  0;
int verde = 0;

void setup(){
 size(900, 1200);
 for(int i = 0; i < eu.length; i++){
      eu[i] = loadImage("Cris" +i + ".jpg");
    }
}

void draw(){
  background(rojo, verde, azul, luz);
  //imageMode(CENTER);
  image(eu[foto], mouseX, mouseY, 250, 400);
  //tintas();
  
 
}//Fim draw


void rosas(){
  loadPixels();
  for (int i = 0; i < pixels.length; i++){
   pixels[i] = color(rojo, verde, azul, luz);
  }
  updatePixels();
}

void mousePressed(){
  foto = int(random(0,eu.length));
  azul = int(random(200, 255));
  rojo = int(random(200, 255));
  verde = int(random(0, 190));
  luz = int(random(260, 350));
}

void tintas(){
    if(mouseY > 900){
      tint(255, 152, 243, 126);
      image(eu[foto], 0, 0, 250, 400);
    } else if (mouseY < 900){
      tint(239, 255, 137, 50);
      image(eu[foto], 0, 0, 250, 400);
    } else if(mouseY > 150){
      tint(137, 250, 255, 256);
      image(eu[foto], 0, 0, 250, 400);
    }else {
      noTint();
      image(eu[foto], 0, 0, 250, 400);
    }//Fim fo else
  }//Fim da função para tintas
