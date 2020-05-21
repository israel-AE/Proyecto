import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress direccionRemota;

int p=0,q=0, s,l;

void setup(){
  size (1400,900);
  oscP5 = new OscP5(this, 12000);
  direccionRemota = new NetAddress("192.168.100.7", 12000);
  background(0);
}

void draw(){

    if(keyPressed == true ){
      if(key == 'a'){    
       fill(113, 255, 0, s);
       strokeWeight(l);
       rect(p,q,50,50); 
      }else if(key == 's'){
       fill(255, 224, 0,s); 
       rect(p,q,50,50);
      }else if(key == 'd'){
        fill(255,48,0,s);
        rect(p,q,50,50);
      }else if(key == 'f'){
        fill(175,12,232,s);
        rect(p,q,50,50);
      }else if(key == 'j'){
        fill(0,161,255,s);
        rect(p,q,50,50);
      }else if(key == 'k'){
        fill(255, 0,195,s); 
        rect(p,q,50,50);
      }else if(key == 'l'){
        fill(77,255,207,s);
        rect(p,q,50,50);
      }else if(key == 'ñ'){
        fill(0,12,255,s);
        rect(p,q,50,50);
     }
      delay(200);
      p = p+50;
      if(p>1350){
          p=0;
          q= q+50;
      }
  }
  
  }


void oscEvent(OscMessage theOscMessage) {  
  if (theOscMessage.checkAddrPattern("/s") == true) {
    s = theOscMessage.get(0).intValue();
  }

  if (theOscMessage.checkAddrPattern("/l") == true) {
    l = theOscMessage.get(0).intValue();
  }
}
