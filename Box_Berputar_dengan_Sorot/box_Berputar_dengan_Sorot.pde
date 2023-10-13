void setup() {
  size(800, 800, P3D);//*atur ukuran layar dan mode P3D menggunakan fungsi size().
}

void draw() {
  background(255);//*Di dalam fungsi draw(), kita atur latar belakang menjadi putih dengan background(255).
  translate(width/2, height/2, 0);//*Kemudian, kita atur posisi awal untuk menggambar object dengan translate(width/2, height/2, 0) agar object terletak di tengah-tengah layar.
  
  directionalLight(255, 255, 255, // Warna putih
  0, -255, 0); // Posisi sorotan dari bawah 
  directionalLight(255, 0, 0, // Warna merah
  0, 250, 0); // Posisi sorotan dari atas
  
  rotateX(frameCount * 0.09);//*Setelah itu, atur kecepatan rotasi dengan rotateX()
  rotateY(frameCount * 0.09);//* dan rotateY() agar berputar sesuai dengan pergerakan framecount.
  box(300);//gambar object menggunakan fungsi sphere() bola / box() untuk kubus yang akan digambar sebesar angka yang di sett.
 

}
