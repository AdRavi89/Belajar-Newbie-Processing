PShape cube; // variabel untuk menyimpan kubus 3D

void setup() {
  size(500, 500, P3D); // menggunakan mode mode P3D untuk mode 3D.
  cube = createShape(BOX, 100); // membuat kubus dengan ukuran sisi 100
}

void draw() {
  background(255);
  translate(width/2, height/2, 0); // pindahkan koordinat pusat ke tengah layar
  rotateY(frameCount * 0.01); // putar kubus secara horizontal sesuai dengan frameCount.
  rotateX(frameCount * 0.02); // putar kubus secara vertikal sesuai dengan frameCount.
  shape(cube); // gambar kubus
}
