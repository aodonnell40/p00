int second, minute, hour;
float smallGap = 2.4;
float largeGap = 2.3;

void setup() {
  size(400, 400);
  background(0);
  fill(255);
  stroke(0);
}

void draw() {
  updateTime();
  clockFace();
  
  drawHand(96, timeToAngle(12, hour) + timeToAngle(60, minute) / 60, 2, 0, 0, 0); //hour hand
  drawHand(128, timeToAngle(60, minute) + timeToAngle(60, second) / 60, 2, 0, 0, 0); //minute hand
  drawHand(160, timeToAngle(60, second), 1, 255, 0, 0); //second hand
}

void clockFace() {
  stroke(255);
  circle(width / 2, height / 2, height / 1.1);
  stroke(0);
  
  for (int i = 0; i < 60; i++) {
    float theta = radians(i * 6);
    if (i % 5 == 0) {
      line(width / smallGap * cos(theta) + width / 2, height / smallGap * sin(theta) + height / 2, width / 1.1 * cos(theta) + width / 2, height / 1.1 * sin(theta) + height / 2);
    } else {
      line(width / largeGap * cos(theta) + width / 2, height / largeGap * sin(theta) + height / 2, width / 1.1 * cos(theta) + width / 2, height / 1.1 * sin(theta) + height / 2);
    }
  }
}

float timeToAngle(int max, int input) {
  return 2 * PI * input / max;
}

void drawHand(float length, float theta, int weight, int red, int blue, int green) {
  strokeWeight(weight);
  stroke(red, blue, green);
  line(width / 2, height / 2, length * cos(theta - PI / 2) + width / 2, length * sin(theta - PI / 2) + height / 2);
}

void updateTime() {
  second = second();
  minute = minute();
  hour = hour();
}
