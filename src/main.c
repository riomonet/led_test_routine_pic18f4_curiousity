#define _XTAL_FREQ 8000000 //needed for the delay
#include <xc.h>

#pragma config RSTOSC = HFINTOSC_1MHZ //1mhz internal clock
#pragma config WDTE = OFF //watchdog off
#pragma config MCLRE = EXTMCLR //reset button active
#pragma config FEXTOSC = OFF //external clock off

enum {
  PIN1 = 0b00000001,
  PIN2 = 0b00000010,
  PIN3 = 0b00000100,
  PIN4 = 0b00001000,
  PIN5 = 0b00010000,
  PIN6 = 0b00100000,
  PIN7 = 0b01000000,
  PIN8 = 0b10000000
};

void set_lata (char pins)
{
  LATA = pins;
}

void sequential_blink ()
{
  char leds[] = {PIN5, PIN6, PIN7, PIN8};

  for (int i = 0; i < 4; i++) {
    set_lata (leds[i]);
    __delay_ms(100);
  }
  for (int i = 3; i >= 0; i--) {
    set_lata (leds[i]);
    __delay_ms(100);
  }
}

void alternate ()
{
  char vals[] = {0x5, 0xa};
    for (int x = 0; x < 2; x++)
      {
	__delay_ms(200);
	set_lata ((char) (vals[x] << 4));
      }
}
  
void counter ()
{
  for (unsigned char x = 0; x < 16; x++) {
    set_lata((char) (x << 4));
    __delay_ms(250);
  }
}

void test_routine ()
{
  int i;
  for (i = 0; i < 6; i++)
    sequential_blink ();

  for (i = 0; i < 8; i++)
    alternate();
  
  counter();
}

void main(void) {
  // Set ALL pins as outputs
  TRISA = 0x00;
      
  // Set ALL pins as digital (not analog)
  ANSELA = 0x00;
     
  OSCCON1bits.NDIV = 0b0000; //runtime clock division
  OSCCON1bits.NOSC = 0b110;  //runtime clock selector
  OSCFRQbits.HFFRQ = 0b0011;  // runtime frequencey 8mhz
   
  LATAbits.LATA4 = 0;
  LATAbits.LATA5 = 0;
  LATAbits.LATA6 = 0;
  LATAbits.LATA7 = 0;
   

  while(1) {
    test_routine();

  }
}

