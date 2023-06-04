void mousePressed() {
  
  switch(screen)
  {
    case 1:
  // Verifica si el ratón está dentro del rectángulo
 if (mouseX >= rectX - ancho / 2.0 && mouseX <= rectX + ancho / 2.0 && mouseY >= rectY - largo / 2.0 && mouseY <= rectY + largo / 2.0) {    // Cambia a la nueva pantalla
    screen = 2;
  }
  break;
  case 2:
   if (mouseX >= rectEasyX - anchoEasy / 2.0 && mouseX <= rectEasyX + anchoEasy / 2.0 && mouseY >= rectEasyY - largoEasy / 2.0 && mouseY <= rectEasyY + largoEasy / 2.0) {    // Cambia a la nueva pantalla
    screen = 3;
    Easy = true;
  }
  if (mouseX >= rectNormalX - anchoNormal / 2.0 && mouseX <= rectNormalX + anchoNormal / 2.0 && mouseY >= rectNormalY - largoNormal / 2.0 && mouseY <= rectNormalY + largoNormal / 2.0) {    // Cambia a la nueva pantalla
    screen = 3;
    Normal = true;
  }
  //else if con Normal y hard, pero de momento que funcione la base
  break;
  case 3:
  
  respuesta1 = false;
  respuesta2 = false;
  respuesta3 = false;
  respuesta4 = false;
  
  if (mouseX >= rectOp1X - anchoOp / 2.0 && mouseX <= rectOp1X + anchoOp / 2.0 && mouseY >= rectOp1Y - largoOp / 2.0 && mouseY <= rectOp1Y + largoOp / 2.0) {    // Cambia a la nueva pantalla
   respuesta1 = true;
   if(questions == 3)
   {
    screen = 4; 
   }
  }
  else  if (mouseX >= rectOp2X - anchoOp / 2.0 && mouseX <= rectOp2X + anchoOp / 2.0 && mouseY >= rectOp2Y - largoOp / 2.0 && mouseY <= rectOp2Y + largoOp / 2.0) {    // Cambia a la nueva pantalla
   respuesta2 = true;
   if(questions == 3)
   {
    screen = 4; 
   }
  }
  else  if (mouseX >= rectOp3X - anchoOp / 2.0 && mouseX <= rectOp3X + anchoOp / 2.0 && mouseY >= rectOp3Y - largoOp / 2.0 && mouseY <= rectOp3Y + largoOp / 2.0) {    // Cambia a la nueva pantalla
   respuesta3 = true;
   if(questions == 3)
   {
    screen = 4; 
   }
  }
  else  if (mouseX >= rectOp4X - anchoOp / 2.0 && mouseX <= rectOp4X + anchoOp / 2.0 && mouseY >= rectOp4Y - largoOp / 2.0 && mouseY <= rectOp4Y + largoOp / 2.0) {    // Cambia a la nueva pantalla
   respuesta4 = true;
   if(questions == 3)
   {
    screen = 4; 
   }
  }
   if(Easy)
    time = EasyTime;
    else if(Normal)
    time = NormalTime;
    else if(Hard)
    time = HardTime;
  
  break;
  }
}
