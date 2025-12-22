void setup() {
  Serial.begin(115200);
  delay(2000);
  pinMode(4, INPUT_PULLUP);
  Serial.println("starting");
}

void loop() {
  Serial.println(digitalRead(4));
  delay(1000);
}