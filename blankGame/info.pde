PImage em;

stars st = new stars();


void startWinIni(){
  
  em=loadImage("bg/em.png");
  //em2=loadImage("bg/em2.png");
  
  st.starsIni();
  
}

int firstClick=0;
int FirstDescrTime=0;



void startWin(){

  background(36,148,244);
  
  st.dRaw(); 
  
  //drawSimleLines();
  
  image(em,width/2-em.width/2,height/2-em.height/2-50);

  /*
  btnStartBSG.x=width/2-btnStartBSG.w-5;
  if(btnStartBSG.ButtonDraw()){mode=1;}
 */
 
  stroke(255,255,255,120);
  strokeWeight(5);
  
  btnStartPC.x=width/2-btnStartPC.w/2;
  if(btnStartPC.ButtonDraw()){mode=4;}
  
  
}

void pauseWin(){
  
  background(36,148,244);
  
  st.dRaw(); 
  
  String lb="Game Pause Mode";
  
  drTitle(lb, 40, color(255), 32, true, false, 0);
  
  image(em,width/2-em.width/3,height/2-em.height/3-80,em.width/1.5,em.height/1.5);

  /*
  btnStartBSG.x=width/2-btnStartBSG.w-5;
  if(btnStartBSG.ButtonDraw()){mode=1;}
 */
 
  stroke(255,255,255,120);
  strokeWeight(5);
  
  btnStartPC.x=width/2-btnStartPC.w/2;
  btnStartPC.label="Continue the Game";
  if(btnStartPC.ButtonDraw()){mode=4;}
  
  btnExitBSG.x=width/2-btnExitBSG.w/2;
  if(btnExitBSG.ButtonDraw()){System.exit(0);}
  
  
}
