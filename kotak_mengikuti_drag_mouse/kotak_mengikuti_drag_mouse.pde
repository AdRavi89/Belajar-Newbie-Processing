float objX, objY; // koordinat objek
boolean drag = false; // status objek sedang ditarik atau tidak

void setup() {
  size(400, 400);
  objX = width/2;
  objY = height/2;
  rectMode(CENTER); // mengatur mode gambar persegi sebagai titik pusat
}

void draw() {
  background(255);
  // gambar objek persegi
  fill(200);
  rect(objX, objY, 50, 50);
  // jika objek sedang ditarik, ubah koordinat objek menjadi posisi mouse
  if (drag) {
    objX = mouseX;
    objY = mouseY;
  }
}

void mousePressed() {
  // cek jika mouse menekan objek
  if (dist(mouseX, mouseY, objX, objY) < 25) {
    drag = true;
  }
}

void mouseReleased() {
  // saat tombol mouse dilepas, objek tidak lagi ditarik
  drag = false;
}
