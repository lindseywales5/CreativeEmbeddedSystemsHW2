import processing.serial.*;
Serial myPort;  
String val;    
boolean switchVal; 
int[] colors = {0, 100, 50, 220};
int[] sizes = {50, 100, 150, 200, 250};
int count = 0;
int scount = 1;
boolean skip = false;
boolean skip2 = false;
int xPos;
int yPos;
PFont f;
int num = 0;
color curCol = color(colors[count]);

void setup() 
{
  f = createFont("Arial", 22, true); 
  xPos = 200;
  yPos = 200;
  switchVal = true;
  size(600, 600);
  String portName = Serial.list()[5];
  myPort = new Serial(this, portName, 9600);
  myPort.clear(); 
}

void draw()
{
  while ( myPort.available() > 0) { 
    val = myPort.readStringUntil('\n');
    val = trim(val);
    print(val);
    print('\n');
    if(val != null){
      //state1
      if (val.equals("switch") && skip==false)
        skip = true;
      fill(colors[count]);
      background(150);
      noStroke();
      //size and color pick
      if (skip == false && skip2 == false){
        if (val.equals("up")){
          if(count<3)
            count++;
          else
            count = 0;
        curCol = color(colors[count]);
        fill(curCol);      
        }
        else if (val.equals("down")){
          if(count>0)
            count--;
          else
            count = 3;
        curCol = color(colors[count]);
        fill(curCol);     
        }
        if (val.equals("right")){
          if(scount<3)
            scount++;
          else
            scount = 0;     
        }
        else if (val.equals("left")){
          if(scount>0)
            scount--;
          else
            scount = 3;  
        }  
        fill(curCol); 
        circle(xPos, yPos, sizes[scount]);
      }
      //state 2
      if (skip == true && skip2 == false){ 
        fill(curCol);
        circle(xPos, yPos, sizes[scount]);  
        if (val.equals("left")){
          xPos = xPos - 20;
        }
        if (val.equals("right")){
          xPos = xPos + 20;
        }
        if (val.equals("up")){
          yPos = yPos -20;
        }
        if(val.equals("down")){
           yPos= yPos + 20; 
        }
        if(val.equals("green")){
          curCol = color(0,255,0);
          fill(curCol);
        }
        if(val.equals("blue")){
          skip = false;
          skip2 = true;
        }   
      }
      //state 3
      if (skip2 == true && skip == false){
           textFont(f, 22);
           fill(0);
           text("Use the joystick to select a number and blue to accept", 50, 100);
           text(num, 200, 200);
           if (val.equals("up"))
             num++;
           if (val.equals("right"))
             num++;
           if(val.equals("down"))
             num--;
           if (val.equals("left"))
             num--;
           if(val.equals("blue")){
             background(150);
              for(int i = 0; i<num; i++){
                 xPos = 50*(i+1);
                 yPos = 50 * (i+1);
                 circle(xPos, yPos, (i+2)*10);
                 if(num%2 == 0){
                   xPos = xPos+20;
                   yPos = yPos +5;
                 }
                 else{
                   yPos = yPos - 10;
                   xPos = xPos - 10;
                 }  
    
              }
           }
           if(val.equals("green")){
              skip= false;
              skip2=false;
           }
     }
  }
}
}
