const int LED = 13;
const int LED1 = 12;
const int LED2 = 11 ;
const int LED3 = 10;
const int buttonPin = 2;


int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
   pinMode(LED, OUTPUT);
   pinMode(buttonPin, INPUT);

   pinMode(LED1, OUTPUT);
   pinMode(buttonPin, INPUT);

   pinMode(LED2 , OUTPUT);
   pinMode(buttonPin, INPUT);

   pinMode(LED3 , OUTPUT);
   pinMode(buttonPin, INPUT);
   
}

void loop() {
 buttonState = digitalRead(buttonPin);
 delay(10);

 if(buttonState == HIGH) {
   digitalWrite(LED , HIGH);
   delay(100);
 }
 else {
  digitalWrite(LED , LOW);
 }
 if(buttonState == HIGH) {
   digitalWrite(LED1 , HIGH);
   delay(200);
 }
 else {
  digitalWrite(LED1 , LOW);
 }
  if(buttonState == HIGH){
    digitalWrite(LED2 , HIGH);
    delay(300);
  }
    else{
      digitalWrite(LED2 , LOW);
    }
 if(buttonState == HIGH){
    digitalWrite(LED3 , HIGH);
 }
    else{
      digitalWrite(LED3 , LOW);
    }

}
