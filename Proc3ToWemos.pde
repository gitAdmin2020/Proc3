String txOut=""; 

int dl=100;



void setup(){

  

  size(400,300);

  background(255,255,0);

  txOut=txMCWeb();

  textSize(24);

  fill(0);

  text(txOut,width/2-(textWidth(txOut)/2),120);

  

  

}



void draw(){

  background(255,255,0);

  if (dl<0){

  txOut=txMCWeb();

  dl=100;

  }

  textSize(24);

  fill(0);

  text(txOut,width/2-(textWidth(txOut)/2),120);

  

  String txOut2="";

  fill(255,0,0);

  textSize(18);

  dl--;

  txOut2=str(dl);

  text(txOut2,width/2-(textWidth(txOut2)/2),height-40);

   



  delay(100);

  

}







String txMCWeb(){

 

  String tx="";

  String urlBot="https://markerbank.com/api3/bot21/bot.php";

  String request=urlBot+"?key=52428819660865536019660800000&par=2&frm=3";

  String[] lines = loadStrings(request);

  //println("there are " + lines.length + " lines");

  for (int i = 0 ; i < lines.length; i++) {

  //println(lines[i]);

  String[] tmp=lines[i].split(":");

  print(tmp[2]);

  tx=tmp[2];

}



return  tx; 

  

}
