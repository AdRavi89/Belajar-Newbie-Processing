 void setup()
{
size(800,500);  //ukuran jendela
background(#878c9c); // warna latar belakang 
}
void draw ()

{
  int d; //variabel lokal d sebagai tipe data integer.
  d=second(); //d itu detik, nilai variabel d dengan detik saat ini.

//bantuan
fill(#5f6166); //warna pengisi pada bentuk yang akan digambar menjadi abu-abu
rect(0,0,800,500); //Menggambar persegi panjang sebagai latar belakang dengan posisi (0, 0) dan ukuran 800x500 piksel.

//matahari
noStroke();//tanpa list
fill(#d4b20d);//warna kuning
ellipse(80+2*d,280-2*d,90,90);//elips (matahari) dengan posisi yang bergerak seiring dengan waktu.

//awan1
noStroke();
fill(#A5A5A5); // warna pengisi pada bentuk yang akan digambar menjadi abu-abu (#A5A5A5).
ellipse(100+10*d,100,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(150+10*d,100,85,65); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(200+10*d,100,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
//awan2
fill(#A5A5A5); //// warna pengisi pada bentuk yang akan digambar menjadi abu-abu (#A5A5A5).
ellipse(-500+10*d,80,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(-450+10*d,80,85,65); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(-400+10*d,80,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
//awan3
fill(#A5A5A5); //// warna pengisi pada bentuk yang akan digambar menjadi abu-abu (#A5A5A5).
ellipse(-300+10*d,120,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(-250+10*d,120,85,65); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(-200+10*d,120,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
//awan4
fill(#A5A5A5); //// warna pengisi pada bentuk yang akan digambar menjadi abu-abu (#A5A5A5).
ellipse(-100+10*d,70,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(-50+10*d,70,85,65); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.
ellipse(0+10*d,70,70,45); //elips (awan) dengan posisi yang bergerak seiring dengan waktu.


//gunung
strokeWeight(2); //ketebalan garis tepi dari bentuk yang akan digambar menjadi 2 piksel.
fill(#045203); //warna pengisi pada bentuk yang akan digambar menjadi hijau tua (#045203).
arc(350,380,500,300,(180*PI)/180,(360*PI)/180); //Menggambar setengah lingkaran sebagai gunung.
fill(#045203); //warna pengisi pada bentuk yang akan digambar menjadi hijau tua (#045203).
arc(50,380,350,350,(180*PI)/180,(360*PI)/180); //Menggambar setengah lingkaran sebagai gunung.
fill(#045203); //warna pengisi pada bentuk yang akan digambar menjadi hijau tua (#045203).
arc(700,380,400,350,(180*PI)/180,(360*PI)/180); //Menggambar setengah lingkaran sebagai gunung.

//tanahhijau
  noStroke();
  fill(#02B71E); //warna pengisi pada bentuk yang akan digambar menjadi hijau (#02B71E).
rect(0,440,800,80); //persegi panjang sebagai tanah hijau.


//aspal
  noStroke(); //Menghilangkan garis tepi dari bentuk yang akan digambar.
  fill(00); // warna pengisi pada bentuk yang akan digambar menjadi hitam (0).
rect(0,380,800,80); //persegi panjang sebagai aspal.
strokeWeight(3); // Mengatur ketebalan garis tepi dari bentuk yang akan digambar menjadi 3 piksel.
stroke(250); //warna garis tepi dari bentuk yang akan digambar menjadi putih (250).
line(20,415,40,415); //garis horizontal sebagai tanda jalan pada aspal.
line(60,415,80,415); //garis horizontal sebagai tanda jalan pada aspal.
line(100,415,120,415); //garis horizontal sebagai tanda jalan pada aspal.
line(140,415,160,415); //garis horizontal sebagai tanda jalan pada aspal.
line(180,415,200,415); //garis horizontal sebagai tanda jalan pada aspal.
line(220,415,240,415); //garis horizontal sebagai tanda jalan pada aspal.
line(260,415,280,415); //garis horizontal sebagai tanda jalan pada aspal.
line(300,415,320,415); //garis horizontal sebagai tanda jalan pada aspal.
line(340,415,360,415); //garis horizontal sebagai tanda jalan pada aspal.
line(380,415,400,415); //garis horizontal sebagai tanda jalan pada aspal.
line(420,415,440,415); //garis horizontal sebagai tanda jalan pada aspal.
line(460,415,480,415); //garis horizontal sebagai tanda jalan pada aspal.
line(500,415,520,415); //garis horizontal sebagai tanda jalan pada aspal.
line(540,415,560,415); //garis horizontal sebagai tanda jalan pada aspal.
line(580,415,600,415); //garis horizontal sebagai tanda jalan pada aspal.
line(620,415,640,415); //garis horizontal sebagai tanda jalan pada aspal.
line(660,415,680,415); //garis horizontal sebagai tanda jalan pada aspal.
line(700,415,720,415); //garis horizontal sebagai tanda jalan pada aspal.
line(740,415,760,415); //garis horizontal sebagai tanda jalan pada aspal.
line(780,415,800,415); //garis horizontal sebagai tanda jalan pada aspal.

//mobil1
fill(#960323);//warna box truk merah tua (#960323)
rect(20+20*d,340,100,50); //persegi panjang sebagai mobil yang bergerak seiring dengan waktu.
fill(#181629);
rect(120+20*d,355,40,35);
fill(255); // warna pengisi pada bentuk yang akan digambar menjadi putih (255).
rect(130+20*d,363,20,10); //Menggambar persegi panjang sebagai jendela mobil dan diberi fungsi gerak 20px tiap detik
//roda mobil
fill(#55545D);
ellipse(45+20*d,390,30,30);//Menggambar lingkaran sebagai roda depan mobil dan diberi fungsi gerak 20px tiap detik
ellipse(120+20*d,390,30,30);//Menggambar lingkaran sebagai roda belakang mobil dan diberi fungsi gerak 20px tiap detik

//mobil3
fill(#120B83); //warna box truk biru
rect(420+20*d,340,100,50);//persegi panjang sebagai mobil yang bergerak seiring dengan waktu.
fill(#181629);
rect(520+20*d,355,40,35);
fill(255);
rect(530+20*d,363,20,10);
//roda mobil
fill(#55545D);
ellipse(445+20*d,390,30,30);//Menggambar lingkaran sebagai roda depan mobil dan diberi fungsi gerak 20px tiap detik
ellipse(520+20*d,390,30,30);//Menggambar lingkaran sebagai roda belakang mobil dan diberi fungsi gerak 20px tiap detik

//mobil2
fill(#f7fa4b); //warna box truk kuning
rect(780-15*d,380,100,50);//persegi panjang sebagai mobil yang bergerak seiring dengan waktu.
fill(#181629);
rect(740-15*d,395,40,35);
fill(255);
rect(750-15*d,403,20,10);
//roda mobil
fill(#55545D);
ellipse(785-15*d,430,30,30);//Menggambar lingkaran sebagai roda depan mobil dan diberi fungsi gerak 20px tiap detik
ellipse(860-15*d,430,30,30);//Menggambar lingkaran sebagai roda belakang mobil dan diberi fungsi gerak 20px tiap detik

//mobil4
fill(#a557e6);//warna box truk ungu
rect(440-15*d,380,100,50);
fill(#181629);
rect(400-15*d,395,40,35);
fill(255);
rect(410-15*d,403,20,10);
//roda mobil
fill(#55545D);
ellipse(445-15*d,430,30,30);//Menggambar lingkaran sebagai roda depan mobil dan diberi fungsi gerak 20px tiap detik
ellipse(520-15*d,430,30,30);//Menggambar lingkaran sebagai roda belakang mobil dan diberi fungsi gerak 20px tiap detik

  //pohon1
  noStroke();
  fill(#5F3603); //warna batang pohon
  rect(32,400,10,80); //ukuran batang pohon
  fill(#038301); //warna daun pohon
  triangle(40,350,60,400,10,400); //bentuk daun pohon cemara
  triangle(40,375,60,425,10,425); //bentuk daun pohon cemara
  triangle(40,400,60,450,10,450); //bentuk daun pohon cemara
  //pohon2
  fill(#5F3603);
  rect(232,400,10,80);
  fill(#038301);
  triangle(240,350,260,400,210,400);
  triangle(240,375,260,425,210,425);
  triangle(240,400,260,450,210,450);
  //pohon3
  fill(#5F3603);
  rect(432,400,10,80);
  fill(#038301);
  triangle(440,350,460,400,410,400);
  triangle(440,375,460,425,410,425);
  triangle(440,400,460,450,410,450);
  //pohon4
  fill(#5F3603);
  rect(632,400,10,80);
  fill(#038301);
  triangle(640,350,660,400,610,400);
  triangle(640,375,660,425,610,425);
  triangle(640,400,660,450,610,450);

}
