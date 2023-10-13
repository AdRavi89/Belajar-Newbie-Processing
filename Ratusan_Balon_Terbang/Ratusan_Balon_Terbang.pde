class Balloon { //definisi class
  float x, y; //posisi
  float speed;//kecepatan,
  color balloonColor; //warna balon
  
  Balloon(float x, float y, float speed, color balloonColor) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.balloonColor = balloonColor;
  }
  
  void update() { //update posisi balon
    y -= speed;
    if (y < -20) { //Jika balon melewati batas atas layar
      y = height + 20; // diatur kembali ke bawah layar
    }
  }
  
  void display() { //Tampilkan balon di layar
    stroke(0);
    fill(balloonColor);
    ellipse(x, y, 50, 60); // sebagai sebuah elips ukuran balon
    
    stroke(balloonColor);
    line(x, y + 15, x, y + 80); //ukuran tali balon garis vertikal
  }
}

Balloon[] balloons;
int totalBalloons = 300; // Jumlah balon yang ingin ditampilkan

void setup() {
  size(1366, 768); //ukuran output yang diinginkan
  smooth();
  
  balloons = new Balloon[totalBalloons];
  
  // Membuat balon dengan posisi, kecepatan, dan warna yang berbeda
  for (int i = 0; i < totalBalloons; i++) {
    float x = random(width); //letak x random
    float y = random(height); //letak x random
    float speed = random(0.8, 1);//kecepatan
    color balloonColor = color(random(255), random(255), random(255)); //warna random
    balloons[i] = new Balloon(x, y, speed, balloonColor);
  }
}

void draw() { //update dan menampilkan setiap balon
  background(255); //warna background putih
  
  // Mengupdate dan menampilkan setiap balon dalam array
  for (Balloon balloon : balloons) {
    balloon.update();
    balloon.display();
  }
}
