


//image to resize

//una por cada pregunta
PImage photo1;
PImage photo2;
PImage photo3;
PImage photo4;

PImage photo1_lut;
PImage photo2_lut;
PImage photo3_lut;
PImage photo4_lut;

String answer1;
String answer2;
String answer3;
String answer4;

//4 recuadros respuestas

float anchoOp, largoOp;

float rectOp1X, rectOp1Y;

float rectOp2X, rectOp2Y;

float rectOp3X, rectOp3Y;

float rectOp4X, rectOp4Y;

//para las respuestas
boolean correctAnswer;
int corrects;
int questions;

//mirar las respuestas
//así en ctrl de pantallas no hay que repetir el proceso cuatro veces para cada pregunta
boolean respuesta1;
boolean respuesta2;
boolean respuesta3;
boolean respuesta4;

//tiempo
int timeEasy;
int timeNormal;
int timeHard;

//vidas y estrellas
PImage life;
int lifes;
PImage star;
int stars;

mi_curva [] curva_life = new mi_curva[4];
float u1, u2, u3;
int variableLife1, variableLife2, variableLife3;

mi_curva [] curva_stars = new mi_curva[4];
float u4, u5, u6;
int variableStars1, variableStars2, variableStars3;


//tiempo
int time;
int StartTime;
int EasyTime;
int NormalTime;
int HardTime;
