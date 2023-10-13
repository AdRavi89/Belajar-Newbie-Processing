int x = 200;
int y = 200;
int size = 50;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  rect(x, y, size, size);
}

void keyPressed() { //Ketika tombol keyboard ditekan, fungsi keyPressed() akan dipanggil
  if (keyCode == UP) {
    y -= 10;
  } else if (keyCode == DOWN) { //if-else untuk menentukan arah gerakan objek kotak.
    y += 10;
  } else if (keyCode == LEFT) {
    x -= 10;
  } else if (keyCode == RIGHT) {
    x += 10; //ika tombol arrow ke atas ditekan, maka posisi y dikurangi 10. Jika tombol arrow ke bawah ditekan, maka posisi y ditambah 10. Jika tombol arrow ke kiri ditekan, maka posisi x dikurangi 10. Jika tombol arrow ke kanan ditekan, maka posisi x ditambah 10.
  }
}
