
void setup() {
  size(400, 400);
  background(255);
  frameRate = 30;
  fill(0);
  stroke(255);
}

void draw() {
  clockFace();
  strokeWeight(1);
  drawHand(100, timeToAngle(59, second()));
  strokeWeight(2);
  drawHand(80, timeToAngle(59, minute()));
  strokeWeight(2);
  drawHand(50, timeToAngle(11, hour()));
}

void clockFace() {
  circle(width / 2, height / 2, height / 1.1);
  
}

float timeToAngle(int max, int input) {
  if (max == 59) {
    return PI * (input + 1) / 30;
  }
  return PI * (input + 1) / 6;
}

void drawHand(float length, float theta) {
  line(width / 2, height / 2, length * cos(theta - PI / 2) + width / 2, length * sin(theta - PI / 2) + height / 2);
}
