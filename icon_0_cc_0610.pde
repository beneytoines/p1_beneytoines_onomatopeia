import processing.pdf.*;
PFont myfont;
String begudaa="gluglu";

void setup(){
  size (420, 595);
  background(0);
  myfont=createFont("IBMPlexMono-Light.ttf", 12);
  noStroke();
 // beginRecord(PDF, "doc_4.pdf");
}

void draw(){
  background(255);
  fill(0);
  textFont(myfont);
  textSize(12);
  textAlign(CENTER);
  copa(width/2, height/2);
  copa(width/2, 500);
  piecopa (width/2, 310);
 }
 void copa(float px, float py){
 
  push();
  translate(px, py);
  fill(0);
  text("glu",0,0);
  pop();

}
  void piecopa(float px, float py){
  
    // el palo de la copa
   push();
   translate(px,py);
   fill(0);
   for (int i=0; i<180;i=i+16){
   text("ll",0,i);
   }
   pop();
   
   // este es la part de baix de la copa
   push();
   translate(0,0);
   partbaixcopa();
   pop();
  
   // este es la part de dalt de la copa
   push();
   translate(0,0);
   partdaltcopa();
   pop();
   
    // gotes
   push();
   translate(300,500);
   gotaxicoteta();
   pop();
   
   push();
   translate(370,470);
   gotagran();
   pop();
   
   push();
   translate(220, 580);
   gotamesxicoteta();
   pop();

   // beguda
   push();
   translate(250,250);
   beguda();
   pop();
   
   endRecord();
}
