int jumlahBintang = 300; // Jumlah total bintang
float[] bintangX = new float[jumlahBintang];
float[] bintangY = new float[jumlahBintang];
float[] speed = new float[jumlahBintang]; // Array untuk kecepatan setiap bintang
int[] bintangWarna = new int[jumlahBintang]; // Array untuk warna setiap bintang

void setup() {
fullScreen(); // Mengatur tampilan menjadi layar penuh
  for (int i = 0; i < jumlahBintang; i++) {
    bintangX[i] = random(width);
    bintangY[i] = random(-height, 0); // Membuat bintang muncul di posisi Y acak di atas layar
    speed[i] = random(2, 5); // Kecepatan jatuh acak
    bintangWarna[i] = color(random(255), random(255), random(255)); // Warna acak untuk setiap bintang
  }
  noStroke();
}

void draw() {
  background(0);
  for (int i = 0; i < jumlahBintang; i++) {
    fill(bintangWarna[i]);
    drawStar(bintangX[i], bintangY[i], 5, 10, 5); // Gambar bintang dengan warna tertentu
    bintangY[i] += speed[i]; // Perbarui posisi Y berdasarkan kecepatan

    // Jika bintang mencapai bawah layar, mulai lagi dari atas dengan posisi dan kecepatan acak baru
    if (bintangY[i] > height) {
      bintangY[i] = 0;
      bintangX[i] = random(width);
      speed[i] = random(2, 5); // Atur ulang kecepatan dengan nilai acak
      bintangWarna[i] = color(random(255), random(255), random(255)); // Atur ulang warna dengan warna acak baru
    }
  }
}

void drawStar(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * radius1;
    sy = y + sin(a + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
