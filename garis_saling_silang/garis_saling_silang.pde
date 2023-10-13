void setup() {
  size(400, 400);
  background(255);
  strokeWeight(2);
}

void draw() {
  // Tentukan titik awal dan akhir garis secara acak
  float startX = random(width);
  float startY = random(height);
  float endX = random(width);
  float endY = random(height);
  
  // Hitung jarak antara titik awal dan akhir garis
  float distance = dist(startX, startY, endX, endY);
  
  // Jika jarak antara titik awal dan akhir garis lebih kecil dari 100 piksel,
  // gambar garis dengan warna biru
  if (distance < 100) {
    stroke(0, 0, 255);
    line(startX, startY, endX, endY);
  }
  // Jika jarak antara titik awal dan akhir garis lebih besar atau sama dengan 100 piksel,
  // gambar garis dengan warna merah
  else {
    stroke(255, 0, 0);
    line(startX, startY, endX, endY);
  }
}
