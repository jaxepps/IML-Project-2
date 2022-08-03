//NEW NEW NEW//Jackson Epps
//2/17/22
//IML 104: Project 2

//elephant
float x;
float y;
float easing = 0.05;

//color shrub variables 
float l;
float m;
float n;
float o;

float xx;
float yy;


color a = color (146,193,233);
color b = color (108,172,228);
color c = color (0,114,206);
color d = color (99,140,46);
color e = color (188,195,63);
color f = color (74,117,51);
boolean flipped = false;

void setup() {
  size (1600,800);
}

void draw() {
  background (215,230,170);

//shrub 1
  pushMatrix ();
    
     stroke (215,230,170);
       fill (0);
       scale (1,-1);
       translate (50,-300);
       fill (d);
      triangle (50,0,100,100,103,0);
      fill (e);
      stroke (215,230,170);
      triangle (40,0,0,50,37,35);
      fill (f);
      stroke (215,230,170);
      triangle (40,0,15,100,52,50);
      fill (d);
      stroke (215,230,170);
      triangle (40,0,65,125,90,0);
      fill (e);
      stroke (215,230,170);
      triangle (90,0,125,100,115,0);
      fill (f);
      stroke (215,230,170);
      triangle (118,25,140,50,115,0);
     popMatrix();
 
  //shrub 2
  pushMatrix();
     stroke (215,230,170);
       fill (0);
       scale (1,-1);
       translate (300,-600);
       fill (d);
      triangle (50,0,100,100,103,0);
      fill (e);
      stroke (215,230,170);
      triangle (40,0,0,50,37,35);
      fill (f);
      stroke (215,230,170);
      triangle (40,0,15,100,52,50);
      fill (d);
      stroke (215,230,170);
      triangle (40,0,65,125,90,0);
      fill (e);
      stroke (215,230,170);
      triangle (90,0,125,100,115,0);
      fill (f);
      stroke (215,230,170);
      triangle (118,25,140,50,115,0);
     popMatrix();
     
     //shrub 3
  pushMatrix();
     stroke (215,230,170);
       fill (0);
       scale (1,-1);
       translate (800,-700);
       fill (d);
      triangle (50,0,100,100,103,0);
      fill (e);
      stroke (215,230,170);
      triangle (40,0,0,50,37,35);
      fill (f);
      stroke (215,230,170);
      triangle (40,0,15,100,52,50);
      fill (d);
      stroke (215,230,170);
      triangle (40,0,65,125,90,0);
      fill (e);
      stroke (215,230,170);
      triangle (90,0,125,100,115,0);
      fill (f);
      stroke (215,230,170);
      triangle (118,25,140,50,115,0);
     popMatrix();
     
     
    //shrub 4
  pushMatrix();
     stroke (215,230,170);
       fill (0);
       scale (1,-1);
       translate (1200,-300);
       fill (d);
      triangle (50,0,100,100,103,0);
      fill (e);
      stroke (215,230,170);
      triangle (40,0,0,50,37,35);
      fill (f);
      stroke (215,230,170);
      triangle (40,0,15,100,52,50);
      fill (d);
      stroke (215,230,170);
      triangle (40,0,65,125,90,0);
      fill (e);
      stroke (215,230,170);
      triangle (90,0,125,100,115,0);
      fill (f);
      stroke (215,230,170);
      triangle (118,25,140,50,115,0);
     popMatrix();
  
  //reflecting elephant
  if (flipped) { 
    scale (-1,1);
 
  }
  else { 
    scale (1,1);
  }
  
  
  //following function, 3/2/22, https://processing.org/examples/easing.html
  float targetX = mouseX -425 ;
  float dx = targetX - x;
  x += dx * easing;

  float targetY = mouseY +150 ;
  float dy = targetY - y;
  y += dy * easing;
  
  
   
  
  stroke (255);
 //translating reflected elephant 
 if (flipped) {
   translate (-x-800,y-800);
 }
 else {
   translate (x,y-800);
 }
 
 
 //walking in a direction
  if (mouseX < pmouseX) {
    flipped = true;
  //  translate (mouseX,0);
  }
  else if (mouseX > pmouseX){
    flipped = false;
  //  translate (mouseX,0);
  }
 
 //elephant trunk 1

//trunk moving 
if (keyPressed == true) {

  pushMatrix();
translate(325, 670);
rotate(-PI/3);
translate(-325, -670);

fill (a);
  stroke (215,230,170);
 beginShape();
    vertex(325,670);
    vertex(375,650);
    vertex(375,760);
    vertex(325,670);
  endShape(CLOSE);
 
  
 

//elephant trunk 2
 
  fill (c);
 beginShape();
 stroke (215,230,170);
    vertex(325,670);
    vertex(325,760);
    vertex(375,785);
    vertex(375,760);
    vertex(325,670);
  endShape(CLOSE);
  
  
//elephant trunk 3
 
  fill (a);
  stroke (215,230,170);
  beginShape();
    vertex (375,785);
    vertex (425,760);
    vertex (375,760);
  endShape();

  
//elephant trunk 4
 
  fill (b);
  beginShape();
  stroke (215,230,170);
    vertex (400,760);
    vertex (425,760);
    vertex (425,735);
    vertex (400,760);
  endShape ();
popMatrix();
}
else {

pushMatrix();
  fill (a);
  stroke (215,230,170);
 beginShape();
    vertex(325,670);
    vertex(375,650);
    vertex(375,760);
    vertex(325,670);
  endShape(CLOSE);
 
  
 

//elephant trunk 2
 
  fill (c);
 beginShape();
 stroke (215,230,170);
    vertex(325,670);
    vertex(325,760);
    vertex(375,785);
    vertex(375,760);
    vertex(325,670);
  endShape(CLOSE);
  
  
//elephant trunk 3
 
  fill (a);
  stroke (215,230,170);
  beginShape();
    vertex (375,785);
    vertex (425,760);
    vertex (375,760);
  endShape();

  
//elephant trunk 4
 
  fill (b);
  beginShape();
  stroke (215,230,170);
    vertex (400,760);
    vertex (425,760);
    vertex (425,735);
    vertex (400,760);
  endShape ();
  popMatrix();
}
 
  //back legs
 
  //elephant foot 3 (back foot 1)
  pushMatrix();
  fill (c);
  stroke (215,230,170);
  beginShape();
    vertex(0,800);
    vertex(0,700);
    vertex(50,800);
    vertex(0,800);
  endShape(CLOSE);
  popMatrix();
 
//elephant body 2 (back leg 1)
  pushMatrix();
  beginShape();
    fill (b);
    stroke (215,230,170);
    vertex(50,800);
    vertex(0,700);
    vertex(32,620);
    vertex(150,535);
    vertex (150,600);
    vertex (200,650);
    vertex (50,800);
  endShape(CLOSE);
  popMatrix();
  
  
  //elephant leg 4 (back leg 2)
  pushMatrix();
  fill (b);
  stroke (215,230,170);
 beginShape();
    vertex(200,650);
    vertex(250,700);
    vertex(250,800);
    vertex(200,750);
    vertex(125,725);
    vertex(200,650);
  endShape(CLOSE);
  popMatrix();
  
//elephant foot 4 (back leg 2)
  pushMatrix();
  fill (c);
  stroke (215,230,170);
 beginShape();
    vertex(200,750);
    vertex(200,800);
    vertex(250,800);
    vertex(200,750);
  endShape(CLOSE);
  popMatrix();
  
//elephant foot 1
  pushMatrix();
  fill (c);
  stroke (215,230,170);
  beginShape();
    vertex(0,800);
    vertex(0,700);
    vertex(50,800);
    vertex(0,800);
  endShape(CLOSE);
  popMatrix();
 
//elephant body 1
  pushMatrix();
  beginShape();
    fill (b);
    stroke (215,230,170);
    vertex(50,800);
    vertex(0,700);
    vertex(32,620);
    vertex(150,535);
    vertex (150,600);
    vertex (200,650);
    vertex (50,800);
  endShape(CLOSE);
  popMatrix();
  
//elephant top
  pushMatrix();
 beginShape();
    fill (c);
    stroke (215,230,170);
    vertex(150,535);
    vertex(200,535);
    vertex(150,600);
  endShape(CLOSE);
  popMatrix();

//elephant head
  pushMatrix();
 beginShape();
    fill(a);
    stroke (215,230,170);
    vertex(200,535);
    vertex(150,600);
    vertex(250,700);
    vertex(375,650);
    vertex (375,600);
    vertex (325,535);
    vertex (200,535);
  endShape(CLOSE);
  popMatrix();
  
//elephant leg 2
  pushMatrix();
  fill (b);
  stroke (215,230,170);
 beginShape();
    vertex(200,650);
    vertex(250,700);
    vertex(250,800);
    vertex(200,750);
    vertex(125,725);
    vertex(200,650);
  endShape(CLOSE);
  popMatrix();
  
//elephant foot 2
  pushMatrix();
  fill (c);
  stroke (215,230,170);
 beginShape();
    vertex(200,750);
    vertex(200,800);
    vertex(250,800);
    vertex(200,750);
  endShape(CLOSE);
  popMatrix();




}


    
    
