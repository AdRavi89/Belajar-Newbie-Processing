void setup() {
  size(400, 400);
}

void draw() {
  background(255);
}

void keyPressed() { //dapat mengecek tombol mana yang ditekan 
  if (key == 'D' || key == 'd') { // Jika tombol D atau d ditekan, maka akan digambar lingkaran pada tengah layar
    // Gambar lingkaran
    fill(255, 0, 0);
    ellipse(width/2, height/2, 100, 100);
  } else if (key == 'K' || key == 'k') { //Sedangkan jika tombol K atau k ditekan, maka akan digambar kotak pada tengah layar.
    // Gambar kotak
    fill(0, 255, 0);
    rect(width/2 - 50, height/2 - 50, 100, 100);
  }
}
