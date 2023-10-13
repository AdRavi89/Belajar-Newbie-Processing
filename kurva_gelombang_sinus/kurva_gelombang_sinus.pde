void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  stroke(0); //atur warna garis yang akan digunakan
  noFill();
  beginShape(); //Untuk menggambar kurva gelombang sinus, untuk memulai penggambaran bentuk.
  for (float x = 0; x <= width; x += 5) { // untuk mengevaluasi setiap titik pada kurva dengan menggunakan nilai variabel x sebagai koordinat horizontal.
    float y = 200 + sin(x * 0.05 + frameCount * 0.1) * 50; //Pada setiap iterasi loop for, hitung nilai y berdasarkan persamaan y = 200 + sin(x * 0.05 + frameCount * 0.1) * 50. Persamaan ini menghasilkan nilai sinus dari sudut x * 0.05 + frameCount * 0.1, kemudian nilai sinus tersebut dikalikan dengan 50 untuk mengatur tinggi gelombang. Nilai 200 digunakan sebagai offset agar kurva tidak terlalu rendah.
    vertex(x, y); //Setiap titik pada kurva didefinisikan sebagai vertex
  }
  endShape(); //untuk mengakhiri penggambaran bentuk.
}
//program di atas akan menghasilkan kurva gelombang sinus dengan frekuensi yang berubah-ubah seiring waktu karena variabel frameCount yang menambah nilai setiap kali draw() dipanggil.
