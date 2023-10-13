int numBalls = 200; // Jumlah bola
float[] x = new float[numBalls]; // Posisi x bola
float[] y = new float[numBalls]; // Posisi y bola
float[] speedX = new float[numBalls]; // Kecepatan bola di sumbu x
float[] speedY = new float[numBalls]; // Kecepatan bola di sumbu y
float gravity = 0.1; // Gravitasi
float radius = 15; // Jari-jari bola
color[] ballColors = new color[numBalls]; // Warna bola

void setup() {
  size(400, 800);
  
  // Inisialisasi posisi, kecepatan, dan warna setiap bola
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(radius, width - radius); //posisi x acak
    y[i] = random(radius, height - radius); //posisi y acak
    speedX[i] = random(-2, 2); //kecepatan x acak
    speedY[i] = random(-2, 2); //kecepatan y acak
    ballColors[i] = color(random(255), random(255), random(255)); //diberikan warna random
  }
}

void draw() {
  background(220); //latar belakang putih
  
  // Menerapkan gaya gravitasi pada kecepatan bola
  for (int i = 0; i < numBalls; i++) {
    speedY[i] += gravity; //menambahkan gravity pada komponen kecepatan
  }
  
  // Menggerakkan bola berdasarkan kecepatan
  for (int i = 0; i < numBalls; i++) {
    x[i] += speedX[i]; //kecepatan posisi x
    y[i] += speedY[i]; //kecepatan posisi y
    
    // Membounce bola saat mencapai batas layar
    if (x[i] > width - radius || x[i] < radius) {
      speedX[i] *= -.99; //kecepatan setiap kali memantul x
    }
    if (y[i] > height - radius) {
      y[i] = height - radius;
      speedY[i] *= -0.99; //kecepatan setiap kali memantul y
    }
    
    // Menggambar bola dengan warna yang berbeda untuk setiap bola.
    fill(ballColors[i]);
    ellipse(x[i], y[i], radius * 2, radius * 2);
  }
}

void mousePressed() { //Dipanggil kembali saat tombol klik kiri mouse ditekan
  // Mengatur kembali posisi, kecepatan, dan warna setiap bola secara acak
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(radius, width - radius); //posisi bola acak di antara radius dan lebar jendela dikurangi radius
    y[i] = random(radius, height - radius);
    speedX[i] = random(-2, 2); //kecepatan diberikan nilai x acak antara -2 dan 2.
    speedY[i] = random(-2, 2); //kecepatan diberikan nilai y acak antara -2 dan 2.
    ballColors[i] = color(random(255), random(255), random(255));
  }
}
