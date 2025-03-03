class SineWave {
  float An, n, tAxis, L, ampDiv;
  float angF, Ts, funcDisp, cFuncDisp;
  float totalDisp, dmpCoeff;
  float ampAdd, ampAddScalar;
  float speed;

  SineWave(float temp_An, float temp_n, 
    float temp_tAxis, float temp_L, 
    float temp_ampDiv, float temp_angF, 
    float temp_Ts, float temp_funcDisp, 
    float temp_cFuncDisp, float totalDisp, 
    float temp_dmpCoeff, float temp_ampAdd, 
    float temp_ampAddScalar){
      An = temp_An;
      n = temp_n;
      tAxis = temp_tAxis;
      L = temp_L;
      ampDiv = temp_ampDiv;
      angF = temp_ampF;
      Ts = temp_Ts;
      funcDisp = temp_funcDisp;
      cFuncDisp = temp_cFuncDisp;
      totalDisp = temp_totalDisp;
      dmpCoeff = temp_dmpCoeff;
      ampAdd = temp_ampAdd;
      ampAddScalar = temp_ampAddScalar;
      speed = 1;
  }
  void update() {
    
    tAxis += speed;
  }
  void display() {
  }

  float Sine(float indValue) {
  }
}
