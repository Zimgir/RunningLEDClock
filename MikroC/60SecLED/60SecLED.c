// clock variables
volatile signed char reg, led, sec, freq;

// Timer loop variable;
char  i, j, k;

// Delays array for running LED frequencies
unsigned char delays[] = {220,110,85,64,51,43,37,32,28,25,
                        24,21,20,18,17,16,15,14,13,13,
                        12,11,11,11,10,10,10,9,9,8,
                        8,8,8,8,8,7,7,6,6,6,
                        6,6,6,5,5,5,5,5,5,5,
                        5,5,5,5,5,5,5,5,4,4};
                        
void run_led(char s, char f) {

     // Clear Registers
     GPIO.B0 = 0;
     GPIO.B0 = 1;
     
     // Run an LED in a circle
     for(led = 60; led >= s; led--) {

             // load current second in lighted LEDs
             for(reg = 0; reg < s; reg++) {

                     GPIO.B5 = 1;
                     GPIO.B4 = 1;
                     GPIO.B4 = 0;


             }

             // load dimmed LEDs untill the running LED
             for( ; reg < led; reg++) {

                     GPIO.B5 = 0;
                     GPIO.B4 = 1;
                     GPIO.B4 = 0;

             }

             // Load running LED
             GPIO.B5 = 1;
             GPIO.B4 = 1;
             GPIO.B4 = 0;
             reg++;

             // load dimmed LEDs untill the end of the circle
             for( ; reg < 64; reg++) {

                    GPIO.B5 = 0;
                    GPIO.B4 = 1;
                    GPIO.B4 = 0;


             }

             // Flash loaded bits to output LEDs
             GPIO.B1 = 1;
             GPIO.B1 = 0;

             // Delay for the right frequency
             VDelay_ms(delays[f]);
             

     }

}
 
void main(void) {

     // Init variables
     reg = 0;
     led = 0;
     sec = 0;
     freq = 0;


     // Turn off comperator
     CMCON0 = 0x07;
     // Set no analog I/O
     ANSEL = 0x0;
     // Define pins I/O
     TRISIO = 0x0C;
     
     // Enable signal pin interrupt
     INTCON.INTE = 1;
     // Configure interrupt pin on rising edge
     OPTION_REG.INTEDG = 0;
     // Clear interrupt pin flag
     INTCON.INTF = 0;
     
     // Init output pins
     GPIO = 0x01;
     
     // Clear Registers and LEDs
     GPIO.B0 = 0;
     GPIO.B0 = 1;
     GPIO.B1 = 1;
     GPIO.B1 = 0;

     Delay_ms(10);
     
     // Enable global interrupts
     INTCON.GIE = 1;
     
     while(1) {
     
              // Timeout to reset loop
              for(i = 0; i < 100; i++) {

                    for(j = 0; j < 100; j++) {
                    
                          for(k = 0; k < 100; k++);

                    }

              }
              
              // Clear Registers and LEDs
              GPIO.B0 = 0;
              GPIO.B0 = 1;
              GPIO.B1 = 1;
              GPIO.B1 = 0;
              
              // Reset variables
              reg = 0;
              led = 0;
              sec = 0;
              freq = 0;
              
     }
     

}

void interrupt(void) {

     // Disable global interrupts
     INTCON.GIE = 0;
     
     // Clear timeout counter
     i = 0;
     
     // Calculate running led frequency for current second
     freq = 59 - sec;
     
     // Perform a second count in LEDs
     run_led(sec,freq);
     
     // Count seconds
     if(sec == 59)
            sec = 0;
     else
     sec++;
     
     // Clear interrupt pin flag
     INTCON.INTF = 0;
     
     // Enable global interrupts
     INTCON.GIE = 1;
}