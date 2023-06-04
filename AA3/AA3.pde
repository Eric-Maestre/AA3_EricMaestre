// variables
float rectX, rectY, ancho, largo;
int screen;

//setup
void setup()
{
  size(1000, 800);
  screen = 1;

  rectX = width/2.0;
  rectY = height/2.0;
  ancho = 350.0;
  largo = 150.0;

  //easy
  rectEasyX = width/4.0;
  rectEasyY = width/2.0;
  anchoEasy = 200.0;
  largoEasy = 50.0;
  //normal
  rectNormalX = width/4.0*2;
  rectNormalY = width/2.0;
  anchoNormal = 200.0;
  largoNormal = 50.0;
  //hard
  rectHardX = width/4.0*3.0;
  rectHardY = width/2.0;
  anchoHard = 200.0;
  largoHard = 50.0;

  //booleanos modos
  Easy = false;
  Normal = false;
  Hard = false;


  //imagenes para las preguntas
  photo1 = loadImage("pez.jpg");
  photo2 = loadImage("bandera.jpg");
  photo3 = loadImage("libro.jpg");
  photo4 = loadImage("arbol.jpg");

  photo1_lut = loadImage("pez.jpg");
  photo2_lut = loadImage("bandera.jpg");
  photo3_lut = loadImage("libro.jpg");
  photo4_lut = loadImage("arbol.jpg");

  //respuestas a las preguntas
  answer1 = "Lippu";
  answer2 = "Puu";
  answer3 = "Kirja";
  answer4 = "Kalastaa";

  //recuadros estandard
  anchoOp = 200;
  largoOp = 100;
  //Op1
  rectOp1X = width/3.0;
  rectOp1Y = height/3.0 *2.0 ;

  //Op2
  rectOp2X = width/3.0*2.0;
  rectOp2Y = height/3.0*2.0;

  //Op3
  rectOp3X = width/3.0;
  rectOp3Y = height/3.0*2.0 + height/5.0;

  //Op4
  rectOp4X = width/3.0*2.0;
  rectOp4Y = height/3.0*2.0 + height/5.0;

  //respuestas
  corrects = 0;
  questions = 0;


  //curva corazón y corazones

  PVector[] pcLife, pcLife1, pcLife2, pcLife3;
  PVector[] pcStars, pcStars2, pcStars3;
  //por desgracia la cuarta no daría tiempo a verse
  //estaría bien poner las cuatro de decoración en la de Congratulations
  color c = color(125);
  int g = 10;
  int n = 150;
  pcLife = new PVector[4];
  pcLife[0] = new PVector(100, 100);
  pcLife[1] = new PVector(150, 150);
  pcLife[2] = new PVector(100, 200);
  pcLife[3] = new PVector(75, 250);

  pcLife1 = new PVector[4];
  pcLife1[0] = new PVector(75, 250);
  pcLife1[1] = new PVector(50, 300);
  pcLife1[2] = new PVector(100, 350);
  pcLife1[3] = new PVector(50, 400);
  pcLife2 = new PVector[4];
  pcLife2[0] = new PVector(50, 400);
  pcLife2[1] = new PVector(100, 300);
  pcLife2[2] = new PVector(150, 400);
  pcLife2[3] = new PVector(100, 300);
  pcLife3 = new PVector[4];
  pcLife3[0] = new PVector(100, 300);
  pcLife3[1] = new PVector(150, 200);
  pcLife3[2] = new PVector(200, 100);
  pcLife3[3] = new PVector(100, 100);

  pcStars = new PVector[4];
  pcStars[0] = new PVector(900, 700);
  pcStars[1] = new PVector(800, 600);
  pcStars[2] = new PVector(900, 500);
  pcStars[3] = new PVector(800, 400);
  pcStars2 = new PVector[4];
  pcStars2[0] = new PVector(800, 400);
  pcStars2[1] = new PVector(900, 350);
  pcStars2[2] = new PVector(800, 300);
  pcStars2[3] = new PVector(900, 250);
  pcStars3 = new PVector[4];
  pcStars3[0] = new PVector(900, 250);
  pcStars3[1] = new PVector(850, 200);
  pcStars3[2] = new PVector(900, 150);
  pcStars3[3] = new PVector(800, 100);



  curva_life[0] = new mi_curva (pcLife, c, g, n);
  curva_life[1] = new mi_curva (pcLife1, c, g, n);
  curva_life[2] = new mi_curva (pcLife2, c, g, n);
  curva_life[3] = new mi_curva (pcLife3, c, g, n);

  curva_stars[0] = new mi_curva (pcStars, c, g, n);
  curva_stars[1] = new mi_curva (pcStars2, c, g, n);
  curva_stars[2] = new mi_curva (pcStars3, c, g, n);

  u1 = 0;
  u2 = 0;
  u3 = 0;
  u4 = 0;
  u5 = 0;
  u6 = 0;

  life = loadImage("corazon.png");
  life.resize(20, 20);
  star = loadImage("estrella.png");
  star.resize(20, 20);


  lifes = 3;
  stars = 0;
  variableLife1 = 0;
  variableLife2 = 1;
  variableLife3 = 2;
  
 StartTime = millis();
 EasyTime = 20;
 NormalTime = 15;
 HardTime = 10;
}

//draw

void draw()
{


  switch(screen)
  {
  case 1:
    background(255);

    rectMode(CENTER);
    fill(0);
    rect(rectX, rectY, ancho, largo);
    textSize(26);
    fill(0);
    fill(255, 0, 0);
    text("Start Game", rectX - 60, rectY + 10);
    break;

  case 2:
    background(0);
    textSize(32);
    fill(255, 0, 0);
    text("Mode", width/2.0 -50, 100);

    rectMode(CENTER);
    fill(255);
    // easy
    rectMode(CENTER);
    fill(255);
    rect(rectEasyX, rectEasyY, anchoEasy, largoEasy);
    fill(255, 0, 0);
    text("Easy", rectEasyX - 42, rectEasyY + 5);
    //normal

    fill(255);
    rect(rectNormalX, rectNormalY, anchoNormal, largoNormal);
    fill(255, 0, 0);
    text("Normal", rectNormalX - 42, rectNormalY + 5);
    //hard

    fill(255);
    rect(rectHardX, rectHardY, anchoHard, largoHard);
    fill(255, 0, 0);
    text("Hard", rectHardX - 42, rectHardY + 5);
    break;
  case 3:
    background(125);
   
    //realmente no he llegado a acabar Hard, pero ahí etsa su tiempo, al fin y al cabo esto es un prototipo de algo más grande

    //mediante el booleano y el número de correctas la imagen cambia
    //lo bueno sería cambiar los recuadros pero es posible que cambie entre cuatro imagenes y deje las cuatro mismas palabras
    imageMode(CENTER);
    switch(questions)
    {
    case 0:
      if (Easy)
        image(photo1, width/2.0, height/4.0, 375, 275);
      if (Normal) {
        for (int i = 0; i < photo1.width; i++) {
          for (int j = 0; j < photo1.height; j++) {
            // Recorro los pixeles uno a uno
            color colorPixel = photo1.get(i, j);

            float r = red(colorPixel);
            float g = green(colorPixel);
            float b = blue(colorPixel);
            // GENERO UN PIXEL

            float promedio = 0.299 * r + 0.587 * g + 0.114 * b;
            if (promedio >= 255/2) {
              promedio = 255;
            } else {
              promedio = 0;
            }
            color colorPixelNuevo = color(promedio, promedio, promedio);
            photo1_lut.set(i, j, colorPixelNuevo);
          }
        }
        image(photo1_lut, width/2.0, height/4.0, 375, 275);
      }
      break;
    case 1:
      if (Easy)
        image(photo2, width/2.0, height/4.0, 375, 275);
      if (Normal)
      {
          for (int i = 0; i < photo2.width; i++) {
          for (int j = 0; j < photo2.height; j++) {
            // Recorro los pixeles uno a uno
            color colorPixel = photo2.get(i, j);

            float r = red(colorPixel);
            float g = green(colorPixel);
            float b = blue(colorPixel);
            // GENERO UN PIXEL

            float promedio = 0.299 * r + 0.587 * g + 0.114 * b;
            if (promedio >= 255/2) {
              promedio = 255;
            } else {
              promedio = 0;
            }
            color colorPixelNuevo = color(promedio, promedio, promedio);
            photo2_lut.set(i, j, colorPixelNuevo);
          }
        }
        image(photo2_lut, width/2.0, height/4.0, 375, 275);
      }
      break;
    case 2:
      if (Easy)
        image(photo3, width/2.0, height/4.0, 375, 275);
      if (Normal)
      {
         for (int i = 0; i < photo3.width; i++) {
          for (int j = 0; j < photo3.height; j++) {
            // Recorro los pixeles uno a uno
            color colorPixel = photo3.get(i, j);

            float r = red(colorPixel);
            float g = green(colorPixel);
            float b = blue(colorPixel);
            // GENERO UN PIXEL

            float promedio = 0.299 * r + 0.587 * g + 0.114 * b;
            if (promedio >= 255/2) {
              promedio = 255;
            } else {
              promedio = 0;
            }
            color colorPixelNuevo = color(promedio, promedio, promedio);
            photo3_lut.set(i, j, colorPixelNuevo);
          }
        }
        image(photo3_lut, width/2.0, height/4.0, 375, 275);
      }
      break;
    case 3:
      if (Easy)
        image(photo4, width/2.0, height/4.0, 375, 275);
      if (Normal)
      {
         for (int i = 0; i < photo4.width; i++) {
          for (int j = 0; j < photo4.height; j++) {
            // Recorro los pixeles uno a uno
            color colorPixel = photo4.get(i, j);

            float r = red(colorPixel);
            float g = green(colorPixel);
            float b = blue(colorPixel);
            // GENERO UN PIXEL

            float promedio = 0.299 * r + 0.587 * g + 0.114 * b;
            if (promedio >= 255/2) {
              promedio = 255;
            } else {
              promedio = 0;
            }
            color colorPixelNuevo = color(promedio, promedio, promedio);
            photo4_lut.set(i, j, colorPixelNuevo);
          }
        }
        image(photo4_lut, width/2.0, height/4.0, 375, 275);
      }
      break;
    }

    rectMode(CENTER);
    fill(255);
    rect(rectOp1X, rectOp1Y, anchoOp, largoOp);
    rect(rectOp2X, rectOp2Y, anchoOp, largoOp);
    rect(rectOp3X, rectOp3Y, anchoOp, largoOp);
    rect(rectOp4X, rectOp4Y, anchoOp, largoOp);
    fill(0);
    text(answer1, rectOp1X - 42, rectOp1Y + 5);
    text(answer2, rectOp2X - 42, rectOp2Y + 5);
    text(answer3, rectOp3X - 42, rectOp3Y + 5);
    text(answer4, rectOp4X - 42, rectOp4Y + 5);

    //curva corazón

    for (int i = 0; i < 4; i++)
    {
      curva_life[i].pinta_curva();
    }

    for (int i = 0; i < 3; i++)
    {
      curva_stars[i].pinta_curva();
    }

    //3 vidas
    if (lifes >= 1)
    {
      float x = curva_life[variableLife1].coeficientes[0].x + curva_life[variableLife1].coeficientes[1].x * u1 + curva_life[variableLife1].coeficientes[2].x * u1 * u1 + curva_life[variableLife1].coeficientes[3].x * u1 * u1 * u1;
      float y = curva_life[variableLife1].coeficientes[0].y + curva_life[variableLife1].coeficientes[1].y * u1 + curva_life[variableLife1].coeficientes[2].y * u1 * u1 + curva_life[variableLife1].coeficientes[3].y * u1 * u1 * u1;
      image(life, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u1 <= 1)
      {
        u1 += 0.01;
      } else
      {
        u1 = 0;
        variableLife1 ++;
      }
      if (variableLife1 == 4)
      {
        variableLife1 = 0;
      }
    }

    if (lifes >= 2)
    {
      float x = curva_life[variableLife2].coeficientes[0].x + curva_life[variableLife2].coeficientes[1].x * u2 + curva_life[variableLife2].coeficientes[2].x * u2 * u2 + curva_life[variableLife2].coeficientes[3].x * u2 * u2 * u2;
      float y = curva_life[variableLife2].coeficientes[0].y + curva_life[variableLife2].coeficientes[1].y * u2 + curva_life[variableLife2].coeficientes[2].y * u2 * u2 + curva_life[variableLife2].coeficientes[3].y * u2 * u2 * u2;
      image(life, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u2 <= 1)
      {
        u2 += 0.01;
      } else
      {
        u2 = 0;
        variableLife2 ++;
      }
      if (variableLife2 == 4)
      {
        variableLife2 = 0;
      }
    }

    if (lifes == 3)
    {
      float x = curva_life[variableLife3].coeficientes[0].x + curva_life[variableLife3].coeficientes[1].x * u3 + curva_life[variableLife3].coeficientes[2].x * u3 * u3 + curva_life[variableLife3].coeficientes[3].x * u3 * u3 * u3;
      float y = curva_life[variableLife3].coeficientes[0].y + curva_life[variableLife3].coeficientes[1].y * u3 + curva_life[variableLife3].coeficientes[2].y * u3 * u3 + curva_life[variableLife3].coeficientes[3].y * u3 * u3 * u3;
      image(life, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u3 <= 1)
      {
        u3 += 0.01;
      } else
      {
        u3 = 0;
        variableLife3 ++;
      }
      if (variableLife3 == 4)
      {
        variableLife3 = 0;
      }
    }
    if (stars >= 1)
    {
      if (variableStars1 == 3)
        break;
      float x = curva_stars[variableStars1].coeficientes[0].x + curva_stars[variableStars1].coeficientes[1].x * u4 + curva_stars[variableStars1].coeficientes[2].x * u4 * u4 + curva_stars[variableStars1].coeficientes[3].x * u4 * u4 * u4;
      float y = curva_stars[variableStars1].coeficientes[0].y + curva_stars[variableStars1].coeficientes[1].y * u4 + curva_stars[variableStars1].coeficientes[2].y * u4 * u4 + curva_stars[variableStars1].coeficientes[3].y * u4 * u4 * u4;
      image(star, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u4 <= 1)
      {
        u4 += 0.01;
      } else
      {
        u4 = 0;
        variableStars1 ++;
      }
    }

    if (stars >= 2)
    {
      if (variableStars2 == 3)
        break;
      float x = curva_stars[variableStars2].coeficientes[0].x + curva_stars[variableStars2].coeficientes[1].x * u5 + curva_stars[variableStars2].coeficientes[2].x * u5 * u5 + curva_stars[variableStars2].coeficientes[3].x * u5 * u5 * u5;
      float y = curva_stars[variableStars2].coeficientes[0].y + curva_stars[variableStars2].coeficientes[1].y * u5 + curva_stars[variableStars2].coeficientes[2].y * u5 * u5 + curva_stars[variableStars2].coeficientes[3].y * u5 * u5 * u5;
      image(star, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u5 <= 1)
      {
        u5 += 0.01;
      } else
      {
        u5 = 0;
        variableStars2 ++;
      }
    }
    if (stars == 3)
    {
      if (variableStars3 == 3)
        break;
      float x = curva_stars[variableStars3].coeficientes[0].x + curva_stars[variableStars3].coeficientes[1].x * u6 + curva_stars[variableStars3].coeficientes[2].x * u6 * u6 + curva_stars[variableStars3].coeficientes[3].x * u6 * u6 * u6;
      float y = curva_stars[variableStars3].coeficientes[0].y + curva_stars[variableStars3].coeficientes[1].y * u6 + curva_stars[variableStars3].coeficientes[2].y * u6 * u6 + curva_stars[variableStars3].coeficientes[3].y * u6 * u6 * u6;
      image(star, x, y);
      // Incrementa el valor de u para que la elipse se desplace a lo largo de la curva
      if (u6 <= 1)
      {
        u6 += 0.01;
      } else
      {
        u6 = 0;
        variableStars3 ++;
      }
    }







    switch(questions)
    {
    case 0:

      if (respuesta4)
      {
        correctAnswer = true;
        corrects++;
        questions++;
      } else if (respuesta1  || respuesta2 || respuesta3)
      {
        questions++;
        lifes--;
      }

      break;

    case 1:

      if (respuesta1)
      {
        correctAnswer = true;
        corrects++;
        questions++;
      } else if (respuesta4  || respuesta2 || respuesta3)
      {
        questions++;
        lifes--;
      }
      break;
    case 2:

      if (respuesta3)
      {
        correctAnswer = true;
        corrects++;
        questions++;
      } else if (respuesta4  || respuesta2 || respuesta1)
      {
        questions++;
        lifes--;
      }
      break;
    case 4:
      if (respuesta2)
      {
        correctAnswer = true;
        corrects++;
        questions++;
      } else if (respuesta4  || respuesta3 || respuesta1)
      {
        questions++;
        lifes--;
      }
      break;
    case 5:
      screen = 4;
      break;
    }
    
   
    
    int currentTime = millis();
    
    int ElapsedTime = currentTime - StartTime;
    
    int seconds = ElapsedTime/1000;
    
    if(seconds == 1)
    {
      StartTime = currentTime;
      time--;
      
    }
    if(time == 0)
    {
      lifes--;
      questions++;
      if(Easy)
    time = EasyTime;
    else if(Normal)
    time = NormalTime;
    else if(Hard)
    time = HardTime;
    }
    
    
    
    if (correctAnswer)
    {
      //something happens
      correctAnswer = false;
      respuesta1 = false;
      respuesta2 = false;
      respuesta3 = false;
      respuesta4 = false;
      stars++;
      if(Easy)
    time = EasyTime;
    else if(Normal)
    time = NormalTime;
    else if(Hard)
    time = HardTime;
    }
    else
    {
      respuesta1 = false;
      respuesta2 = false;
      respuesta3 = false;
      respuesta4 = false;
      if(Easy)
    time = EasyTime;
    else if(Normal)
    time = NormalTime;
    else if(Hard)
    time = HardTime;
    }
    if (lifes == 0)
    {
      screen = 5;
    }
    fill(255,0,0);
    text("Time: " + time, 100, 700);

    break;
  case 4:
    background(0);
    fill(255, 0, 0);
    textSize(76);
    text("Congratulations", width/2.0 -200, height/2.0);
    textSize(30);
    text("Score: " + corrects, width/2.0 -100, height/2.0 + height/4.0);

    break;
  case 5:
    background(0);
    fill(255, 0, 0);
    textSize(76);
    text("GameOver", width/2.0 -200, height/2.0);
    textSize(30);
    text("Score: " + corrects, width/2.0 -100, height/2.0 + height/4.0);

    break;
  }
}
