ArrayList<Meteor> meteors;

void setup() {
  fullScreen();
  meteors = new ArrayList<Meteor>();
  for (int i = 0; i < 1000; i++) {
    meteors.add(new Meteor());
  }
}

void draw() {
  background(0);
  
  for (Meteor meteor : meteors) {
    meteor.update();
    meteor.display();
  }
}

class Meteor {
  float x, y, speed, radius;
  
  Meteor() {
    x = random(-width/1, -width/2);
    y = random(0, height);
    speed = random(10, 40);
    radius = random(20, 50);
  }
  
  void update() {
    x += speed;
    y += 0.05 * speed; // Mengubah posisi meteor ke bawah agar terlihat melengkung
    if (x > width + radius || y > height + radius) {
      x = random(-width/2, -width/4);
      y = random(0, height);
    }
  }
  
  void display() {
    fill(255, 150);
    noStroke();
    ellipse(x, y, radius*2, radius*2);
  }
}
