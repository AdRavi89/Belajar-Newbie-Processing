void setup()
{
size(800,550);

}

void draw ()
{
   background(25,25,112);
  int d,e,f;
  d=second();
  e=minute();
  f=hour();

//gunung
strokeWeight(0);
fill(0,94,0);
arc(130,330,400,200,(180*PI)/180,(360*PI)/180);
fill(0,132,0);
arc(320,330,400,230,(180*PI)/180,(360*PI)/180);

//bulan
fill(255,255,176);
ellipse(40,90,60,60);

//awn
noStroke();
fill(95,158,160);
ellipse(100,140,30,15);
ellipse(130,140,45,35);
ellipse(145,140,30,15);

fill(95,158,160);
ellipse(230,110,30,10);
ellipse(250,110,40,30);
ellipse(280,110,20,10);

//jalan
noStroke();
fill(0);
quad(0,380,380,380,380,440,0,440);
strokeWeight(4);
stroke(255);
line(20,405,40,405);
line(60,405,80,405);
line(100,405,120,405);
line(140,405,160,405);
line(180,405,200,405);
line(220,405,240,405);
line(260,405,280,405);
line(300,405,320,405);
line(340,405,360,405);
line(380,405,400,405);
line(420,405,440,405);

//lahan
noStroke();
fill(80,49,33);
quad(0,330,380,330,380,380,0,380);


//Rumah
noStroke();
fill(255,0,255);
triangle(50,325,20,345,80,345);
fill(20,100,200);
rect(30,345,40,20);

fill(200,100,0);
triangle(120,320,90,340,150,340);
fill(200,0,0);
rect(100,340,40,20);

//mobil
fill(0,255,0);
rect(20+20*d,350,100,50);
fill(124,202,0);
rect(120+20*d,365,40,35);
fill(255);
rect(130+20*d,373,20,20);
fill(65);
ellipse(45+20*d,400,30,30);
ellipse(120+20*d,400,30,30);

//hujan  
  strokeWeight(5);
  noStroke();

  stroke(255);
  point(40,100+25*d);
  point(50,100+15*d);
  point(30,100+20*d);
  point(60,120+15*d);
  point(70,110+20*d);
  point(80,130+25*d);
  point(90,100+25*d);
  point(100,110+30*d);
  point(110,115+20*d);
  point(120,100+25*d);
  point(130,115+15*d);
  point(140,110+10*d);
  point(150,115+25*d);
  point(160,125+10*d);
  point(170,120+10*d);
  point(180,100+25*d);
  point(190,120+20*d);
  point(200,125+35*d);
  point(210,115+10*d);
  point(220,105+15*d);
  point(230,125+20*d);
  point(240,110+25*d);
  point(250,110+10*d);
  point(260,100+15*d);
  point(270,125+25*d);
  point(280,100+20*d);
  point(290,115+10*d);
  point(300,120+15*d);
  point(310,100+25*d);
  point(320,125+20*d);
  point(330,120+10*d);
  point(340,110+25*d);
  point(350,115+15*d);
  point(360,125+15*d);
  point(370,100+10*d);
  point(380,115+25*d);
  point(390,100+20*d);
  point(400,125+15*d);
//awan
noStroke();
fill(95,158,160);
ellipse(20+55*d,150,30,15);
ellipse(50+55*d,150,45,35);
ellipse(80+55*d,150,30,15);

fill(95,158,160);
ellipse(40+30*d,120,30,10);
ellipse(80+30*d,120,40,30);
ellipse(100+30*d,120,20,10);

//dinding
strokeWeight(0);
noStroke();
fill(187,221,255);
quad(0,0,400,0,400,40,0,40);
quad(370,0,800,0,800,450,370,450);
quad(0,0,20,0,20,450,0,450);
quad(0,440,380,440,380,450,0,450);

//lantai
fill(98,98,98);
quad(0,450,800,450,800,550,0,550);
stroke(0);
line(0,450,800,450);
line(0,500,800,500);
line(10,450,-50,550);
line(100,450,50,550);
line(200,450,150,550);
line(300,450,250,550);
line(400,450,350,550);
line(500,450,450,550);
line(600,450,550,550);
line(700,450,650,550);
line(800,450,750,550);
//list
stroke(0);
strokeWeight(2);
fill(255);
quad(0,0,800,0,800,30,0,30);
line(0,25,800,25);

//jendela
strokeWeight(0);
fill(185,122,87);
quad(10,40,380,40,380,70,10,70);
quad(10,440,380,440,380,430,10,430);
line(10,50,380,50);
line(10,60,380,60);
quad(10,40,20,40,20,440,10,440);
quad(370,40,380,40,380,440,370,440);
quad(190,40,200,40,200,440,190,440);

//meja
strokeWeight(0);
stroke(0,0,0);
fill(159,80,0);
quad(430,305,780,305,780,320,430,320);
rect(550,320,230,100);
quad(430,300,440,300,440,450,430,450);
quad(780,300,790,300,790,450,780,450);
strokeWeight(0);
stroke(0);
line(665,320,665,420);
fill(0);
strokeWeight(9);
point(655,370);
point(675,370);

//buku
strokeWeight(0);
fill(255,255,255);
quad(690,290,770,290,770,305,690,305);
line(691,293,770,293);
line(691,296,770,296);
line(691,299,770,299);
line(691,301,770,301);
strokeWeight(3);
stroke(0,79,0);
line(691,290,691,303);
line(691,290,771,290);
line(691,303,771,303);

strokeWeight(0);
fill(255);
quad(695,270,765,270,765,288,695,288);
line(695,275,765,275);
line(695,278,765,278);
line(695,281,765,281);
strokeWeight(4);
stroke(3,20,141);
line(694,286,694,270);
line(694,286,765,286);
line(694,270,765,270);

//komputer
strokeWeight(5);
stroke(192,192,192);
fill(0);
beginShape(QUADS);
  vertex (450,210);
  vertex (550,210);
  vertex (550,280);
  vertex (450,280);
    endShape();
fill(192,192,192);
quad(480,300,520,300,520,302,480,302); 
quad(495,280,505,280,505,300,495,300);
strokeWeight(0);
quad(450,350,500,350,500,450,450,450);

stroke(0);
line(455,355,495,355);
line(455,365,495,365);
line(455,355,455,365);
line(495,355,495,365);
line(455,370,495,370);
ellipse(475,405,3,3);
ellipse(475,415,3,3);
fill(255-15*d,255-15*d,0+15*d);
ellipse(475,390,15,15);
line(455,425,495,425);
line(455,435,495,435);
line(455,445,495,445);

//lampu
fill(254,108,46);
quad(631,240,639,240,639,300,631,300);
quad(615,298,655,298,655,305,615,305);
ellipse(635,215,35,25);
ellipse(635,230,65,45);
fill(211,64,1);
ellipse(635,230,50,35);
fill(255,255,0);
ellipse(635,230,15,15);

//jam
strokeWeight(3);
stroke(0);
fill(255);
ellipse(600,90,75,75);
strokeWeight(3);
point(600,90);
line(600,55,600,57);
line(600,125,600,123);
line(563,90,566,90);
line(637,90,633,90);
stroke(255,0,0);
  line(600,90,cos(d)*30+600,sin (d)*30+90);
  stroke(0);
  line(600,90,cos(e)*25+600,sin (e)*30+90);
  line(600,90,cos(f)*20+600,sin (f)*20+90);
}