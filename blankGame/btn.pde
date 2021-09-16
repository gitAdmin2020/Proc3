
class MyButton{
  
float x = 50;
float y = 50;
float w = 100;
float h = 55;

int u=10;

//color btnColor=color(75,50,180);
color btnColor=color(255,255,255,200);
color btnRollOver=color(255,255,255,100);

String label="кнопка 1";
float lX=20;
float lY=30;
int ts=18;
color txColor=color(0);

boolean btnClicked=false;

boolean ButtonDraw(){
  
  textAlign(LEFT, BASELINE);
  
  noStroke();
  fill(0,0,0,75);
  
  textSize(ts);
  float textOfset=textWidth(label);
  
   w=textOfset+textOfset;
  
  rect(x+3,y+5,w+3,h+3,u);
  
  //stroke(1);
  
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
   
    fill(btnRollOver);
    
     if (mousePressed){btnClicked=true; }
     else {btnClicked=false;}
    
  } else {
    fill(btnColor);
    btnClicked=false;
  }
  rect(x,y,w,h,u);
  fill(txColor);
  textSize(ts);
  
  fill(txColor);
  lY=ts+ts/2+ts/4;
  text(label,x+w/2-textOfset/2,y+lY);
  
  //text(label,x+lX,y+lY);
  
 
  
  return btnClicked;
  
}
  
}
