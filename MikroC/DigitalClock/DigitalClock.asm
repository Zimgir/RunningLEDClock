
_bcd_to_seg:

;DigitalClock.c,14 :: 		unsigned char bcd_to_seg(unsigned char bcd) {
;DigitalClock.c,16 :: 		switch (bcd) {
	GOTO       L_bcd_to_seg0
;DigitalClock.c,18 :: 		case 0: {
L_bcd_to_seg2:
;DigitalClock.c,19 :: 		return 0x03;
	MOVLW      3
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,21 :: 		case 1: {
L_bcd_to_seg3:
;DigitalClock.c,22 :: 		return 0x9F;
	MOVLW      159
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,24 :: 		case 2: {
L_bcd_to_seg4:
;DigitalClock.c,25 :: 		return 0x25;
	MOVLW      37
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,27 :: 		case 3: {
L_bcd_to_seg5:
;DigitalClock.c,28 :: 		return 0x0D;
	MOVLW      13
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,30 :: 		case 4: {
L_bcd_to_seg6:
;DigitalClock.c,31 :: 		return 0x99;
	MOVLW      153
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,33 :: 		case 5: {
L_bcd_to_seg7:
;DigitalClock.c,34 :: 		return 0x49;
	MOVLW      73
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,36 :: 		case 6: {
L_bcd_to_seg8:
;DigitalClock.c,37 :: 		return 0x41;
	MOVLW      65
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,39 :: 		case 7: {
L_bcd_to_seg9:
;DigitalClock.c,40 :: 		return 0x1F;
	MOVLW      31
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,42 :: 		case 8: {
L_bcd_to_seg10:
;DigitalClock.c,43 :: 		return 0x01;
	MOVLW      1
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,45 :: 		case 9: {
L_bcd_to_seg11:
;DigitalClock.c,46 :: 		return 0x09;
	MOVLW      9
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,48 :: 		case 'A': {
L_bcd_to_seg12:
;DigitalClock.c,49 :: 		return 0x11;
	MOVLW      17
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,51 :: 		case 'L': {
L_bcd_to_seg13:
;DigitalClock.c,52 :: 		return 0xE3;
	MOVLW      227
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,54 :: 		case 'E': {
L_bcd_to_seg14:
;DigitalClock.c,55 :: 		return 0x61;
	MOVLW      97
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,57 :: 		case 'X': {
L_bcd_to_seg15:
;DigitalClock.c,58 :: 		return 0x91;
	MOVLW      145
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,60 :: 		case 'C': {
L_bcd_to_seg16:
;DigitalClock.c,61 :: 		return 0x63;
	MOVLW      99
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,63 :: 		default: {
L_bcd_to_seg17:
;DigitalClock.c,64 :: 		return 0xFD;
	MOVLW      253
	MOVWF      R0+0
	GOTO       L_end_bcd_to_seg
;DigitalClock.c,66 :: 		}
L_bcd_to_seg0:
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg2
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg3
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg4
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg5
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg6
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg7
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg8
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg9
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg10
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg11
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      65
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg12
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      76
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg13
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      69
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg14
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      88
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg15
	MOVF       FARG_bcd_to_seg_bcd+0, 0
	XORLW      67
	BTFSC      STATUS+0, 2
	GOTO       L_bcd_to_seg16
	GOTO       L_bcd_to_seg17
;DigitalClock.c,67 :: 		}
L_end_bcd_to_seg:
	RETURN
; end of _bcd_to_seg

_flash_seg:

;DigitalClock.c,69 :: 		void flash_seg(unsigned char select) {
;DigitalClock.c,71 :: 		switch (select) {
	GOTO       L_flash_seg18
;DigitalClock.c,74 :: 		case 1: {
L_flash_seg20:
;DigitalClock.c,76 :: 		PORTB = 0xEF;
	MOVLW      239
	MOVWF      PORTB+0
;DigitalClock.c,77 :: 		PORTC = bcd_to_seg(sec & 0x0F);
	MOVLW      15
	ANDWF      _sec+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,78 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg21:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg21
	NOP
	NOP
;DigitalClock.c,79 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,80 :: 		PORTB = 0xDF;
	MOVLW      223
	MOVWF      PORTB+0
;DigitalClock.c,81 :: 		PORTC = bcd_to_seg(sec >> 4);
	MOVF       _sec+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,82 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg22:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg22
	NOP
	NOP
;DigitalClock.c,83 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,84 :: 		PORTB = 0xBF;
	MOVLW      191
	MOVWF      PORTB+0
;DigitalClock.c,85 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,86 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg23:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg23
	NOP
	NOP
;DigitalClock.c,87 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,88 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;DigitalClock.c,89 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,90 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg24:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg24
	NOP
	NOP
;DigitalClock.c,91 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,92 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,94 :: 		break;
	GOTO       L_flash_seg19
;DigitalClock.c,98 :: 		case 2: {
L_flash_seg25:
;DigitalClock.c,100 :: 		PORTB = 0xEF;
	MOVLW      239
	MOVWF      PORTB+0
;DigitalClock.c,101 :: 		PORTC = (digit_select == 1) ?
	MOVF       _digit_select+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_flash_seg26
;DigitalClock.c,102 :: 		bcd_to_seg(minutes & 0x0F) & 0xFE : bcd_to_seg(minutes & 0x0F);
	MOVLW      15
	ANDWF      _minutes+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVLW      254
	ANDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
	GOTO       L_flash_seg27
L_flash_seg26:
	MOVLW      15
	ANDWF      _minutes+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
L_flash_seg27:
	MOVF       FLOC__flash_seg+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,103 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg28:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg28
	NOP
	NOP
;DigitalClock.c,104 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,105 :: 		PORTB = 0xDF;
	MOVLW      223
	MOVWF      PORTB+0
;DigitalClock.c,106 :: 		PORTC = (digit_select == 2) ?
	MOVF       _digit_select+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_flash_seg29
;DigitalClock.c,107 :: 		bcd_to_seg(minutes >> 4) & 0xFE : bcd_to_seg(minutes >> 4);
	MOVF       _minutes+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	CALL       _bcd_to_seg+0
	MOVLW      254
	ANDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
	GOTO       L_flash_seg30
L_flash_seg29:
	MOVF       _minutes+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
L_flash_seg30:
	MOVF       FLOC__flash_seg+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,108 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg31:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg31
	NOP
	NOP
;DigitalClock.c,109 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,110 :: 		PORTB = 0xBF;
	MOVLW      191
	MOVWF      PORTB+0
;DigitalClock.c,111 :: 		PORTC = (digit_select == 3) ?
	MOVF       _digit_select+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_flash_seg32
;DigitalClock.c,112 :: 		bcd_to_seg(hours & 0x0F) & 0xFE : bcd_to_seg(hours & 0x0F);
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVLW      254
	ANDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
	GOTO       L_flash_seg33
L_flash_seg32:
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
L_flash_seg33:
	MOVF       FLOC__flash_seg+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,113 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg34:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg34
	NOP
	NOP
;DigitalClock.c,114 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,115 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;DigitalClock.c,116 :: 		PORTC = (digit_select == 4) ?
	MOVF       _digit_select+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_flash_seg35
;DigitalClock.c,117 :: 		bcd_to_seg(hours >> 4) & 0xFE : bcd_to_seg(hours >> 4);
	MOVF       _hours+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	CALL       _bcd_to_seg+0
	MOVLW      254
	ANDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
	GOTO       L_flash_seg36
L_flash_seg35:
	MOVF       _hours+0, 0
	MOVWF      FARG_bcd_to_seg_bcd+0
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	RRF        FARG_bcd_to_seg_bcd+0, 1
	BCF        FARG_bcd_to_seg_bcd+0, 7
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      FLOC__flash_seg+0
L_flash_seg36:
	MOVF       FLOC__flash_seg+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,118 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg37:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg37
	NOP
	NOP
;DigitalClock.c,119 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,120 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,122 :: 		break;
	GOTO       L_flash_seg19
;DigitalClock.c,126 :: 		case 3: {
L_flash_seg38:
;DigitalClock.c,128 :: 		PORTB = 0xEF;
	MOVLW      239
	MOVWF      PORTB+0
;DigitalClock.c,129 :: 		PORTC = bcd_to_seg('X');
	MOVLW      88
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,130 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg39:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg39
	NOP
	NOP
;DigitalClock.c,131 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,132 :: 		PORTB = 0xDF;
	MOVLW      223
	MOVWF      PORTB+0
;DigitalClock.c,133 :: 		PORTC = bcd_to_seg('E');
	MOVLW      69
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,134 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg40:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg40
	NOP
	NOP
;DigitalClock.c,135 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,136 :: 		PORTB = 0xBF;
	MOVLW      191
	MOVWF      PORTB+0
;DigitalClock.c,137 :: 		PORTC = bcd_to_seg('L');
	MOVLW      76
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,138 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg41:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg41
	NOP
	NOP
;DigitalClock.c,139 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,140 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;DigitalClock.c,141 :: 		PORTC = bcd_to_seg('A');
	MOVLW      65
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,142 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg42:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg42
	NOP
	NOP
;DigitalClock.c,143 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,144 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,146 :: 		break;
	GOTO       L_flash_seg19
;DigitalClock.c,150 :: 		case 4: {
L_flash_seg43:
;DigitalClock.c,152 :: 		PORTB = 0xEF;
	MOVLW      239
	MOVWF      PORTB+0
;DigitalClock.c,153 :: 		PORTC = bcd_to_seg('C');
	MOVLW      67
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,154 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg44:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg44
	NOP
	NOP
;DigitalClock.c,155 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,156 :: 		PORTB = 0xDF;
	MOVLW      223
	MOVWF      PORTB+0
;DigitalClock.c,157 :: 		PORTC = bcd_to_seg(0);
	CLRF       FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,158 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg45:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg45
	NOP
	NOP
;DigitalClock.c,159 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,160 :: 		PORTB = 0xBF;
	MOVLW      191
	MOVWF      PORTB+0
;DigitalClock.c,161 :: 		PORTC = bcd_to_seg('L');
	MOVLW      76
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,162 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg46:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg46
	NOP
	NOP
;DigitalClock.c,163 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,164 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;DigitalClock.c,165 :: 		PORTC = bcd_to_seg('C');
	MOVLW      67
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,166 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg47:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg47
	NOP
	NOP
;DigitalClock.c,167 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,168 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,170 :: 		break;
	GOTO       L_flash_seg19
;DigitalClock.c,174 :: 		default: {
L_flash_seg48:
;DigitalClock.c,176 :: 		PORTB = 0xEF;
	MOVLW      239
	MOVWF      PORTB+0
;DigitalClock.c,177 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,178 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg49:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg49
	NOP
	NOP
;DigitalClock.c,179 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,180 :: 		PORTB = 0xDF;
	MOVLW      223
	MOVWF      PORTB+0
;DigitalClock.c,181 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,182 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg50:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg50
	NOP
	NOP
;DigitalClock.c,183 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,184 :: 		PORTB = 0xBF;
	MOVLW      191
	MOVWF      PORTB+0
;DigitalClock.c,185 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,186 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg51:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg51
	NOP
	NOP
;DigitalClock.c,187 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,188 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;DigitalClock.c,189 :: 		PORTC = bcd_to_seg(0xFF);
	MOVLW      255
	MOVWF      FARG_bcd_to_seg_bcd+0
	CALL       _bcd_to_seg+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;DigitalClock.c,190 :: 		Delay_us(15);
	MOVLW      9
	MOVWF      R13+0
L_flash_seg52:
	DECFSZ     R13+0, 1
	GOTO       L_flash_seg52
	NOP
	NOP
;DigitalClock.c,191 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;DigitalClock.c,192 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,194 :: 		return;
	GOTO       L_end_flash_seg
;DigitalClock.c,197 :: 		}
L_flash_seg18:
	MOVF       FARG_flash_seg_select+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_flash_seg20
	MOVF       FARG_flash_seg_select+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_flash_seg25
	MOVF       FARG_flash_seg_select+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_flash_seg38
	MOVF       FARG_flash_seg_select+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_flash_seg43
	GOTO       L_flash_seg48
L_flash_seg19:
;DigitalClock.c,199 :: 		}
L_end_flash_seg:
	RETURN
; end of _flash_seg

_read_time:

;DigitalClock.c,201 :: 		void read_time(unsigned char select) {
;DigitalClock.c,203 :: 		switch (select) {
	GOTO       L_read_time53
;DigitalClock.c,206 :: 		case 1: {
L_read_time55:
;DigitalClock.c,208 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,210 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,211 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,213 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,215 :: 		Soft_I2C_Write(0x00);
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,217 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,219 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,220 :: 		Soft_I2C_Write(0xD1);
	MOVLW      209
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,222 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,224 :: 		sec = Soft_I2C_Read(0);
	CLRF       FARG_Soft_I2C_Read_ack+0
	CLRF       FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      _sec+0
;DigitalClock.c,226 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,228 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,230 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,232 :: 		break;
	GOTO       L_read_time54
;DigitalClock.c,236 :: 		case 2: {
L_read_time56:
;DigitalClock.c,238 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,240 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,241 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,243 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,245 :: 		Soft_I2C_Write(0x01);
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,247 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,249 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,250 :: 		Soft_I2C_Write(0xD1);
	MOVLW      209
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,252 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,254 :: 		minutes = Soft_I2C_Read(1);
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      _minutes+0
;DigitalClock.c,255 :: 		hours = Soft_I2C_Read(0);
	CLRF       FARG_Soft_I2C_Read_ack+0
	CLRF       FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      _hours+0
;DigitalClock.c,257 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,259 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,261 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,263 :: 		break;
	GOTO       L_read_time54
;DigitalClock.c,266 :: 		default: {
L_read_time57:
;DigitalClock.c,268 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,270 :: 		Delay_us(400);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_read_time58:
	DECFSZ     R13+0, 1
	GOTO       L_read_time58
	DECFSZ     R12+0, 1
	GOTO       L_read_time58
	NOP
;DigitalClock.c,272 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,274 :: 		Delay_us(400);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_read_time59:
	DECFSZ     R13+0, 1
	GOTO       L_read_time59
	DECFSZ     R12+0, 1
	GOTO       L_read_time59
	NOP
;DigitalClock.c,276 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,278 :: 		Delay_us(400);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_read_time60:
	DECFSZ     R13+0, 1
	GOTO       L_read_time60
	DECFSZ     R12+0, 1
	GOTO       L_read_time60
	NOP
;DigitalClock.c,280 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,282 :: 		Delay_us(400);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_read_time61:
	DECFSZ     R13+0, 1
	GOTO       L_read_time61
	DECFSZ     R12+0, 1
	GOTO       L_read_time61
	NOP
;DigitalClock.c,284 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,286 :: 		Delay_us(400);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_read_time62:
	DECFSZ     R13+0, 1
	GOTO       L_read_time62
	DECFSZ     R12+0, 1
	GOTO       L_read_time62
	NOP
;DigitalClock.c,288 :: 		flash_seg(select);
	MOVF       FARG_read_time_select+0, 0
	MOVWF      FARG_flash_seg_select+0
	CALL       _flash_seg+0
;DigitalClock.c,290 :: 		break;
	GOTO       L_read_time54
;DigitalClock.c,294 :: 		}
L_read_time53:
	MOVF       FARG_read_time_select+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_read_time55
	MOVF       FARG_read_time_select+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_read_time56
	GOTO       L_read_time57
L_read_time54:
;DigitalClock.c,295 :: 		}
L_end_read_time:
	RETURN
; end of _read_time

_increment_digit:

;DigitalClock.c,297 :: 		void increment_digit(unsigned char time, unsigned char digit) {
;DigitalClock.c,299 :: 		if(time == 2) {
	MOVF       FARG_increment_digit_time+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_increment_digit63
;DigitalClock.c,301 :: 		switch (digit) {
	GOTO       L_increment_digit64
;DigitalClock.c,303 :: 		case 1: {
L_increment_digit66:
;DigitalClock.c,305 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,306 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,307 :: 		Soft_I2C_Write(0x01);
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,309 :: 		(minutes & 0x0F) < 9 ? minutes + 0x01 : minutes & 0xF0);
	MOVLW      15
	ANDWF      _minutes+0, 0
	MOVWF      R1+0
	MOVLW      9
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit67
	INCF       _minutes+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	GOTO       L_increment_digit68
L_increment_digit67:
	MOVLW      240
	ANDWF      _minutes+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
L_increment_digit68:
	MOVF       R1+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,310 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,312 :: 		break;
	GOTO       L_increment_digit65
;DigitalClock.c,314 :: 		case 2: {
L_increment_digit69:
;DigitalClock.c,316 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,317 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,318 :: 		Soft_I2C_Write(0x01);
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,319 :: 		Soft_I2C_Write(minutes >> 4 < 5 ? minutes + 0x10 : minutes & 0x0F);
	MOVF       _minutes+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      5
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit70
	MOVLW      16
	ADDWF      _minutes+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	GOTO       L_increment_digit71
L_increment_digit70:
	MOVLW      15
	ANDWF      _minutes+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
L_increment_digit71:
	MOVF       R1+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,320 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,322 :: 		break;
	GOTO       L_increment_digit65
;DigitalClock.c,324 :: 		case 3: {
L_increment_digit72:
;DigitalClock.c,326 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,327 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,328 :: 		Soft_I2C_Write(0x02);
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,330 :: 		(hours & 0x0F) < 3 ? hours + 0x01 :
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      R1+0
	MOVLW      3
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit73
	MOVF       _hours+0, 0
	ADDLW      1
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       R0+0, 0
	MOVWF      R5+0
	MOVF       R0+1, 0
	MOVWF      R5+1
	GOTO       L_increment_digit74
L_increment_digit73:
;DigitalClock.c,331 :: 		hours >> 4 == 2 ? hours & 0xF0 :
	MOVF       _hours+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVF       R1+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_increment_digit75
	MOVLW      240
	ANDWF      _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	GOTO       L_increment_digit76
L_increment_digit75:
;DigitalClock.c,332 :: 		(hours & 0x0F) < 9 ? hours + 0x01 : hours & 0xF0);
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      R1+0
	MOVLW      9
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit77
	INCF       _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	GOTO       L_increment_digit78
L_increment_digit77:
	MOVLW      240
	ANDWF      _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
L_increment_digit78:
	MOVF       R1+0, 0
	MOVWF      R3+0
	MOVF       R1+1, 0
	MOVWF      R3+1
L_increment_digit76:
	MOVF       R3+0, 0
	MOVWF      R5+0
	MOVF       R3+1, 0
	MOVWF      R5+1
L_increment_digit74:
	MOVF       R5+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,333 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,335 :: 		break;
	GOTO       L_increment_digit65
;DigitalClock.c,337 :: 		case 4: {
L_increment_digit79:
;DigitalClock.c,339 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,340 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,341 :: 		Soft_I2C_Write(0x02);
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,343 :: 		hours >> 4 < 1 ? hours + 0x10 :
	MOVF       _hours+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      1
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit80
	MOVLW      16
	ADDWF      _hours+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       R0+0, 0
	MOVWF      R5+0
	MOVF       R0+1, 0
	MOVWF      R5+1
	GOTO       L_increment_digit81
L_increment_digit80:
;DigitalClock.c,344 :: 		(hours & 0x0F) > 3 ? hours & 0x0F :
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	SUBLW      3
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit82
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	GOTO       L_increment_digit83
L_increment_digit82:
;DigitalClock.c,345 :: 		hours >> 4 < 2 ? hours + 0x10 : hours & 0x0F);
	MOVF       _hours+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      2
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_increment_digit84
	MOVLW      16
	ADDWF      _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	GOTO       L_increment_digit85
L_increment_digit84:
	MOVLW      15
	ANDWF      _hours+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
L_increment_digit85:
	MOVF       R1+0, 0
	MOVWF      R3+0
	MOVF       R1+1, 0
	MOVWF      R3+1
L_increment_digit83:
	MOVF       R3+0, 0
	MOVWF      R5+0
	MOVF       R3+1, 0
	MOVWF      R5+1
L_increment_digit81:
	MOVF       R5+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,346 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,348 :: 		break;
	GOTO       L_increment_digit65
;DigitalClock.c,350 :: 		default: {
L_increment_digit86:
;DigitalClock.c,352 :: 		break;
	GOTO       L_increment_digit65
;DigitalClock.c,355 :: 		}
L_increment_digit64:
	MOVF       FARG_increment_digit_digit+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_increment_digit66
	MOVF       FARG_increment_digit_digit+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_increment_digit69
	MOVF       FARG_increment_digit_digit+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_increment_digit72
	MOVF       FARG_increment_digit_digit+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_increment_digit79
	GOTO       L_increment_digit86
L_increment_digit65:
;DigitalClock.c,357 :: 		}
L_increment_digit63:
;DigitalClock.c,358 :: 		}
L_end_increment_digit:
	RETURN
; end of _increment_digit

_main:

;DigitalClock.c,360 :: 		void main(void) {
;DigitalClock.c,363 :: 		TRISA = 0x06;
	MOVLW      6
	MOVWF      TRISA+0
;DigitalClock.c,366 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;DigitalClock.c,369 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;DigitalClock.c,372 :: 		ANSEL = 0x00;
	CLRF       ANSEL+0
;DigitalClock.c,373 :: 		ANSELH = 0x00;
	CLRF       ANSELH+0
;DigitalClock.c,376 :: 		WPUA = 0x00;
	CLRF       WPUA+0
;DigitalClock.c,379 :: 		IOCA = 0x02;
	MOVLW      2
	MOVWF      IOCA+0
;DigitalClock.c,382 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;DigitalClock.c,385 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,386 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,387 :: 		Soft_I2C_Write(0x07);
	MOVLW      7
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,388 :: 		Soft_I2C_Write(0x80);
	MOVLW      128
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,389 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,392 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,393 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,394 :: 		Soft_I2C_Write(0x00);
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,395 :: 		Soft_I2C_Write(0x00);
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,396 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,399 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;DigitalClock.c,400 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,401 :: 		Soft_I2C_Write(0x07);
	MOVLW      7
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,402 :: 		Soft_I2C_Write(0x10);
	MOVLW      16
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;DigitalClock.c,403 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;DigitalClock.c,406 :: 		time_select = 1;
	MOVLW      1
	MOVWF      _time_select+0
;DigitalClock.c,407 :: 		digit_select = 0;
	CLRF       _digit_select+0
;DigitalClock.c,408 :: 		delay_counter = 0;
	CLRF       _delay_counter+0
;DigitalClock.c,409 :: 		delay_flag = 0;
	BCF        _delay_flag+0, BitPos(_delay_flag+0)
;DigitalClock.c,410 :: 		increment_flag = 0;
	BCF        _increment_flag+0, BitPos(_increment_flag+0)
;DigitalClock.c,413 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;DigitalClock.c,414 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;DigitalClock.c,417 :: 		INTCON = 0x98;
	MOVLW      152
	MOVWF      INTCON+0
;DigitalClock.c,419 :: 		while (1) {
L_main87:
;DigitalClock.c,421 :: 		read_time(time_select);
	MOVF       _time_select+0, 0
	MOVWF      FARG_read_time_select+0
	CALL       _read_time+0
;DigitalClock.c,424 :: 		if (increment_flag) {
	BTFSS      _increment_flag+0, BitPos(_increment_flag+0)
	GOTO       L_main89
;DigitalClock.c,426 :: 		increment_digit(time_select, digit_select);
	MOVF       _time_select+0, 0
	MOVWF      FARG_increment_digit_time+0
	MOVF       _digit_select+0, 0
	MOVWF      FARG_increment_digit_digit+0
	CALL       _increment_digit+0
;DigitalClock.c,429 :: 		increment_flag = 0;
	BCF        _increment_flag+0, BitPos(_increment_flag+0)
;DigitalClock.c,431 :: 		}
L_main89:
;DigitalClock.c,433 :: 		if (delay_flag) {
	BTFSS      _delay_flag+0, BitPos(_delay_flag+0)
	GOTO       L_main90
;DigitalClock.c,435 :: 		delay_counter++;
	INCF       _delay_counter+0, 1
;DigitalClock.c,438 :: 		if (delay_counter == 0x80) {
	MOVF       _delay_counter+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main91
;DigitalClock.c,441 :: 		delay_counter = 0x00;
	CLRF       _delay_counter+0
;DigitalClock.c,444 :: 		delay_flag = 0;
	BCF        _delay_flag+0, BitPos(_delay_flag+0)
;DigitalClock.c,447 :: 		INTCON = 0x98;
	MOVLW      152
	MOVWF      INTCON+0
;DigitalClock.c,448 :: 		}
L_main91:
;DigitalClock.c,450 :: 		}
L_main90:
;DigitalClock.c,451 :: 		}
	GOTO       L_main87
;DigitalClock.c,453 :: 		}
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

;DigitalClock.c,455 :: 		void interrupt(void) {
;DigitalClock.c,459 :: 		dummy_bit = PORTA.RA1;
	BTFSC      PORTA+0, 1
	GOTO       L__interrupt109
	BCF        _dummy_bit+0, BitPos(_dummy_bit+0)
	GOTO       L__interrupt110
L__interrupt109:
	BSF        _dummy_bit+0, BitPos(_dummy_bit+0)
L__interrupt110:
;DigitalClock.c,461 :: 		if (INTCON.INTF) {
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt92
;DigitalClock.c,464 :: 		if (!digit_select) {
	MOVF       _digit_select+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt93
;DigitalClock.c,466 :: 		time_select++;
	INCF       _time_select+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _time_select+0
;DigitalClock.c,468 :: 		if (time_select == 5)
	MOVF       _time_select+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt94
;DigitalClock.c,469 :: 		time_select = 1;
	MOVLW      1
	MOVWF      _time_select+0
L_interrupt94:
;DigitalClock.c,470 :: 		}
	GOTO       L_interrupt95
L_interrupt93:
;DigitalClock.c,474 :: 		increment_flag = 1;
	BSF        _increment_flag+0, BitPos(_increment_flag+0)
;DigitalClock.c,475 :: 		}
L_interrupt95:
;DigitalClock.c,477 :: 		}
	GOTO       L_interrupt96
L_interrupt92:
;DigitalClock.c,479 :: 		else if (INTCON.RABIF && time_select == 2) {
	BTFSS      INTCON+0, 0
	GOTO       L_interrupt99
	MOVF       _time_select+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt99
L__interrupt101:
;DigitalClock.c,482 :: 		digit_select++;
	INCF       _digit_select+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit_select+0
;DigitalClock.c,484 :: 		if (digit_select == 5)
	MOVF       _digit_select+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt100
;DigitalClock.c,485 :: 		digit_select = 0;
	CLRF       _digit_select+0
L_interrupt100:
;DigitalClock.c,487 :: 		}
L_interrupt99:
L_interrupt96:
;DigitalClock.c,491 :: 		INTCON = 0x00;
	CLRF       INTCON+0
;DigitalClock.c,494 :: 		delay_flag = 1;
	BSF        _delay_flag+0, BitPos(_delay_flag+0)
;DigitalClock.c,495 :: 		}
L_end_interrupt:
L__interrupt108:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
