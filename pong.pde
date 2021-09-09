import processing.sound.*;
import gifAnimation.*;

//Ball
int ballSize;
int ballHitBox;
int posY;
int posX;
int movY;
int movX;

int velocity;

//Player one
int jug1x;
int jug1y;
int jug1SX;
int jug1SY;
int p1Goals;

boolean q;
boolean a;

//Player two
int jug2x;
int jug2y;
int jug2SX;
int jug2SY;
int p2Goals;

boolean up;
boolean down;

//Game
boolean pause;
boolean status;
GifMaker fileGIF;
SoundFile sound1;
SoundFile sound2;
SoundFile sound3;

void setup() {
    //fileGIF= new GifMaker(this,"animation.gif");
    //fileGIF.setRepeat(0);
    //----------Field------------
    size(1200,700);
    sound1 = new SoundFile(this, "sounds/Closed-Hi-Hat-4.wav");
    sound2 = new SoundFile(this, "sounds/Closed-Hi-Hat-1.wav");
    sound3 = new SoundFile(this, "sounds/Ensoniq-ZR-76-Tympani-High.wav");
    pause=true;
    status=false;
    //-----------Ball------------
    //------size---------
    ballSize=50;
    ballHitBox=round(ballSize/2);
    //------Position-----
    posY=350;
    posX=600;
    //------Direction----
    movY=round(random(5,10));
    movX=round(random(5,10));
    velocity=movX;
    
    //--------Player two---------
    //------Size---------
    jug2SX=5;
    jug2SY=100;
    //------Position-----
    jug2x=width-(40+jug2SX);
    jug2y=height/2-jug2SY/2;
    
    p2Goals=0;
    
    //--------Player one---------
    //------Size---------
    jug1SX=5;
    jug1SY=100;
    //------Position-----
    jug1x=40;
    jug1y=height/2-jug1SY/2;;
    
    p1Goals=0;
}

void draw() {
    background(100);
      
    if(pause==false){
      line(width/2, 0, width/2, height);
      
      circle(posX,posY,ballSize);
    
      posX=posX+movX;
      posY=posY+movY;
      
      if(up==true) {
        if(jug2y>0) {
          jug2y=jug2y-20;
        }
      }
      if(down==true) {
         if((jug2y+jug2SY)<height) {
           jug2y=jug2y+20;
         }
      }
      if(q==true) {
        if(jug1y>0) {
          jug1y=jug1y-20;
         }
      }
      if(a==true) {
         if((jug1y+jug1SY)<height){
           jug1y=jug1y+20;
         }
      } 
      
      //---------PlayerOne(left) collisions----------------------------------
      if(posX<=jug1x+jug1SX+ballHitBox && posX>=jug1x-ballHitBox && posY<=jug1y+jug1SY+ballHitBox && posY>=jug1y-ballHitBox)
      {
         movX--;
         movX=movX*-1;
         thread("playSound2");
      }
      //---------------------------------------------------------------------
      
      //---------PlayerTwo(right) collisions----------------------------------
      if(posX<=jug2x+jug2SX+ballHitBox && posX>=jug2x-ballHitBox && posY<=jug2y+jug2SY+ballHitBox && posY>=jug2y-ballHitBox)
      {
         movX++;
         movX=movX*-1;
         thread("playSound2");
      }
      //---------------------------------------------------------------------
      
      //---------Ball collisions----------------------------------
      if((posX>=width-ballHitBox))
      {
         posY=350;
         posX=600;
         movX=velocity;
         movX=movX*-1;
         p1Goals++;
         thread("playSound3");
      }
      if( posX<=ballHitBox)
      {
        posY=350;
        posX=600;
        movX=velocity*-1;
        movX=movX*-1;
        p2Goals++;
        thread("playSound3");
      }      
      
      if(posY>=height-ballHitBox || posY<=ballHitBox)
      {
         thread("playSound1");
         movY=movY*-1;
      }
      //----------------------------------------------------------
      fill(255, 0, 0);
      textSize(100);
      text(p1Goals, 250, 150);
      rect(jug1x,jug1y,jug1SX,jug1SY);
      
      fill(0, 0, 250);
      textSize(100);
      text(p2Goals, 900, 150);
      rect(jug2x,jug2y,jug2SX,jug2SY) ;
      
      fill(255, 255, 255);
      
      if(p1Goals==5 || p2Goals==5){
        pause=true;
        status=true;
      }
      
    } else {
      if(status==true){
        fill(255, 255, 255);
        rect(400, 160, 400, 250, 7);
        fill(50);   
        textSize(40);
        if(p1Goals==5){
          fill(255, 0, 0);
          text("Player 1 win", 490, 250, 400, 540);
        }else{
          fill(0, 0, 250);
          text("Player 2 win", 490, 250, 400, 540);
        }
      } else {
        fill(255, 255, 255);
        rect(400, 160, 400, 250, 7);
        rect(100, 160, 240, 370, 7);
        
        fill(0, 0, 0);
        rect(500, 310, 200, 50, 7);
        square(130, 300, 70);
        square(130, 400, 70);
        
        square(230, 300, 70);
        square(230, 400, 70);
          
        fill(50);   
        String pauseText = "Press space key to continue or pause.";
        textSize(40);
        text(pauseText, 420, 170, 400, 540);
        text("Controllers", 110, 170, 400, 540);
        text("J1", 150, 230, 400, 540);
        text("J2", 250, 230, 400, 540);
        
        fill(255, 255, 255);
        textSize(30);
        text("space", 550, 340);
        text('q', 155, 340);
        text('a', 155, 440);
        text("up", 245, 340);
        textSize(25);
        text("down", 235, 440);
      }     
    }  
  //fileGIF.addFrame();
}

void keyPressed()
{
  if (key == ' ')
  {
    pause = !pause;
    if(status==true){
      status = false;
      p1Goals=0;
      p2Goals=0;
    }
    
  }
  if (keyCode == UP)
  {
    up = true;
  }
  if (keyCode == DOWN)
  {
    down = true;
  }
  if (key == 'q')
  {
    q=true;
  }
  if (key == 'a' )
  {
    a=true;
  }
}

void keyReleased()
{
  if (keyCode == UP)
  {
    up = false;
  }
  if (keyCode==DOWN)
  {
    down = false;
  }
  if (key=='q')
  {
    q=false;
  }
  if (key=='a')
  {
    a=false;
  }
}

void mousePressed ( ) {
  //fileGIF.finish();
}

void playSound1(){
  sound1.play();
}

void playSound2(){
  sound2.play();
}

void playSound3(){
  sound3.play();
}
