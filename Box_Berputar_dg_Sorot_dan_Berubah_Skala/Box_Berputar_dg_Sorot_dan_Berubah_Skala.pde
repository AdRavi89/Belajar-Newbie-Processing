float scale = 1.0; // skala awal mempresentasikan skala objek
int centerX, centerY; // titik tengah

void setup() {
  size(800, 800, P3D);//*atur ukuran layar dan mode P3D menggunakan fungsi size().
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  background(255);//Di dalam fungsi draw(), kita atur latar belakang menjadi putih dengan background(255).
  translate(width/2, height/2, 0);//*Kemudian, kita atur posisi awal untuk menggambar object dengan translate(width/2, height/2, 0) agar object terletak di tengah-tengah layar.
  scale(scale); //akan mengubah skala objek sesuai dengan variabel scale.
  // Gambar objek di sini
  rect(-50, -50, 100, 100); //dapat mengubah objek yang digambar di dalam fungsi draw() dengan mengganti kode rect(-50, -50, 100, 100) dengan objek yang diinginkan.

  directionalLight(255, 255, 255, // Warna putih
  0, -255, 0); // Posisi sorotan warna putih dari bawah 
  directionalLight(255, 0, 0, // Warna merah
  0, 250, 0); // Posisi sorotan warna merah dari atas
  
  rotateX(frameCount * 0.02);//Setelah itu, atur kecepatan rotasi dengan rotateX()
  rotateY(frameCount * 0.02);//dan rotateY() agar berputar sesuai dengan pergerakan framecount.
  box(200);//gambar object menggunakan fungsi sphere() bola / box() untuk kubus yang akan digambar sebesar angka yang di sett.
}
void mouseClicked() {
  if (mouseButton == LEFT) { // Klik kiri untuk zoom
    scale += 0.1; //akan ditambah 0.1 untuk memperbesar skala objek
  } else if (mouseButton == RIGHT) { // Klik kanan untuk reset
    scale = 1.0; //akan direset menjadi 1.0 untuk mengembalikan skala objek ke ukuran awal.
  }
}
