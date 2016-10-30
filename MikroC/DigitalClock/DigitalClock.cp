#line 1 "E:/Projects/PIC/MikroC/DigitalClock/DigitalClock.c"

sbit Soft_I2C_Scl at RA5_bit;
sbit Soft_I2C_Sda at RA4_bit;
sbit Soft_I2C_Scl_Direction at TRISA5_bit;
sbit Soft_I2C_Sda_Direction at TRISA4_bit;


unsigned char sec, hours, minutes, delay_counter;

volatile unsigned char time_select, digit_select;

volatile bit delay_flag, dummy_bit, increment_flag;

unsigned char bcd_to_seg(unsigned char bcd) {

 switch (bcd) {

 case 0: {
 return 0x03;
 }
 case 1: {
 return 0x9F;
 }
 case 2: {
 return 0x25;
 }
 case 3: {
 return 0x0D;
 }
 case 4: {
 return 0x99;
 }
 case 5: {
 return 0x49;
 }
 case 6: {
 return 0x41;
 }
 case 7: {
 return 0x1F;
 }
 case 8: {
 return 0x01;
 }
 case 9: {
 return 0x09;
 }
 case 'A': {
 return 0x11;
 }
 case 'L': {
 return 0xE3;
 }
 case 'E': {
 return 0x61;
 }
 case 'X': {
 return 0x91;
 }
 case 'C': {
 return 0x63;
 }
 default: {
 return 0xFD;
 }
 }
}

void flash_seg(unsigned char select) {

 switch (select) {


 case 1: {

 PORTB = 0xEF;
 PORTC = bcd_to_seg(sec & 0x0F);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xDF;
 PORTC = bcd_to_seg(sec >> 4);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xBF;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0x7F;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xFF;

 break;

 }

 case 2: {

 PORTB = 0xEF;
 PORTC = (digit_select == 1) ?
 bcd_to_seg(minutes & 0x0F) & 0xFE : bcd_to_seg(minutes & 0x0F);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xDF;
 PORTC = (digit_select == 2) ?
 bcd_to_seg(minutes >> 4) & 0xFE : bcd_to_seg(minutes >> 4);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xBF;
 PORTC = (digit_select == 3) ?
 bcd_to_seg(hours & 0x0F) & 0xFE : bcd_to_seg(hours & 0x0F);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0x7F;
 PORTC = (digit_select == 4) ?
 bcd_to_seg(hours >> 4) & 0xFE : bcd_to_seg(hours >> 4);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xFF;

 break;

 }

 case 3: {

 PORTB = 0xEF;
 PORTC = bcd_to_seg('X');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xDF;
 PORTC = bcd_to_seg('E');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xBF;
 PORTC = bcd_to_seg('L');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0x7F;
 PORTC = bcd_to_seg('A');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xFF;

 break;

 }

 case 4: {

 PORTB = 0xEF;
 PORTC = bcd_to_seg('C');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xDF;
 PORTC = bcd_to_seg(0);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xBF;
 PORTC = bcd_to_seg('L');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0x7F;
 PORTC = bcd_to_seg('C');
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xFF;

 break;

 }

 default: {

 PORTB = 0xEF;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xDF;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xBF;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0x7F;
 PORTC = bcd_to_seg(0xFF);
 Delay_us(15);
 PORTC = 0xFF;
 PORTB = 0xFF;

 return;
 }

 }

}

void read_time(unsigned char select) {

 switch (select) {


 case 1: {

 flash_seg(select);

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);

 flash_seg(select);

 Soft_I2C_Write(0x00);

 flash_seg(select);

 Soft_I2C_Start();
 Soft_I2C_Write(0xD1);

 flash_seg(select);

 sec = Soft_I2C_Read(0);

 flash_seg(select);

 Soft_I2C_Stop();

 flash_seg(select);

 break;

 }

 case 2: {

 flash_seg(select);

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);

 flash_seg(select);

 Soft_I2C_Write(0x01);

 flash_seg(select);

 Soft_I2C_Start();
 Soft_I2C_Write(0xD1);

 flash_seg(select);

 minutes = Soft_I2C_Read(1);
 hours = Soft_I2C_Read(0);

 flash_seg(select);

 Soft_I2C_Stop();

 flash_seg(select);

 break;

 }
 default: {

 flash_seg(select);

 Delay_us(400);

 flash_seg(select);

 Delay_us(400);

 flash_seg(select);

 Delay_us(400);

 flash_seg(select);

 Delay_us(400);

 flash_seg(select);

 Delay_us(400);

 flash_seg(select);

 break;

 }

 }
}

void increment_digit(unsigned char time, unsigned char digit) {

 if(time == 2) {

 switch (digit) {

 case 1: {

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x01);
 Soft_I2C_Write(
 (minutes & 0x0F) < 9 ? minutes + 0x01 : minutes & 0xF0);
 Soft_I2C_Stop();

 break;
 }
 case 2: {

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x01);
 Soft_I2C_Write(minutes >> 4 < 5 ? minutes + 0x10 : minutes & 0x0F);
 Soft_I2C_Stop();

 break;
 }
 case 3: {

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x02);
 Soft_I2C_Write(
 (hours & 0x0F) < 3 ? hours + 0x01 :
 hours >> 4 == 2 ? hours & 0xF0 :
 (hours & 0x0F) < 9 ? hours + 0x01 : hours & 0xF0);
 Soft_I2C_Stop();

 break;
 }
 case 4: {

 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x02);
 Soft_I2C_Write(
 hours >> 4 < 1 ? hours + 0x10 :
 (hours & 0x0F) > 3 ? hours & 0x0F :
 hours >> 4 < 2 ? hours + 0x10 : hours & 0x0F);
 Soft_I2C_Stop();

 break;
 }
 default: {

 break;
 }

 }

 }
}

void main(void) {


 TRISA = 0x06;


 TRISB = 0x00;


 TRISC = 0x00;


 ANSEL = 0x00;
 ANSELH = 0x00;


 WPUA = 0x00;


 IOCA = 0x02;


 Soft_I2C_Init();


 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x07);
 Soft_I2C_Write(0x80);
 Soft_I2C_Stop();


 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x00);
 Soft_I2C_Write(0x00);
 Soft_I2C_Stop();


 Soft_I2C_Start();
 Soft_I2C_Write(0xD0);
 Soft_I2C_Write(0x07);
 Soft_I2C_Write(0x10);
 Soft_I2C_Stop();


 time_select = 1;
 digit_select = 0;
 delay_counter = 0;
 delay_flag = 0;
 increment_flag = 0;


 PORTC = 0x00;
 PORTB = 0xFF;


 INTCON = 0x98;

 while (1) {

 read_time(time_select);


 if (increment_flag) {

 increment_digit(time_select, digit_select);


 increment_flag = 0;

 }

 if (delay_flag) {

 delay_counter++;


 if (delay_counter == 0x80) {


 delay_counter = 0x00;


 delay_flag = 0;


 INTCON = 0x98;
 }

 }
 }

}

void interrupt(void) {



 dummy_bit = PORTA.RA1;

 if (INTCON.INTF) {


 if (!digit_select) {

 time_select++;

 if (time_select == 5)
 time_select = 1;
 }

 else {

 increment_flag = 1;
 }

 }

 else if (INTCON.RABIF && time_select == 2) {


 digit_select++;

 if (digit_select == 5)
 digit_select = 0;

 }



 INTCON = 0x00;


 delay_flag = 1;
}
