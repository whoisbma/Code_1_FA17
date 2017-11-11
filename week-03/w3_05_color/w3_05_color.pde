// code 1 FA 17
// week 3 - example 05
// bryan ma
// color data type and color function
// draw a variety of rectangles with different fill and stroke color using the color data type
// ...and using random() to set each channel for some.

color c0;
color c1;
color c2;
color c3;
color c4;
color c5;
color c6;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  
  c0 = color(240);  // greyscale channel set to 240
  c1 = color(10, 5);  // greyscale to 10, alpha to 5
  c2 = color(220, 80, 100);  // red 220, green 80, blue 100
  c3 = color(0, 200, 210, 20);  //  red 0, green 200, blue 210, alpha 20
  c4 = color(random(255), random(255), random(255));  // random color from 0-255 for each rgb channel
}

void draw() {
  background(255);
  
  c5 = color(random(255), random(255), random(255));  // random color each frame
  c6 = color(100, 150, 120, random(255));  // red 100, green 150, blue 120, with random alpha channel each frame
  
  fill(c1);
  stroke(c2);
  rect(200, 300, 100, 100);
  
  fill(c2);
  stroke(c3);
  rect(400, 300, 100, 100);
  
  fill(c3);
  stroke(c4);
  rect(600, 300, 100, 100);
  
  fill(c4);
  stroke(c5);
  rect(200, 500, 100, 100);
  
  fill(c5);
  stroke(c6);
  rect(400, 500, 100, 100);
  
  fill(c6);
  stroke(c1);
  rect(600, 500, 100, 100);
}