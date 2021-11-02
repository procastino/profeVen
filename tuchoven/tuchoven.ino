/*proxecto dun dispositivo para chamar ao profesor, para situar enriba do ordenador.
 * cando o alumno preme o botón, acéndese a luz de chamada, que vai cambiando en función do tempo
 * que leva agardando. A luz apágase premendo o botón de reset.
 * Codigo feito para un LED RGB con ánodo común, cambiar a lóxica se é de cátodo común.
 */

//pins para os leds de cores
const int pinR = 9;
const int pinG = 6;
const int pinB = 5;
//pins para os botons de reseteo e de chamada
const int buttonReset = 3;
const int buttonStart = 4;
//variables precisas para a xestión do tempo e recollida de estado dos botóns
bool resetState;
bool resetLastState = LOW;
bool startState;
bool startLastState = LOW;
long timeElapsed;
int timeChange = 4000; //cada canto cambia de cor a luz
bool calling = false;
bool finished = false;
int val;
int increment = 1;
int byteLeds = 7;
int colorSequence[] = {2,6,4,1,3}; //purple, blue, cyan, yellow, red
int colorIndex;
int longPressDuration = 2000;
long pressedTime;


void setup() {
  //Modo dos pines
  pinMode (pinR, OUTPUT);
  pinMode (pinG, OUTPUT);
  pinMode (pinB, OUTPUT);
  pinMode (buttonReset, INPUT);
  pinMode (buttonStart, INPUT);
  Serial.begin(9600);
  Serial.println("Initiated");
  changeLight();

}

void loop() {
  //lemos boton de reset, apagamos todo se se activou
  resetState = digitalRead(buttonReset);
  if (resetState != resetLastState){
    if (resetState == HIGH){
      Serial.println("reset");
      byteLeds = 7;//isto apaga todos os leds
      changeLight();
      calling = false;
      finished = false;
      resetLastState = HIGH;
    }
    else {
      resetLastState = LOW;
    }
  }

  //lemos boton de start, poñemos en marcha a chamada se se activou
  startState = digitalRead(buttonStart);
  if (startState != startLastState){
    if (startState == HIGH){
      Serial.println("started");
      pressedTime = millis();
      timeElapsed = millis(); //iniciamos o temporizador
      calling = true; //o chamador está a chamar
      finished = false; //non rematou
      colorIndex = 0;
      byteLeds = colorSequence[colorIndex]; // isto debera acender cyan
      changeLight();
      startLastState = HIGH;
    }
    else {
      long releasedTime = millis();
      long pressedElapsed = releasedTime - pressedTime;
      if (pressedElapsed > longPressDuration){
        calling = false;
        finished = true;
        byteLeds = 7;
        changeLight();
        val = 0;
        Serial.println("finished");
      }
      startLastState = LOW;
    }
  }
 
  //se estamos chamando, comprobamos timer e acendemos en consecuencia
  if (calling) {
    if ((millis() - timeElapsed) > timeChange){
      if(colorIndex < 4){
        colorIndex++;
        byteLeds = colorSequence[colorIndex];
        changeLight();
      }
      timeElapsed = millis();
    }
  }
  if (finished){
    analogWrite(pinG,val);
    val+=increment;
    if (val <= 0 || val >= 255) {
      increment = -increment;
      }
    delay(7);
  }
}

void changeLight() {
  digitalWrite(pinB, bitRead(byteLeds,0));
  digitalWrite(pinG, bitRead(byteLeds,1));
  digitalWrite(pinR, bitRead(byteLeds,2));
}
