int x = 200; // koordinat x objek
int y = 200; // koordinat y objek
int size = 50; // ukuran objek
boolean inside = false; // status objek di dalam area

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(255);
  // Gambar objek kotak
  if (inside) {
    fill(0, 255, 0); // jika di dalam area, warna hijau
  } else {
    fill(255, 0, 0); // jika di luar area, warna merah
  }
  rect(x, y, size, size);
}

void mousePressed() {
  // Cek apakah mouse berada di dalam area objek
  if (mouseX > x-size/2 && mouseX < x+size/2 && mouseY > y-size/2 && mouseY < y+size/2) {
    // Jika iya, ganti status inside menjadi true
    inside = true;
  }
}

void mouseReleased() {
  // Setelah mouse dilepas, kembalikan status inside menjadi false
  inside = false;
  // Jika objek sebelumnya berada di dalam area, ubah ukurannya menjadi lebih kecil
  if (mouseX > x-size/2 && mouseX < x+size/2 && mouseY > y-size/2 && mouseY < y+size/2) {
    size = size/2;
  }
}
