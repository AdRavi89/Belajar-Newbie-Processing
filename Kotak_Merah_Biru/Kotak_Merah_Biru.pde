void setup() {
  size(400, 400);
  background(255);
  strokeWeight(2);
}

void draw() {
  // Tentukan koordinat titik tengah bujursangkar
  float centerX = width / 2;
  float centerY = height / 2;
  
  // Hitung jarak antara titik tengah bujursangkar dengan titik acak
  float distance = dist(centerX, centerY, mouseX, mouseY);
  
  // Jika jarak antara titik tengah bujursangkar dengan titik acak lebih kecil dari 100 piksel,
  // gambar bujursangkar dengan warna biru
  if (distance < 100) {
    stroke(0, 0, 255);
    rectMode(CENTER);
    rect(centerX, centerY, 100, 100);
  }
  // Jika jarak antara titik tengah bujursangkar dengan titik acak lebih besar atau sama dengan 100 piksel,
  // gambar bujursangkar dengan warna merah
  else {
    stroke(255, 0, 0);
    rectMode(CENTER);
    rect(centerX, centerY, 100, 100);
  }
}
