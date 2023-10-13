void setup() {
  size(800, 800, P3D);//*atur ukuran layar dan mode P3D menggunakan fungsi size().
}

void draw() {
  background(255);//*Di dalam fungsi draw(), kita atur latar belakang menjadi putih dengan background(255).
  translate(width/2, height/2, 0);//*Kemudian, kita atur posisi awal untuk menggambar bola dengan translate(width/2, height/2, 0) agar bola terletak di tengah-tengah layar.
  
  directionalLight(255, 255, 255, // Warna biru
  0, -255, 0); // Posisi sorotan dari bawah 
  directionalLight(255, 0, 0, // Warna kuning
  0, 250, 0); // Posisi sorotan dari atas
  
  rotateX(frameCount * 0.01);//*Setelah itu, kita atur rotasi bola dengan rotateX()
  rotateY(frameCount * 0.30);//* dan rotateY() agar bola berputar sesuai dengan pergerakan framecount.
  sphere(300);//*Akhirnya, kita gambar bola menggunakan fungsi sphere() yang akan menggambar bola dengan jari-jari sebesar angka yang di sett.
}
