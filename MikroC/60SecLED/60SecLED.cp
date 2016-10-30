#line 1 "E:/Projects/PIC/MikroC/60SecLED/60SecLED.c"

volatile signed char reg, led, sec, freq;


char i, j, k;


unsigned char delays[] = {220,110,85,64,51,43,37,32,28,25,
 24,21,20,18,17,16,15,14,13,13,
 12,11,11,11,10,10,10,9,9,8,
 8,8,8,8,8,7,7,6,6,6,
 6,6,6,5,5,5,5,5,5,5,
 5,5,5,5,5,5,5,5,4,4};

void run_led(char s, char f) {


 GPIO.B0 = 0;
 GPIO.B0 = 1;


 for(led = 60; led >= s; led--) {


 for(reg = 0; reg < s; reg++) {

 GPIO.B5 = 1;
 GPIO.B4 = 1;
 GPIO.B4 = 0;


 }


 for( ; reg < led; reg++) {

 GPIO.B5 = 0;
 GPIO.B4 = 1;
 GPIO.B4 = 0;

 }


 GPIO.B5 = 1;
 GPIO.B4 = 1;
 GPIO.B4 = 0;
 reg++;


 for( ; reg < 64; reg++) {

 GPIO.B5 = 0;
 GPIO.B4 = 1;
 GPIO.B4 = 0;


 }


 GPIO.B1 = 1;
 GPIO.B1 = 0;


 VDelay_ms(delays[f]);


 }

}

void main(void) {


 reg = 0;
 led = 0;
 sec = 0;
 freq = 0;



 CMCON0 = 0x07;

 ANSEL = 0x0;

 TRISIO = 0x0C;


 INTCON.INTE = 1;

 OPTION_REG.INTEDG = 0;

 INTCON.INTF = 0;


 GPIO = 0x01;


 GPIO.B0 = 0;
 GPIO.B0 = 1;
 GPIO.B1 = 1;
 GPIO.B1 = 0;

 Delay_ms(10);


 INTCON.GIE = 1;

 while(1) {


 for(i = 0; i < 100; i++) {

 for(j = 0; j < 100; j++) {

 for(k = 0; k < 100; k++);

 }

 }


 GPIO.B0 = 0;
 GPIO.B0 = 1;
 GPIO.B1 = 1;
 GPIO.B1 = 0;


 reg = 0;
 led = 0;
 sec = 0;
 freq = 0;

 }


}

void interrupt(void) {


 INTCON.GIE = 0;


 i = 0;


 freq = 59 - sec;


 run_led(sec,freq);


 if(sec == 59)
 sec = 0;
 else
 sec++;


 INTCON.INTF = 0;


 INTCON.GIE = 1;
}
