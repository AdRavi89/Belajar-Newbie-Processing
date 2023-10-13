int x = 200;
int y = 200;
int w = 100;
int h = 100;
color objColor = color(255, 0, 0); // warna awal objek

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  fill(objColor);
  rect(x, y, w, h);
}

void mouseClicked() {
  // periksa apakah klik berada dalam area objek
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    objColor = color(random(255), random(255), random(255)); // ubah warna objek secara acak
  }
}
