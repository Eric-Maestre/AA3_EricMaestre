class mi_curva {
  // RECORDATORIO p(u)=Co+C1u+C2u2+C3u3
  // ATRIBUTOS
  PVector[] puntos_de_ctrl;
  PVector[] coeficientes;
  color color_curva;
  int grueso_curva;
  int numero_de_puntos;
  // CONSTRUCTOR
  mi_curva(PVector[] pc, color c, int g, int n) {
    puntos_de_ctrl = new PVector[4];
    for (int i=0; i<4; i++) {
      puntos_de_ctrl[i] = new PVector(0, 0);
      puntos_de_ctrl[i].x = pc[i].x;
      puntos_de_ctrl[i].y = pc[i].y;
    }
    color_curva =c;
    grueso_curva=g;
    numero_de_puntos=n;
    // Un método servirá para calcular los coeficientes
    calcula_coefs();
  }
  // MÉTODOS
  void calcula_coefs() { // SE EJECUTA SI CAMBIAN LOS P.C.'s
    coeficientes = new PVector[4];
    for (int i=0; i<4; i++) {
      coeficientes[i] = new PVector(0, 0);
    }
    // AHORA ACTUAN LAS ECUACIONES DE INTERPOLACION
    // C0 = P0
    // C1 = -5.5P0 + 9P1 - 4.5P2 + P3
    // C2 = 9P0 - 22.5P1 + 18P2 - 4.5P3
    // C3 = -4.5P0 + 13.5P1 - 13.5P2 + 4.5P3
    // TENDREMOS QUE HACER LOS CALCULOS TANTAS VECES
    // COMO DIMENSIONES O COORDENADAS (2D o 3D)
    // CALCULOS DE LAS X
    coeficientes[0].x=puntos_de_ctrl[0].x;
    coeficientes[1].x=-5.5*puntos_de_ctrl[0].x+
      9*puntos_de_ctrl[1].x-4.5*puntos_de_ctrl[2].x
      +puntos_de_ctrl[3].x;
    coeficientes[2].x=9*puntos_de_ctrl[0].x-
      22.5*puntos_de_ctrl[1].x+18*puntos_de_ctrl[2].x
      -4.5*puntos_de_ctrl[3].x;
    coeficientes[3].x=-4.5*puntos_de_ctrl[0].x+
      13.5*puntos_de_ctrl[1].x-13.5*puntos_de_ctrl[2].x
      +4.5*puntos_de_ctrl[3].x;
    // CALCULOS DE LAS Y
    coeficientes[0].y=puntos_de_ctrl[0].y;
    coeficientes[1].y=-5.5*puntos_de_ctrl[0].y+
      9*puntos_de_ctrl[1].y-4.5*puntos_de_ctrl[2].y
      +puntos_de_ctrl[3].y;
    coeficientes[2].y=9*puntos_de_ctrl[0].y-
      22.5*puntos_de_ctrl[1].y+18*puntos_de_ctrl[2].y
      -4.5*puntos_de_ctrl[3].y;
    coeficientes[3].y=-4.5*puntos_de_ctrl[0].y+
      13.5*puntos_de_ctrl[1].y-13.5*puntos_de_ctrl[2].y
      +4.5*puntos_de_ctrl[3].y;
  }

  void pinta_curva() {
    
    strokeWeight(grueso_curva);
    stroke(color_curva);
    // Recorremos la curva pintándola
    float incremento_de_u, x, y;
    incremento_de_u = 1.0/(float)numero_de_puntos;
    // RECORDATORIO p(u)=Co+C1u+C2u2+C3u3
    for (float u=0.0; u<=1.0; u+=incremento_de_u) {
          strokeWeight(grueso_curva);
    stroke(color_curva);
      x=coeficientes[0].x+
        coeficientes[1].x*u+
        coeficientes[2].x*u*u+
        coeficientes[3].x*u*u*u;
      y=coeficientes[0].y+
        coeficientes[1].y*u+
        coeficientes[2].y*u*u+
        coeficientes[3].y*u*u*u;
      point(x, y);
  noStroke();
     
    }
  }
}
