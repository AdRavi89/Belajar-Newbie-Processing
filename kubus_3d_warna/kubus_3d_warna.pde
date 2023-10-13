float angle = 0;

void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(255);
  
  // Mengatur perspektif
  translate(width/2, height/2, 0);
  rotateX(angle);
  rotateY(angle*0.3);
  
  // Atur warna tiap sisi kubus
  fill(255, 0, 0); // Sisi depan berwarna merah
  beginShape();
  vertex(-100, -100, 100);
  vertex(100, -100, 100);
  vertex(100, 100, 100);
  vertex(-100, 100, 100);
  endShape(CLOSE);
  
  fill(0, 255, 0); // Sisi belakang berwarna hijau
  beginShape();
  vertex(-100, -100, -100);
  vertex(100, -100, -100);
  vertex(100, 100, -100);
  vertex(-100, 100, -100);
  endShape(CLOSE);
  
  fill(0, 0, 255); // Sisi kiri berwarna biru
  beginShape();
  vertex(-100, -100, -100);
  vertex(-100, -100, 100);
  vertex(-100, 100, 100);
  vertex(-100, 100, -100);
  endShape(CLOSE);
  
  fill(255, 255, 0); // Sisi kanan berwarna kuning
  beginShape();
  vertex(100, -100, -100);
  vertex(100, -100, 100);
  vertex(100, 100, 100);
  vertex(100, 100, -100);
  endShape(CLOSE);
  
  fill(0, 255, 255); // Sisi atas berwarna cyan
  beginShape();
  vertex(-100, -100, -100);
  vertex(100, -100, -100);
  vertex(100, -100, 100);
  vertex(-100, -100, 100);
  endShape(CLOSE);
  
  fill(255, 0, 255); // Sisi bawah berwarna magenta
  beginShape();
  vertex(-100, 100, -100);
  vertex(100, 100, -100);
  vertex(100, 100, 100);
  vertex(-100, 100, 100);
  endShape(CLOSE);
  
  angle += 0.01; // Mengatur kecepatan rotasi kubus
}
