/*proxecto dun dispositivo para chamar ao profesor, para situar enriba do ordenador.
 * cando o alumno preme o botón, acéndese a luz de chamada, que vai cambiando en función do tempo
 * que leva agardando. A luz apágase premendo o botón de reset.
 * Codigo feito para un LED RGB con cátodo común, cambiar a lóxica se é de ánodo común en changelight().
 * Ollo, programar co reloxo interno de 1MHz para que os tempo sexan reais
 */

//pins para os leds de cores
const int pinR = 0;
const int pinG = 1;
const int pinB = 2;
//pins para os botons de reseteo e de chamada
const int buttonReset = 3; //pin 2 fisico
const int buttonStart = 4; //pin 3 fisico
//variables precisas para a xestión do tempo e recollida de estado dos botóns
bool resetState;
bool resetLastState = LOW;
bool startState;
bool startLastState = LOW;
long timeElapsed;
long timeChange = 60000; //cada cantos milisegundos cambia de cor a luz
bool calling = false; //esta chamando o alumno?
bool finished = false; //acabou o traballo o alumno?
int val;
int increment = 1;
int byteLeds = 7; //numero binario que define o estado dos leds 
//secuencia de cores para a funcion de chamado
int colorSequence[] = {2,6,4,1,3}; //purple, blue, cyan, yellow, red
int colorIndex; //valor para seleccionar un elemento da secuencia de cores
int longPressDuration = 2000; //duracion da pulsacion longa
long pressedTime;


void setup() {
  //Modo dos pines
  pinMode (pinR, OUTPUT);
  pinMode (pinG, OUTPUT);
  pinMode (pinB, OUTPUT);
  pinMode (buttonReset, INPUT);
  pinMode (buttonStart, INPUT);
  //actualizamos o estado dos leds
  changeLight();

}

void loop() {
  //lemos boton de reset, apagamos todo se se activou
  resetState = digitalRead(buttonReset);
  if (resetState != resetLastState){
    if (resetState == HIGH){
      byteLeds = 7;//isto define todos os leds como apagados
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
      pressedTime = millis();//inciamos o temporizador do intre de pulsacion
      timeElapsed = millis(); //iniciamos o temporizador de tempo transcorrido
      calling = true; //o chamador está a chamar
      finished = false; //non rematou
      colorIndex = 0;
      byteLeds = colorSequence[colorIndex]; // isto debera acender purple
      changeLight();
      startLastState = HIGH;
    }
    else {
      //ao soltar o boton de start comprobamos se foi pulsacion longa
      long releasedTime = millis();
      long pressedElapsed = releasedTime - pressedTime;
      //se foi pulsacion longa activamos a secuencia de finished
      if (pressedElapsed > longPressDuration){
        calling = false;
        finished = true;
        byteLeds = 7;
        changeLight();
        val = 0;
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
  // se temos rematado activamos a secuencia finished
  if (finished){
    analogWrite(pinG,val);
    val+=increment;
    if (val <= 0 || val >= 255) {
      increment = -increment;
      }
    delay(7);
  }
}

//esta funcion activa os leds segundo o valor de byteLeds
//if LED is common anode, comment out the ^1's
void changeLight() {
  digitalWrite(pinB, bitRead(byteLeds,0)^1);
  digitalWrite(pinG, bitRead(byteLeds,1)^1);
  digitalWrite(pinR, bitRead(byteLeds,2)^1);
}
