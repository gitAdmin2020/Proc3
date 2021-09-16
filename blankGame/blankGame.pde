 MyButton btnStartBSG=new MyButton();
 MyButton btnExitBSG=new MyButton();
 MyButton btnStartPC=new MyButton();
 MyButton btnShowIDScr=new MyButton();
 
 MyButton btnStartPers=new MyButton();
 
 int mode=0; 
 int level=0; 
 int levelTime=100; 
 int levelTimeMinimum=500; 
 int limitLevels=7;
 
 boolean endLevel=false;
 
 boolean WebConect=false;
 
 boolean showLevelTasks=false;
 
  PImage btnPause;
  
  float clkHeight=80;
  int clkPos=0;
 
 void setup() {
   size(800,500);
   startWinIni();
   
   btnStartPC.y=height-100;   
   btnStartPC.label="Play The Game";
   
   btnExitBSG.y=height-170;
   btnExitBSG.label="Leave the Game";
   
   btnPause=loadImage("bg/btnPause.png");
   
   
 }
 
 
 void draw(){
   
      noStroke();

   
   if (mode==0) startWin(); 
   if (mode==4) game();
   if (mode==5) pauseWin(); 
   //text(mode,20,20);
   //if (mode==1)
   
 }
 
 
 void mousePressed(){
   
   if (mouseY>10 && mouseY<clkHeight+10 && mouseX>width-clkHeight-10 && mouseX<width-10){
    //status="show Exit Window";
    clkPos=4;
    //spdR=1;
    mode=5;
  }
   
   
 }
