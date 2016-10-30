
_run_led:

;60SecLED.c,15 :: 		void run_led(char s, char f) {
;60SecLED.c,18 :: 		GPIO.B0 = 0;
	BCF        GPIO+0, 0
;60SecLED.c,19 :: 		GPIO.B0 = 1;
	BSF        GPIO+0, 0
;60SecLED.c,22 :: 		for(led = 60; led >= s; led--) {
	MOVLW      60
	MOVWF      _led+0
L_run_led0:
	MOVLW      128
	BTFSC      _led+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__run_led27
	MOVF       FARG_run_led_s+0, 0
	SUBWF      _led+0, 0
L__run_led27:
	BTFSS      STATUS+0, 0
	GOTO       L_run_led1
;60SecLED.c,25 :: 		for(reg = 0; reg < s; reg++) {
	CLRF       _reg+0
L_run_led3:
	MOVLW      128
	BTFSC      _reg+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__run_led28
	MOVF       FARG_run_led_s+0, 0
	SUBWF      _reg+0, 0
L__run_led28:
	BTFSC      STATUS+0, 0
	GOTO       L_run_led4
;60SecLED.c,27 :: 		GPIO.B5 = 1;
	BSF        GPIO+0, 5
;60SecLED.c,28 :: 		GPIO.B4 = 1;
	BSF        GPIO+0, 4
;60SecLED.c,29 :: 		GPIO.B4 = 0;
	BCF        GPIO+0, 4
;60SecLED.c,25 :: 		for(reg = 0; reg < s; reg++) {
	INCF       _reg+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _reg+0
;60SecLED.c,32 :: 		}
	GOTO       L_run_led3
L_run_led4:
;60SecLED.c,35 :: 		for( ; reg < led; reg++) {
L_run_led6:
	MOVLW      128
	XORWF      _reg+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _led+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_run_led7
;60SecLED.c,37 :: 		GPIO.B5 = 0;
	BCF        GPIO+0, 5
;60SecLED.c,38 :: 		GPIO.B4 = 1;
	BSF        GPIO+0, 4
;60SecLED.c,39 :: 		GPIO.B4 = 0;
	BCF        GPIO+0, 4
;60SecLED.c,35 :: 		for( ; reg < led; reg++) {
	INCF       _reg+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _reg+0
;60SecLED.c,41 :: 		}
	GOTO       L_run_led6
L_run_led7:
;60SecLED.c,44 :: 		GPIO.B5 = 1;
	BSF        GPIO+0, 5
;60SecLED.c,45 :: 		GPIO.B4 = 1;
	BSF        GPIO+0, 4
;60SecLED.c,46 :: 		GPIO.B4 = 0;
	BCF        GPIO+0, 4
;60SecLED.c,47 :: 		reg++;
	INCF       _reg+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _reg+0
;60SecLED.c,50 :: 		for( ; reg < 64; reg++) {
L_run_led9:
	MOVLW      128
	XORWF      _reg+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      64
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_run_led10
;60SecLED.c,52 :: 		GPIO.B5 = 0;
	BCF        GPIO+0, 5
;60SecLED.c,53 :: 		GPIO.B4 = 1;
	BSF        GPIO+0, 4
;60SecLED.c,54 :: 		GPIO.B4 = 0;
	BCF        GPIO+0, 4
;60SecLED.c,50 :: 		for( ; reg < 64; reg++) {
	INCF       _reg+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _reg+0
;60SecLED.c,57 :: 		}
	GOTO       L_run_led9
L_run_led10:
;60SecLED.c,60 :: 		GPIO.B1 = 1;
	BSF        GPIO+0, 1
;60SecLED.c,61 :: 		GPIO.B1 = 0;
	BCF        GPIO+0, 1
;60SecLED.c,64 :: 		VDelay_ms(delays[f]);
	MOVF       FARG_run_led_f+0, 0
	ADDLW      _delays+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	CLRF       FARG_VDelay_ms_Time_ms+1
	MOVLW      0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;60SecLED.c,22 :: 		for(led = 60; led >= s; led--) {
	DECF       _led+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _led+0
;60SecLED.c,67 :: 		}
	GOTO       L_run_led0
L_run_led1:
;60SecLED.c,69 :: 		}
L_end_run_led:
	RETURN
; end of _run_led

_main:

;60SecLED.c,71 :: 		void main(void) {
;60SecLED.c,74 :: 		reg = 0;
	CLRF       _reg+0
;60SecLED.c,75 :: 		led = 0;
	CLRF       _led+0
;60SecLED.c,76 :: 		sec = 0;
	CLRF       _sec+0
;60SecLED.c,77 :: 		freq = 0;
	CLRF       _freq+0
;60SecLED.c,81 :: 		CMCON0 = 0x07;
	MOVLW      7
	MOVWF      CMCON0+0
;60SecLED.c,83 :: 		ANSEL = 0x0;
	CLRF       ANSEL+0
;60SecLED.c,85 :: 		TRISIO = 0x0C;
	MOVLW      12
	MOVWF      TRISIO+0
;60SecLED.c,88 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;60SecLED.c,90 :: 		OPTION_REG.INTEDG = 0;
	BCF        OPTION_REG+0, 6
;60SecLED.c,92 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;60SecLED.c,95 :: 		GPIO = 0x01;
	MOVLW      1
	MOVWF      GPIO+0
;60SecLED.c,98 :: 		GPIO.B0 = 0;
	BCF        GPIO+0, 0
;60SecLED.c,99 :: 		GPIO.B0 = 1;
	BSF        GPIO+0, 0
;60SecLED.c,100 :: 		GPIO.B1 = 1;
	BSF        GPIO+0, 1
;60SecLED.c,101 :: 		GPIO.B1 = 0;
	BCF        GPIO+0, 1
;60SecLED.c,103 :: 		Delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;60SecLED.c,106 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;60SecLED.c,108 :: 		while(1) {
L_main13:
;60SecLED.c,111 :: 		for(i = 0; i < 100; i++) {
	CLRF       _i+0
L_main15:
	MOVLW      100
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;60SecLED.c,113 :: 		for(j = 0; j < 100; j++) {
	CLRF       _j+0
L_main18:
	MOVLW      100
	SUBWF      _j+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main19
;60SecLED.c,115 :: 		for(k = 0; k < 100; k++);
	CLRF       _k+0
L_main21:
	MOVLW      100
	SUBWF      _k+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main22
	INCF       _k+0, 1
	GOTO       L_main21
L_main22:
;60SecLED.c,113 :: 		for(j = 0; j < 100; j++) {
	INCF       _j+0, 1
;60SecLED.c,117 :: 		}
	GOTO       L_main18
L_main19:
;60SecLED.c,111 :: 		for(i = 0; i < 100; i++) {
	INCF       _i+0, 1
;60SecLED.c,119 :: 		}
	GOTO       L_main15
L_main16:
;60SecLED.c,122 :: 		GPIO.B0 = 0;
	BCF        GPIO+0, 0
;60SecLED.c,123 :: 		GPIO.B0 = 1;
	BSF        GPIO+0, 0
;60SecLED.c,124 :: 		GPIO.B1 = 1;
	BSF        GPIO+0, 1
;60SecLED.c,125 :: 		GPIO.B1 = 0;
	BCF        GPIO+0, 1
;60SecLED.c,128 :: 		reg = 0;
	CLRF       _reg+0
;60SecLED.c,129 :: 		led = 0;
	CLRF       _led+0
;60SecLED.c,130 :: 		sec = 0;
	CLRF       _sec+0
;60SecLED.c,131 :: 		freq = 0;
	CLRF       _freq+0
;60SecLED.c,133 :: 		}
	GOTO       L_main13
;60SecLED.c,136 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;60SecLED.c,138 :: 		void interrupt(void) {
;60SecLED.c,141 :: 		INTCON.GIE = 0;
	BCF        INTCON+0, 7
;60SecLED.c,144 :: 		i = 0;
	CLRF       _i+0
;60SecLED.c,147 :: 		freq = 59 - sec;
	MOVF       _sec+0, 0
	SUBLW      59
	MOVWF      _freq+0
;60SecLED.c,150 :: 		run_led(sec,freq);
	MOVF       _sec+0, 0
	MOVWF      FARG_run_led_s+0
	MOVF       _freq+0, 0
	MOVWF      FARG_run_led_f+0
	CALL       _run_led+0
;60SecLED.c,153 :: 		if(sec == 59)
	MOVF       _sec+0, 0
	XORLW      59
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt24
;60SecLED.c,154 :: 		sec = 0;
	CLRF       _sec+0
	GOTO       L_interrupt25
L_interrupt24:
;60SecLED.c,156 :: 		sec++;
	INCF       _sec+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _sec+0
L_interrupt25:
;60SecLED.c,159 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;60SecLED.c,162 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;60SecLED.c,163 :: 		}
L_end_interrupt:
L__interrupt31:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
