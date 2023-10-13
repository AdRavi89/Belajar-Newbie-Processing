float scale = 1.0; // skala awal mempresentasikan skala objek
int centerX, centerY; // titik tengah

void setup() {
  size(400, 400);
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  background(255);
  translate(centerX, centerY); // pemanggilan translate() yang akan menggeser titik pusat koordinat menjadi (centerX, centerY). 
  scale(scale); //akan mengubah skala objek sesuai dengan variabel scale.
  // Gambar objek di sini
  rect(-50, -50, 100, 100); //dapat mengubah objek yang digambar di dalam fungsi draw() dengan mengganti kode rect(-50, -50, 100, 100) dengan objek yang diinginkan.
}

void mouseClicked() {
  if (mouseButton == LEFT) { // Klik kiri untuk zoom
    scale += 0.1; //akan ditambah 0.1 untuk memperbesar skala objek
  } else if (mouseButton == RIGHT) { // Klik kanan untuk reset
    scale = 1.0; //akan direset menjadi 1.0 untuk mengembalikan skala objek ke ukuran awal.
  }
}
