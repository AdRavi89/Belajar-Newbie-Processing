boolean isStarted = false; // Variabel untuk menentukan apakah permainan sudah dimulai
boolean isFinished = false; // Variabel untuk menentukan apakah permainan selesai
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
  
  if (!isStarted) {
    // Tampilkan halaman awal jika permainan belum dimulai
    displayStartPage();
  } else if (isFinished) {
    // Tampilkan halaman selesai jika permainan telah selesai
    displayFinishPage();
  } else {
    // Menerapkan gaya gravitasi pada kecepatan bola
    for (int i = 0; i < numBalls; i++) {
      speedY[i] += gravity; //menambahkan gravity pada komponen kecepatan
    }
  
    // Menggerakkan bola berdasarkan kecepatan
    boolean allBallsUp = true; // Variabel untuk mengecek apakah semua bola sudah naik ke atas
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
      
      // Cek jika ada bola yang masih bergerak ke bawah
      if (speedY[i] > 0) {
        allBallsUp = false;
      }
    
      // Menggambar bola dengan warna yang berbeda untuk setiap bola.
      fill(ballColors[i]);
      ellipse(x[i], y[i], radius * 2, radius * 2);
    }
  
    // Cek jika semua bola sudah tidak memantul ke atas
    if (allBallsUp) {
      isFinished = true;
    }
  }
}

void mousePressed() { //Dipanggil kembali saat tombol klik kiri mouse ditekan
  if (!isStarted) {
    // Tombol "Start" ditekan, memulai permainan
    isStarted = true;
  } else if (isFinished) {
    // Tombol "Retry" ditekan, mengulang permainan
    restartGame();
  } else {
    // Permainan sedang berjalan, lakukan aksi tambahan saat klik mouse
    // ...
  }
}

void displayStartPage() {
  // Tampilkan halaman awal dengan tombol "Start"
  background(0);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("Bounce Ball", width/2, height/2 - 50);
  fill(0, 150);
  rect(width / 2, height / 2, 150, 50);
  fill(255);
  textSize(20);
  text("Start", width / 2, height / 2 + 5);
}

void displayFinishPage() {
  // Tampilkan halaman selesai dengan tombol "Retry"
  background(0);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("- Selesai -", width/2, height/2 - 50);
  fill(0, 150);
  rect(width / 2, height / 2, 150, 50);
  fill(255);
  textSize(20);
  text("Ulangi ??", width / 2, height / 2 + 5);
}

void restartGame() {
  // Mengatur ulang posisi, kecepatan, dan warna setiap bola secara acak
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(radius, width - radius); //posisi bola acak di antara radius dan lebar jendela dikurangi radius
    y[i] = random(radius, height - radius);
    speedX[i] = random(-2, 2); //kecepatan diberikan nilai x acak antara -2 dan 2.
    speedY[i] = random(-2, 2); //kecepatan diberikan nilai y acak antara -2 dan 2.
    ballColors[i] = color(random(255), random(255), random(255));
  }
  isFinished = false;
}
