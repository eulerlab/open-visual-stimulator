
// constants won't change. Used here to set a pin number:
const int pin12 =  12;// the number of the LED pin
const int pin11 =  11;// the number of the LED pin
const int pin10 =  10;// the number of the LED pin



// Generally, you should use "unsigned long" for variables that hold time
// The value will quickly become too large for an int to store
unsigned long millis1 = 0;        // will store last time LED was updated
unsigned long millis2 = 0;
unsigned long millis3 = 0;

unsigned long millis12 = 0;        // will store last time LED was updated
unsigned long millis11 = 0;        // will store last time LED was updated
unsigned long millis10 = 0;        // will store last time LED was updated



void setup() {
  // set the digital pin as output:
  pinMode(pin10, OUTPUT);
  pinMode(pin11, OUTPUT);
  pinMode(pin12, OUTPUT);
  millis1=micros();
  millis10=micros();
  millis2=millis();
  millis11=millis();
  millis3=millis();
  millis12=millis();
}

void loop() {
  
  millis10=micros();
  millis11=millis();
  millis12=millis();
  
  if (millis10 - millis1 <= 400) {
    // save the last time you blinked the LED
    digitalWrite(pin10,LOW);
  }
  if (millis10-millis1>400){
    digitalWrite(pin10,HIGH);
  }
    if (millis10-millis1>=2000){
      millis1=micros();
      
  }

  if (millis11-millis2<=5){
    digitalWrite(pin11,HIGH);
  }
  if (millis11-millis2>5){
    digitalWrite(pin11,LOW);
  }  
    if (millis11-millis2>=10){
    millis2=millis();
   
  }  

  if (millis12-millis3<=50){
    digitalWrite(pin12,HIGH);
  }
  if (millis12-millis3>50){
    digitalWrite(pin12,LOW);
  }  
    if (millis12-millis3>=100){
    millis3=millis();
   
  }  
}
    
