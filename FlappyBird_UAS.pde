/* ide setpoint */
/* */
/* memunculkan burung pada posisi awal tertentu */
/* mengubah kecepatan tabung */
/* ubah gambar burung */
/* ubah kunci untuk melompat */
/* mengubah warna background (langit, rumput) */
/* ------------------------------------------------ --------- */


float x=75;  //posisi awal di X burung
float y = 2*(600/3);  //posisi awal di Y burung
float speed;  //kecepatan burung disetiap lompatan
float angle;  //sudut ke horisontal tempat burung melompat
float ySpeed;  //y-kecepatan burung (Newton)
float accel = 0;  //percepatan burung untuk mensimulasikan gravitasi (Newton)

PImage bird, tube, bg, stbg, gobg;  //Deklarasi  gambar tabung

int[] tab_tubeX = new int[2];  //tabel  yang menunjukkan  posisi  X  tabung
int[] tab_tubeY = new int[2];  //tabel  yang menunjukkan  posisi  Y  tabung

int move_tube = 0;  //vitesse des tubes en X
int score = 0;  //variable utile pour les scores

boolean over = false;  //variable pour la fin de partie

PFont font;

int screen = 0;

void setup() {
  size(500, 750);  //taille de la fenetre
  font = createFont("data/04B_19__.TTF",50); //jenis font dan ukuran
  textFont(font);
  textAlign(CENTER, CENTER);  //Meratakan teks di tengah
  noStroke();  //Tidak ada kerangka untuk bentuk
  
  angle = 90;  //angle du jump
  speed = 12;  //vitesse de l'oiseau pendant les sauts

  bird = loadImage("data/bird.png"); 
  tube = loadImage("data/tube.png");  
  bg = loadImage("data/bg1.jpg");
  stbg = loadImage("data/stbg2.png"); //Mengimpor gambar bg. start
  gobg = loadImage("data/gobg.jpg"); //Mengimpor gambar bg. start
  

  for (int i = 0; i<2; i++) {//initialisation des deux premiers tubes
    tab_tubeX[i] = i*575/2 + 300;  //initialisation des valeurs en X des tubes
    tab_tubeY[i] = int(random(-550, -350));  //initialisation des valeurs en Y des tubes
  }
}

void draw() {
  switch (screen) {
    case 0: // Layar pertama
      drawStartPage();
      break;
    default: // Layar default (gameplay)
      drawScreen1();
      break;
  }
}
void drawStartPage() { //halaman awal
  image(stbg,0,0, width, height);  // gambar latar belakang
  textSize(50);  // Ukuran teks
  textAlign(CENTER, CENTER);  // Meratakan teks di tengah
  fill(#FFA500);  // Warna bayangan hitam
  text("Click to Play", width / 2 + 3, height / 2 - 248);  // Teks bayangan dengan pergeseran koordinat
  fill(0);  // Warna teks
  text("Click to Play", width / 2, height / 2 - 250);  // Teks utama
  textSize(30);  // Ukuran teks tombol
  rectMode(CENTER);  // Set mode persegi tengah untuk tombol
  fill(#FFA500);  // Warna tombol orage
  stroke(#FFFFFF);  // Warna tepi tombol putih
  strokeWeight(4);  // Ketebalan tepi tombol
  rect(width / 2, height / 2 + 70, 150, 50);  // Tombol "Start"
  fill(0);  // Warna teks tombol
  text("Start", width / 2, height / 2 + 70, 150, 50);  // Teks tombol "Start"
}

void drawScreen1() {
  if (!over) { //tant que la partie n'est pas perdu
    image(bg,0,0); //tampilan bg
    bg.resize(width, height);  

    ySpeed -= accel; //variation de la valeurs de la vitesse de l'oiseau
    y -= ySpeed;  //variation de la position de l'oiseau

    image(bird, x, y, 60, 50); //affichage de l'oiseau



    for (int j = 0; j<2; j++) {  //boucle qu passe dans tout les tubes
      image(tube, tab_tubeX[j], tab_tubeY[j], 78, 1500);  //affichage des tubes
      tab_tubeX[j] = tab_tubeX[j] - move_tube;  //variation de la position en X des tubes
      if (tab_tubeX[j]<-75) {  //si un tubes arrive a gauche, elle repart a droite
        tab_tubeX[j] = tab_tubeX[j]+570;
        tab_tubeY[j] = int(random(-550, -350));  //lorsque un tube apparait a droite, il change de hauteur
        score++;//le score augmente de 1
      }
    }
   

    for (int j = 0; j<2; j++) {  //test collisions avec les tubes
      if (((x+55 > tab_tubeX[j]) && (y+2 < tab_tubeY[j] + 642) && (x<tab_tubeX[j] + 78)) || ((x+58 > tab_tubeX[j]) && (y+48 > tab_tubeY[j]+843) && (x<tab_tubeX[j]+78))) {
        over = true;  //si l'oiseau touche un tube, c'est perdu
      }
    }
    if (y+50>600 ||y<0) {  //test collisions avec haut et bas
      over = true;  //si l'oiseau touche la bordure haute ou basse
    }

    fill(255);  //blanc
    textSize(50);  //taille du texte pour afficher le score
    text(score, width/2, 55);  
    
    
  } else {

    noLoop(); 
    image(gobg,0,0, width, height); //tampilan bg sesuai uk. layar
    text("Score", 255, 320 );
    text(score, 255, 390);  //Tampilan skor

    //tombol exit
    fill(#FFA500);  // Warna tombol exit
    rect(width / 2 + 100, height / 2 + 150, 150, 50);  // Tombol exit
    fill(0);  // Warna teks tombol exit
    textSize(28);  // Ukuran teks tombol exit
    text("Exit", width / 2 + 100, height / 2 + 150);  // Teks tombol exit
    
    //tombol restart
    fill(#FFA500);  // Warna tombol restart
    rect(width / 2 - 100, height / 2 + 150, 150, 50);  // Tombol restart
    fill(0);  // Warna teks tombol restart
    textSize(28);  // Ukuran teks tombol restart
    text("Restart", width / 2 - 100, height / 2 + 150);  // Teks tombol restart
  }
}
 
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    exit(); // Keluar dari program Processing
  }
  if (key == ' ' && over == false) {  
    ySpeed = speed * sin(radians(angle)); 
    accel = 0.7;
    move_tube = 2;  
  }
  if (key == ' ' && over == true) {  
    loop();  
    x=75;  
    y = 2*(600/3); 
    ySpeed = 0;  
    accel = 0;  
    move_tube = 0;  
    score = 0;  
    over = false;  
    for (int i = 0; i<2; i++) {
      tab_tubeX[i] = i*575/2 + 300;  
      tab_tubeY[i] = int(random(-550, -350));  
    }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {  
    ySpeed = speed * sin(radians(angle)); 
    accel = 0.6;
    move_tube = 2;  
  }
   if (mouseX > width / 2 + 25 && mouseX < width / 2 + 175 && mouseY > height / 2 + 125 && mouseY < height / 2 + 175) {
    exit(); // Keluar dari program Processing
  } 
   if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 45 && mouseY < height / 2 + 95) {
    // Tambahkan tindakan yang ingin Anda lakukan saat tombol "Start" ditekan
    screen = 1 ;
  } 
   if (mouseX > width / 2 - 100 && mouseX < width / 2 + 50 && mouseY > height / 2 + 150 && mouseY < height / 2 + 200){
      loop();  
      x=75;  
      y = 2*(600/3); 
      ySpeed = 0;  
      accel = 0;  
      move_tube = 0;  
      score = 0;  
      over = false;  
      for (int i = 0; i<2; i++) {
        tab_tubeX[i] = i*575/2 + 300;  
        tab_tubeY[i] = int(random(-550, -350));  
      }
  }
}
