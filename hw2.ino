int xyzPins[] = {13, 12, 14};
int switchState = digitalRead(27);

void setup() {
  Serial.begin(9600);
  pinMode(xyzPins[2], INPUT_PULLUP);
  pinMode(25, INPUT_PULLUP);
  pinMode(26, INPUT_PULLUP);
  pinMode(27, INPUT_PULLUP);
}

void loop() {
  int xVal = analogRead(xyzPins[0]);
  int yVal = analogRead(xyzPins[1]);
  int zVal = analogRead(xyzPins[2]);
  int button1 = digitalRead(25);
  int button2 = digitalRead(26);
  int switchVal = digitalRead(27);
  if (xVal == 4095){
    Serial.print("up");
    Serial.print('\n');
  }
  else if (xVal == 0){
    Serial.print("down");
    Serial.print('\n');
  }
  if (yVal == 0){
    Serial.print("left");
    Serial.print('\n');
  }
  else if (yVal == 4095){
    Serial.print("right");
    Serial.print('\n');
  }
  if (button1 == 0){
    Serial.print("green");
    Serial.print('\n');
  }
  if(button2 == 0){
    Serial.print("blue");
    Serial.print('\n');
  }
  if (switchVal != switchState){
    Serial.print("switch");
    Serial.print('\n');
    switchState = switchVal;
  }
  delay(500);
}
