boolean isStarted = false; // Variabel untuk menentukan apakah permainan sudah dimulai
boolean isFinished = false; // Variabel untuk menentukan apakah permainan selesai
int numBalls = 500; // Jumlah objek
float[] x = new float[numBalls]; // Posisi x objek
float[] y = new float[numBalls]; // Posisi y objek
float[] speedX = new float[numBalls]; // Kecepatan objek di sumbu x
float[] speedY = new float[numBalls]; // Kecepatan objek di sumbu y
float gravity = 0.001; // Gravitasi
float radius = 15; // Jari-jari objek
color[] ballColors = new color[numBalls]; // Warna objek

void setup() {
  fullScreen(); // Output akan menjadi full screen
  surface.setResizable(true); // Memungkinkan pengguna untuk mengubah ukuran jendela
  // Inisialisasi posisi, kecepatan, dan warna setiap objek
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(radius, width - radius); //posisi x acak
    y[i] = random(radius, height - radius); //posisi y acak
    speedX[i] = random(-2, 2); //kecepatan x acak
    speedY[i] = random(-2, 2); //kecepatan y acak
    ballColors[i] = color(random(255), random(255), random(255)); //diberikan warna random
  }
}

void draw() {
  background(0, 0, 0); //latar belakang

  if (!isStarted) {
    // Tampilkan halaman awal jika permainan belum dimulai
    displayStartPage();
  } else if (isFinished) {
    // Tampilkan halaman selesai jika permainan telah selesai
    displayFinishPage();
  } else {
    // Menerapkan gaya gravitasi pada kecepatan objek
    for (int i = 0; i < numBalls; i++) {
      speedY[i] += gravity; //menambahkan gravity pada komponen kecepatan
    }

    // Menggerakkan objek berdasarkan kecepatan
    boolean allBallsUp = true; // Variabel untuk mengecek apakah semua objek sudah naik ke atas
    for (int i = 0; i < numBalls; i++) {
      x[i] += speedX[i]; //kecepatan posisi x
      y[i] += speedY[i]; //kecepatan posisi y

      // Membounce objek saat mencapai batas layar
      if (x[i] > width - radius || x[i] < radius) {
        speedX[i] *= -1; //kecepatan setiap kali memantul x
      }
      if (y[i] > height - radius) {
        y[i] = height - radius;
        speedY[i] *= -1; //kecepatan setiap kali memantul y
      }

      // Cek jika ada objek yang masih bergerak ke bawah
      if (speedY[i] > 0) {
        allBallsUp = false;
      }

      // Menggambar objek dengan warna yang berbeda untuk setiap objek.
      fill(ballColors[i]);
      star(x[i], y[i], 5, radius, radius/2); // Mengganti ellipse dengan fungsi untuk menggambar bintang
    }

    // Cek jika semua objek sudah tidak memantul ke atas
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
  text("Apakah kamu ingin melihat bintang ?? *", width/2, height/2 - 50);
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
  text(" - Finish - ", width/2, height/2 - 50);
  fill(0, 150);
  rect(width / 2, height / 2, 150, 50);
  fill(255);
  textSize(20);
  text("Retry", width / 2, height / 2 + 5);
}

void restartGame() {
  // Mengatur ulang posisi, kecepatan, dan warna setiap objek secara acak
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(radius, width - radius); //posisi objek acak di antara radius dan lebar jendela dikurangi radius
    y[i] = random(radius, height - radius);
    speedX[i] = random(-2, 2); //kecepatan diberikan nilai x acak antara -2 dan 2.
    speedY[i] = random(-2, 2); //kecepatan diberikan nilai y acak antara -2 dan 2.
    ballColors[i] = color(random(255), random(255), random(255));
  }
  isFinished = false;
}

void star(float x, float y, int numPoints, float outerRadius, float innerRadius) {
  float angle = TWO_PI / numPoints;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * outerRadius;
    float sy = y + sin(a) * outerRadius;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * innerRadius;
    sy = y + sin(a + halfAngle) * innerRadius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
