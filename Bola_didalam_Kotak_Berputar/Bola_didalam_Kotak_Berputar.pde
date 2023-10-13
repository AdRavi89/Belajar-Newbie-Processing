float cubeSize = 200; // Ukuran sisi kubus
float ballRadius = 50; // Jari-jari bola

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(255);
  lights();
  
  translate(width/2, height/2, 0); // Pusatkan objek di tengah layar
  rotateX(frameCount * 0.01); // Putar objek secara horizontal
  rotateY(frameCount * 0.00); // Putar objek secara vertikal
  
  // Gambar kubus
  noFill();
  stroke(0);
  box(cubeSize);
  
  // Gambar bola di dalam kubus
  fill(255, 0, 0);
  noStroke();
  sphere(ballRadius);
}
