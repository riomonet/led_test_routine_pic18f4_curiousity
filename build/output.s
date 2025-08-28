subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	18F47Q10
include "/opt/microchip/xc8/v2.46/pic/include/proc/18f47q10.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN0PPS equ 0E1Fh ;# 
# 120 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN1PPS equ 0E20h ;# 
# 186 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN2PPS equ 0E21h ;# 
# 252 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN3PPS equ 0E22h ;# 
# 318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN4PPS equ 0E23h ;# 
# 384 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN5PPS equ 0E24h ;# 
# 450 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN6PPS equ 0E25h ;# 
# 516 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCIN7PPS equ 0E26h ;# 
# 582 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1CON equ 0E27h ;# 
# 700 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1POL equ 0E28h ;# 
# 778 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1SEL0 equ 0E29h ;# 
# 906 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1SEL1 equ 0E2Ah ;# 
# 1034 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1SEL2 equ 0E2Bh ;# 
# 1162 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1SEL3 equ 0E2Ch ;# 
# 1290 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1GLS0 equ 0E2Dh ;# 
# 1402 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1GLS1 equ 0E2Eh ;# 
# 1514 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1GLS2 equ 0E2Fh ;# 
# 1626 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC1GLS3 equ 0E30h ;# 
# 1738 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2CON equ 0E31h ;# 
# 1856 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2POL equ 0E32h ;# 
# 1934 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2SEL0 equ 0E33h ;# 
# 2062 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2SEL1 equ 0E34h ;# 
# 2190 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2SEL2 equ 0E35h ;# 
# 2318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2SEL3 equ 0E36h ;# 
# 2446 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2GLS0 equ 0E37h ;# 
# 2558 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2GLS1 equ 0E38h ;# 
# 2670 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2GLS2 equ 0E39h ;# 
# 2782 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC2GLS3 equ 0E3Ah ;# 
# 2894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3CON equ 0E3Bh ;# 
# 3012 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3POL equ 0E3Ch ;# 
# 3090 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3SEL0 equ 0E3Dh ;# 
# 3218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3SEL1 equ 0E3Eh ;# 
# 3346 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3SEL2 equ 0E3Fh ;# 
# 3474 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3SEL3 equ 0E40h ;# 
# 3602 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3GLS0 equ 0E41h ;# 
# 3714 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3GLS1 equ 0E42h ;# 
# 3826 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3GLS2 equ 0E43h ;# 
# 3938 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC3GLS3 equ 0E44h ;# 
# 4050 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4CON equ 0E45h ;# 
# 4168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4POL equ 0E46h ;# 
# 4246 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4SEL0 equ 0E47h ;# 
# 4374 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4SEL1 equ 0E48h ;# 
# 4502 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4SEL2 equ 0E49h ;# 
# 4630 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4SEL3 equ 0E4Ah ;# 
# 4758 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4GLS0 equ 0E4Bh ;# 
# 4870 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4GLS1 equ 0E4Ch ;# 
# 4982 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4GLS2 equ 0E4Dh ;# 
# 5094 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC4GLS3 equ 0E4Eh ;# 
# 5206 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5CON equ 0E4Fh ;# 
# 5324 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5POL equ 0E50h ;# 
# 5402 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5SEL0 equ 0E51h ;# 
# 5530 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5SEL1 equ 0E52h ;# 
# 5658 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5SEL2 equ 0E53h ;# 
# 5786 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5SEL3 equ 0E54h ;# 
# 5914 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5GLS0 equ 0E55h ;# 
# 6026 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5GLS1 equ 0E56h ;# 
# 6138 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5GLS2 equ 0E57h ;# 
# 6250 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC5GLS3 equ 0E58h ;# 
# 6362 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6CON equ 0E59h ;# 
# 6480 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6POL equ 0E5Ah ;# 
# 6558 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6SEL0 equ 0E5Bh ;# 
# 6686 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6SEL1 equ 0E5Ch ;# 
# 6814 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6SEL2 equ 0E5Dh ;# 
# 6942 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6SEL3 equ 0E5Eh ;# 
# 7070 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6GLS0 equ 0E5Fh ;# 
# 7182 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6GLS1 equ 0E60h ;# 
# 7294 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6GLS2 equ 0E61h ;# 
# 7406 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC6GLS3 equ 0E62h ;# 
# 7518 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7CON equ 0E63h ;# 
# 7636 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7POL equ 0E64h ;# 
# 7714 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7SEL0 equ 0E65h ;# 
# 7842 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7SEL1 equ 0E66h ;# 
# 7970 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7SEL2 equ 0E67h ;# 
# 8098 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7SEL3 equ 0E68h ;# 
# 8226 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7GLS0 equ 0E69h ;# 
# 8338 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7GLS1 equ 0E6Ah ;# 
# 8450 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7GLS2 equ 0E6Bh ;# 
# 8562 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC7GLS3 equ 0E6Ch ;# 
# 8674 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8CON equ 0E6Dh ;# 
# 8792 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8POL equ 0E6Eh ;# 
# 8870 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8SEL0 equ 0E6Fh ;# 
# 8998 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8SEL1 equ 0E70h ;# 
# 9126 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8SEL2 equ 0E71h ;# 
# 9254 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8SEL3 equ 0E72h ;# 
# 9382 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8GLS0 equ 0E73h ;# 
# 9494 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8GLS1 equ 0E74h ;# 
# 9606 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8GLS2 equ 0E75h ;# 
# 9718 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLC8GLS3 equ 0E76h ;# 
# 9830 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLCDATA equ 0E77h ;# 
# 9892 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RX2PPS equ 0E88h ;# 
# 9897 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RXDT2PPS equ 0E88h ;# 
# 10022 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CK2PPS equ 0E89h ;# 
# 10027 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXCK2PPS equ 0E89h ;# 
# 10031 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX2PPS equ 0E89h ;# 
# 10214 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2CLKPPS equ 0E8Ah ;# 
# 10280 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2DATPPS equ 0E8Bh ;# 
# 10346 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2SSPPS equ 0E8Ch ;# 
# 10412 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2BUF equ 0E8Dh ;# 
# 10432 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2ADD equ 0E8Eh ;# 
# 10552 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2MSK equ 0E8Fh ;# 
# 10622 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2STAT equ 0E90h ;# 
# 11076 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2CON1 equ 0E91h ;# 
# 11196 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2CON2 equ 0E92h ;# 
# 11383 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP2CON3 equ 0E93h ;# 
# 11445 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC2REG equ 0E94h ;# 
# 11450 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCREG2 equ 0E94h ;# 
# 11483 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX2REG equ 0E95h ;# 
# 11488 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXREG2 equ 0E95h ;# 
# 11521 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP2BRG equ 0E96h ;# 
# 11528 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP2BRGL equ 0E96h ;# 
# 11533 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRG2 equ 0E96h ;# 
# 11566 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP2BRGH equ 0E97h ;# 
# 11571 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRGH2 equ 0E97h ;# 
# 11604 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC2STA equ 0E98h ;# 
# 11609 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCSTA2 equ 0E98h ;# 
# 11726 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX2STA equ 0E99h ;# 
# 11731 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXSTA2 equ 0E99h ;# 
# 11848 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUD2CON equ 0E9Ah ;# 
# 11853 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCON2 equ 0E9Ah ;# 
# 11857 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCTL2 equ 0E9Ah ;# 
# 11998 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PPSLOCK equ 0E9Bh ;# 
# 12018 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INT0PPS equ 0E9Ch ;# 
# 12078 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INT1PPS equ 0E9Dh ;# 
# 12138 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INT2PPS equ 0E9Eh ;# 
# 12198 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T0CKIPPS equ 0E9Fh ;# 
# 12258 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1CKIPPS equ 0EA0h ;# 
# 12324 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1GPPS equ 0EA1h ;# 
# 12390 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3CKIPPS equ 0EA2h ;# 
# 12456 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3GPPS equ 0EA3h ;# 
# 12522 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5CKIPPS equ 0EA4h ;# 
# 12588 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5GPPS equ 0EA5h ;# 
# 12654 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2INPPS equ 0EA6h ;# 
# 12720 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4INPPS equ 0EA7h ;# 
# 12786 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6INPPS equ 0EA8h ;# 
# 12852 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACTPPS equ 0EA9h ;# 
# 12918 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP1PPS equ 0EAAh ;# 
# 12984 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP2PPS equ 0EABh ;# 
# 13050 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1PPS equ 0EACh ;# 
# 13055 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWGPPS equ 0EACh ;# 
# 13059 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1INPPS equ 0EACh ;# 
# 13063 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWGINPPS equ 0EACh ;# 
# 13464 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCARLPPS equ 0EADh ;# 
# 13530 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCARHPPS equ 0EAEh ;# 
# 13596 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDSRCPPS equ 0EAFh ;# 
# 13662 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RX1PPS equ 0EB0h ;# 
# 13667 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RXPPS equ 0EB0h ;# 
# 13671 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RXDT1PPS equ 0EB0h ;# 
# 13854 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CK1PPS equ 0EB1h ;# 
# 13859 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXPPS equ 0EB1h ;# 
# 13863 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CKPPS equ 0EB1h ;# 
# 13867 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX1PPS equ 0EB1h ;# 
# 13871 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXCK1PPS equ 0EB1h ;# 
# 14170 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1CLKPPS equ 0EB2h ;# 
# 14175 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSPCLKPPS equ 0EB2h ;# 
# 14380 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1DATPPS equ 0EB3h ;# 
# 14385 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSPDATPPS equ 0EB3h ;# 
# 14590 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1SSPPS equ 0EB4h ;# 
# 14595 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSPSSPPS equ 0EB4h ;# 
# 14800 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR0 equ 0EB5h ;# 
# 14845 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR1 equ 0EB6h ;# 
# 14884 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR2 equ 0EB7h ;# 
# 14923 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR3 equ 0EB8h ;# 
# 15012 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR4 equ 0EB9h ;# 
# 15062 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR5 equ 0EBAh ;# 
# 15119 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR6 equ 0EBBh ;# 
# 15170 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IPR7 equ 0EBCh ;# 
# 15217 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE0 equ 0EBDh ;# 
# 15262 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE1 equ 0EBEh ;# 
# 15301 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE2 equ 0EBFh ;# 
# 15340 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE3 equ 0EC0h ;# 
# 15429 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE4 equ 0EC1h ;# 
# 15479 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE5 equ 0EC2h ;# 
# 15536 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE6 equ 0EC3h ;# 
# 15587 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIE7 equ 0EC4h ;# 
# 15634 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR0 equ 0EC5h ;# 
# 15679 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR1 equ 0EC6h ;# 
# 15718 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR2 equ 0EC7h ;# 
# 15757 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR3 equ 0EC8h ;# 
# 15846 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR4 equ 0EC9h ;# 
# 15896 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR5 equ 0ECAh ;# 
# 15953 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR6 equ 0ECBh ;# 
# 16004 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PIR7 equ 0ECCh ;# 
# 16051 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WDTCON0 equ 0ECDh ;# 
# 16126 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WDTCON1 equ 0ECEh ;# 
# 16220 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WDTPSL equ 0ECFh ;# 
# 16348 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WDTPSH equ 0ED0h ;# 
# 16476 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WDTTMR equ 0ED1h ;# 
# 16564 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CPUDOZE equ 0ED2h ;# 
# 16629 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCCON1 equ 0ED3h ;# 
# 16699 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCCON2 equ 0ED4h ;# 
# 16769 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCCON3 equ 0ED5h ;# 
# 16809 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCSTAT equ 0ED6h ;# 
# 16814 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCSTAT1 equ 0ED6h ;# 
# 16921 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCEN equ 0ED7h ;# 
# 16972 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCTUNE equ 0ED8h ;# 
# 17030 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCFRQ equ 0ED9h ;# 
# 17035 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
OSCFREQ equ 0ED9h ;# 
# 17120 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
VREGCON equ 0EDAh ;# 
# 17174 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BORCON equ 0EDBh ;# 
# 17201 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD0 equ 0EDCh ;# 
# 17278 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD1 equ 0EDDh ;# 
# 17342 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD2 equ 0EDEh ;# 
# 17387 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD3 equ 0EDFh ;# 
# 17449 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD4 equ 0EE0h ;# 
# 17502 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PMD5 equ 0EE1h ;# 
# 17547 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA0PPS equ 0EE2h ;# 
# 17591 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA1PPS equ 0EE3h ;# 
# 17635 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA2PPS equ 0EE4h ;# 
# 17679 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA3PPS equ 0EE5h ;# 
# 17723 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA4PPS equ 0EE6h ;# 
# 17767 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA5PPS equ 0EE7h ;# 
# 17811 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA6PPS equ 0EE8h ;# 
# 17855 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RA7PPS equ 0EE9h ;# 
# 17899 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB0PPS equ 0EEAh ;# 
# 17943 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB1PPS equ 0EEBh ;# 
# 17987 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB2PPS equ 0EECh ;# 
# 18031 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB3PPS equ 0EEDh ;# 
# 18075 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB4PPS equ 0EEEh ;# 
# 18119 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB5PPS equ 0EEFh ;# 
# 18163 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB6PPS equ 0EF0h ;# 
# 18207 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RB7PPS equ 0EF1h ;# 
# 18251 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC0PPS equ 0EF2h ;# 
# 18295 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC1PPS equ 0EF3h ;# 
# 18339 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC2PPS equ 0EF4h ;# 
# 18383 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC3PPS equ 0EF5h ;# 
# 18427 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC4PPS equ 0EF6h ;# 
# 18471 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC5PPS equ 0EF7h ;# 
# 18515 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC6PPS equ 0EF8h ;# 
# 18559 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC7PPS equ 0EF9h ;# 
# 18603 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD0PPS equ 0EFAh ;# 
# 18647 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD1PPS equ 0EFBh ;# 
# 18691 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD2PPS equ 0EFCh ;# 
# 18735 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD3PPS equ 0EFDh ;# 
# 18779 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD4PPS equ 0EFEh ;# 
# 18823 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD5PPS equ 0EFFh ;# 
# 18867 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD6PPS equ 0F00h ;# 
# 18911 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RD7PPS equ 0F01h ;# 
# 18955 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RE0PPS equ 0F02h ;# 
# 18999 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RE1PPS equ 0F03h ;# 
# 19043 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RE2PPS equ 0F04h ;# 
# 19087 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCAF equ 0F05h ;# 
# 19149 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCAN equ 0F06h ;# 
# 19211 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCAP equ 0F07h ;# 
# 19273 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INLVLA equ 0F08h ;# 
# 19335 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SLRCONA equ 0F09h ;# 
# 19397 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ODCONA equ 0F0Ah ;# 
# 19459 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WPUA equ 0F0Bh ;# 
# 19521 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ANSELA equ 0F0Ch ;# 
# 19583 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCBF equ 0F0Dh ;# 
# 19645 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCBN equ 0F0Eh ;# 
# 19707 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCBP equ 0F0Fh ;# 
# 19769 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INLVLB equ 0F10h ;# 
# 19831 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SLRCONB equ 0F11h ;# 
# 19893 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ODCONB equ 0F12h ;# 
# 19955 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WPUB equ 0F13h ;# 
# 20017 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ANSELB equ 0F14h ;# 
# 20079 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCCF equ 0F15h ;# 
# 20141 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCCN equ 0F16h ;# 
# 20203 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCCP equ 0F17h ;# 
# 20265 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INLVLC equ 0F18h ;# 
# 20327 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SLRCONC equ 0F19h ;# 
# 20389 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ODCONC equ 0F1Ah ;# 
# 20451 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WPUC equ 0F1Bh ;# 
# 20513 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ANSELC equ 0F1Ch ;# 
# 20575 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INLVLD equ 0F1Dh ;# 
# 20637 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SLRCOND equ 0F1Eh ;# 
# 20699 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ODCOND equ 0F1Fh ;# 
# 20761 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WPUD equ 0F20h ;# 
# 20823 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ANSELD equ 0F21h ;# 
# 20885 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCEF equ 0F22h ;# 
# 20906 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCEN equ 0F23h ;# 
# 20927 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
IOCEP equ 0F24h ;# 
# 20948 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INLVLE equ 0F25h ;# 
# 20986 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SLRCONE equ 0F26h ;# 
# 21018 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ODCONE equ 0F27h ;# 
# 21050 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WPUE equ 0F28h ;# 
# 21088 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ANSELE equ 0F29h ;# 
# 21120 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
HLVDCON0 equ 0F2Ah ;# 
# 21200 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
HLVDCON1 equ 0F2Bh ;# 
# 21272 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FVRCON equ 0F2Ch ;# 
# 21361 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ZCDCON equ 0F2Dh ;# 
# 21441 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DAC1CON0 equ 0F2Eh ;# 
# 21542 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DAC1CON1 equ 0F2Fh ;# 
# 21594 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM2CON0 equ 0F30h ;# 
# 21674 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM2CON1 equ 0F31h ;# 
# 21714 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM2NCH equ 0F32h ;# 
# 21774 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM2PCH equ 0F33h ;# 
# 21834 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM1CON0 equ 0F34h ;# 
# 21914 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM1CON1 equ 0F35h ;# 
# 21954 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM1NCH equ 0F36h ;# 
# 22014 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CM1PCH equ 0F37h ;# 
# 22074 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CMOUT equ 0F38h ;# 
# 22100 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLKRCON equ 0F39h ;# 
# 22204 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CLKRCLK equ 0F3Ah ;# 
# 22264 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1CLK equ 0F3Bh ;# 
# 22269 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1CLKCON equ 0F3Bh ;# 
# 22318 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1ISM equ 0F3Ch ;# 
# 22370 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1DBR equ 0F3Dh ;# 
# 22474 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1DBF equ 0F3Eh ;# 
# 22578 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1CON0 equ 0F3Fh ;# 
# 22679 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1CON1 equ 0F40h ;# 
# 22757 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1AS0 equ 0F41h ;# 
# 22877 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1AS1 equ 0F42h ;# 
# 22927 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CWG1STR equ 0F43h ;# 
# 23041 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANLADR equ 0F44h ;# 
# 23048 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANLADRL equ 0F44h ;# 
# 23176 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANLADRH equ 0F45h ;# 
# 23304 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANLADRU equ 0F46h ;# 
# 23410 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANHADR equ 0F47h ;# 
# 23417 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANHADRL equ 0F47h ;# 
# 23545 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANHADRH equ 0F48h ;# 
# 23673 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANHADRU equ 0F49h ;# 
# 23777 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANCON0 equ 0F4Ah ;# 
# 23904 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SCANTRIG equ 0F4Bh ;# 
# 23984 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCON0 equ 0F4Ch ;# 
# 24052 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCON1 equ 0F4Dh ;# 
# 24118 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDSRC equ 0F4Eh ;# 
# 24198 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCARL equ 0F4Fh ;# 
# 24266 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
MDCARH equ 0F50h ;# 
# 24334 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACT equ 0F51h ;# 
# 24386 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCLK equ 0F52h ;# 
# 24444 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADREF equ 0F53h ;# 
# 24485 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCON1 equ 0F54h ;# 
# 24524 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCON2 equ 0F55h ;# 
# 24601 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCON3 equ 0F56h ;# 
# 24672 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACQ equ 0F57h ;# 
# 24742 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCAP equ 0F58h ;# 
# 24794 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADPRE equ 0F59h ;# 
# 24864 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADPCH equ 0F5Ah ;# 
# 24922 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCON0 equ 0F5Bh ;# 
# 25017 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADPREV equ 0F5Ch ;# 
# 25024 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADPREVL equ 0F5Ch ;# 
# 25094 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADPREVH equ 0F5Dh ;# 
# 25164 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADRES equ 0F5Eh ;# 
# 25171 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADRESL equ 0F5Eh ;# 
# 25241 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADRESH equ 0F5Fh ;# 
# 25303 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADSTAT equ 0F60h ;# 
# 25368 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADRPT equ 0F61h ;# 
# 25438 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADCNT equ 0F62h ;# 
# 25508 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADSTPT equ 0F63h ;# 
# 25515 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADSTPTL equ 0F63h ;# 
# 25585 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADSTPTH equ 0F64h ;# 
# 25655 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADLTH equ 0F65h ;# 
# 25662 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADLTHL equ 0F65h ;# 
# 25732 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADLTHH equ 0F66h ;# 
# 25802 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADUTH equ 0F67h ;# 
# 25809 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADUTHL equ 0F67h ;# 
# 25879 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADUTHH equ 0F68h ;# 
# 25949 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADERR equ 0F69h ;# 
# 25956 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADERRL equ 0F69h ;# 
# 26026 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADERRH equ 0F6Ah ;# 
# 26096 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACC equ 0F6Bh ;# 
# 26103 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACCL equ 0F6Bh ;# 
# 26173 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADACCH equ 0F6Ch ;# 
# 26243 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADFLTR equ 0F6Dh ;# 
# 26250 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADFLTRL equ 0F6Dh ;# 
# 26320 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
ADFLTRH equ 0F6Eh ;# 
# 26390 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCDATA equ 0F6Fh ;# 
# 26397 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCDATL equ 0F6Fh ;# 
# 26459 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCDATH equ 0F70h ;# 
# 26521 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCACC equ 0F71h ;# 
# 26528 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCACCL equ 0F71h ;# 
# 26590 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCACCH equ 0F72h ;# 
# 26652 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCSHFT equ 0F73h ;# 
# 26659 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCSHIFTL equ 0F73h ;# 
# 26721 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCSHIFTH equ 0F74h ;# 
# 26783 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCXOR equ 0F75h ;# 
# 26790 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCXORL equ 0F75h ;# 
# 26847 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCXORH equ 0F76h ;# 
# 26909 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCCON0 equ 0F77h ;# 
# 26969 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CRCCON1 equ 0F78h ;# 
# 27047 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMADR equ 0F79h ;# 
# 27054 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMADRL equ 0F79h ;# 
# 27124 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMADRH equ 0F7Ah ;# 
# 27194 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMADRU equ 0F7Bh ;# 
# 27252 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMDAT equ 0F7Ch ;# 
# 27259 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMDATL equ 0F7Ch ;# 
# 27329 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMDATH equ 0F7Dh ;# 
# 27399 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMCON0 equ 0F7Fh ;# 
# 27427 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMCON1 equ 0F80h ;# 
# 27472 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
NVMCON2 equ 0F81h ;# 
# 27492 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
LATA equ 0F82h ;# 
# 27554 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
LATB equ 0F83h ;# 
# 27616 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
LATC equ 0F84h ;# 
# 27678 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
LATD equ 0F85h ;# 
# 27740 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
LATE equ 0F86h ;# 
# 27772 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TRISA equ 0F87h ;# 
# 27777 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DDRA equ 0F87h ;# 
# 27894 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TRISB equ 0F88h ;# 
# 27899 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DDRB equ 0F88h ;# 
# 28016 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TRISC equ 0F89h ;# 
# 28021 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DDRC equ 0F89h ;# 
# 28138 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TRISD equ 0F8Ah ;# 
# 28143 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DDRD equ 0F8Ah ;# 
# 28260 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TRISE equ 0F8Bh ;# 
# 28265 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
DDRE equ 0F8Bh ;# 
# 28322 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PORTA equ 0F8Ch ;# 
# 28384 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PORTB equ 0F8Dh ;# 
# 28446 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PORTC equ 0F8Eh ;# 
# 28508 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PORTD equ 0F8Fh ;# 
# 28570 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PORTE equ 0F90h ;# 
# 28608 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1BUF equ 0F91h ;# 
# 28628 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1ADD equ 0F92h ;# 
# 28748 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1MSK equ 0F93h ;# 
# 28818 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1STAT equ 0F94h ;# 
# 29272 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1CON1 equ 0F95h ;# 
# 29392 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1CON2 equ 0F96h ;# 
# 29579 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SSP1CON3 equ 0F97h ;# 
# 29641 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC1REG equ 0F98h ;# 
# 29646 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCREG equ 0F98h ;# 
# 29650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCREG1 equ 0F98h ;# 
# 29695 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX1REG equ 0F99h ;# 
# 29700 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXREG1 equ 0F99h ;# 
# 29704 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXREG equ 0F99h ;# 
# 29749 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP1BRG equ 0F9Ah ;# 
# 29754 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRG equ 0F9Ah ;# 
# 29761 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP1BRGL equ 0F9Ah ;# 
# 29766 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRG1 equ 0F9Ah ;# 
# 29770 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRGL equ 0F9Ah ;# 
# 29815 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SP1BRGH equ 0F9Bh ;# 
# 29820 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRGH equ 0F9Bh ;# 
# 29824 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
SPBRGH1 equ 0F9Bh ;# 
# 29869 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RC1STA equ 0F9Ch ;# 
# 29874 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCSTA1 equ 0F9Ch ;# 
# 29878 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
RCSTA equ 0F9Ch ;# 
# 30049 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TX1STA equ 0F9Dh ;# 
# 30054 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXSTA1 equ 0F9Dh ;# 
# 30058 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TXSTA equ 0F9Dh ;# 
# 30229 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUD1CON equ 0F9Eh ;# 
# 30234 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCON1 equ 0F9Eh ;# 
# 30238 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCTL1 equ 0F9Eh ;# 
# 30242 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCON equ 0F9Eh ;# 
# 30246 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BAUDCTL equ 0F9Eh ;# 
# 30475 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM4DC equ 0F9Fh ;# 
# 30482 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM4DCL equ 0F9Fh ;# 
# 30548 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM4DCH equ 0FA0h ;# 
# 30718 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM4CON equ 0FA1h ;# 
# 30774 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM3DC equ 0FA2h ;# 
# 30781 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM3DCL equ 0FA2h ;# 
# 30847 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM3DCH equ 0FA3h ;# 
# 31017 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PWM3CON equ 0FA4h ;# 
# 31073 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR2 equ 0FA5h ;# 
# 31080 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR2L equ 0FA5h ;# 
# 31100 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR2H equ 0FA6h ;# 
# 31120 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP2CON equ 0FA7h ;# 
# 31238 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP2CAP equ 0FA8h ;# 
# 31294 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR1 equ 0FA9h ;# 
# 31301 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR1L equ 0FA9h ;# 
# 31321 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPR1H equ 0FAAh ;# 
# 31341 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP1CON equ 0FABh ;# 
# 31459 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCP1CAP equ 0FACh ;# 
# 31515 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
CCPTMRS equ 0FADh ;# 
# 31603 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6TMR equ 0FAEh ;# 
# 31608 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR6 equ 0FAEh ;# 
# 31641 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6PR equ 0FAFh ;# 
# 31646 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR6 equ 0FAFh ;# 
# 31679 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6CON equ 0FB0h ;# 
# 31825 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6HLT equ 0FB1h ;# 
# 31953 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6CLKCON equ 0FB2h ;# 
# 31958 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6CLK equ 0FB2h ;# 
# 32111 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T6RST equ 0FB3h ;# 
# 32203 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4TMR equ 0FB4h ;# 
# 32208 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR4 equ 0FB4h ;# 
# 32241 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4PR equ 0FB5h ;# 
# 32246 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR4 equ 0FB5h ;# 
# 32279 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4CON equ 0FB6h ;# 
# 32425 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4HLT equ 0FB7h ;# 
# 32553 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4CLKCON equ 0FB8h ;# 
# 32558 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4CLK equ 0FB8h ;# 
# 32711 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T4RST equ 0FB9h ;# 
# 32803 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2TMR equ 0FBAh ;# 
# 32808 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR2 equ 0FBAh ;# 
# 32841 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2PR equ 0FBBh ;# 
# 32846 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR2 equ 0FBBh ;# 
# 32879 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2CON equ 0FBCh ;# 
# 33025 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2HLT equ 0FBDh ;# 
# 33153 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2CLKCON equ 0FBEh ;# 
# 33158 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2CLK equ 0FBEh ;# 
# 33311 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T2RST equ 0FBFh ;# 
# 33403 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5 equ 0FC0h ;# 
# 33410 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5L equ 0FC0h ;# 
# 33530 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5H equ 0FC1h ;# 
# 33650 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5CON equ 0FC2h ;# 
# 33655 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5CON equ 0FC2h ;# 
# 33872 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5GCON equ 0FC3h ;# 
# 33877 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5GCON equ 0FC3h ;# 
# 34158 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5GATE equ 0FC4h ;# 
# 34163 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5GATE equ 0FC4h ;# 
# 34324 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T5CLK equ 0FC5h ;# 
# 34329 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR5CLK equ 0FC5h ;# 
# 34333 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR5 equ 0FC5h ;# 
# 34570 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3 equ 0FC6h ;# 
# 34577 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3L equ 0FC6h ;# 
# 34697 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3H equ 0FC7h ;# 
# 34817 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3CON equ 0FC8h ;# 
# 34822 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3CON equ 0FC8h ;# 
# 35039 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3GCON equ 0FC9h ;# 
# 35044 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3GCON equ 0FC9h ;# 
# 35325 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3GATE equ 0FCAh ;# 
# 35330 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3GATE equ 0FCAh ;# 
# 35491 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T3CLK equ 0FCBh ;# 
# 35496 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR3CLK equ 0FCBh ;# 
# 35500 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR3 equ 0FCBh ;# 
# 35737 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1 equ 0FCCh ;# 
# 35744 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1L equ 0FCCh ;# 
# 35864 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1H equ 0FCDh ;# 
# 35984 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1CON equ 0FCEh ;# 
# 35989 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1CON equ 0FCEh ;# 
# 36206 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1GCON equ 0FCFh ;# 
# 36211 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1GCON equ 0FCFh ;# 
# 36492 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1GATE equ 0FD0h ;# 
# 36497 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1GATE equ 0FD0h ;# 
# 36658 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T1CLK equ 0FD1h ;# 
# 36663 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR1CLK equ 0FD1h ;# 
# 36667 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR1 equ 0FD1h ;# 
# 36904 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR0L equ 0FD2h ;# 
# 36909 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR0 equ 0FD2h ;# 
# 37042 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TMR0H equ 0FD3h ;# 
# 37047 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PR0 equ 0FD3h ;# 
# 37296 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T0CON0 equ 0FD4h ;# 
# 37361 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
T0CON1 equ 0FD5h ;# 
# 37472 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCON1 equ 0FD6h ;# 
# 37531 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCON0 equ 0FD7h ;# 
# 37684 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
STATUS equ 0FD8h ;# 
# 37773 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR2 equ 0FD9h ;# 
# 37780 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR2L equ 0FD9h ;# 
# 37800 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR2H equ 0FDAh ;# 
# 37807 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PLUSW2 equ 0FDBh ;# 
# 37827 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PREINC2 equ 0FDCh ;# 
# 37847 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTDEC2 equ 0FDDh ;# 
# 37867 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTINC2 equ 0FDEh ;# 
# 37887 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INDF2 equ 0FDFh ;# 
# 37907 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
BSR equ 0FE0h ;# 
# 37914 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR1 equ 0FE1h ;# 
# 37921 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR1L equ 0FE1h ;# 
# 37941 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR1H equ 0FE2h ;# 
# 37948 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PLUSW1 equ 0FE3h ;# 
# 37968 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PREINC1 equ 0FE4h ;# 
# 37988 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTDEC1 equ 0FE5h ;# 
# 38008 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTINC1 equ 0FE6h ;# 
# 38028 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INDF1 equ 0FE7h ;# 
# 38048 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
WREG equ 0FE8h ;# 
# 38086 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR0 equ 0FE9h ;# 
# 38093 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR0L equ 0FE9h ;# 
# 38113 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
FSR0H equ 0FEAh ;# 
# 38120 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PLUSW0 equ 0FEBh ;# 
# 38140 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PREINC0 equ 0FECh ;# 
# 38160 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTDEC0 equ 0FEDh ;# 
# 38180 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
POSTINC0 equ 0FEEh ;# 
# 38200 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INDF0 equ 0FEFh ;# 
# 38220 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
INTCON equ 0FF2h ;# 
# 38301 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PROD equ 0FF3h ;# 
# 38308 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PRODL equ 0FF3h ;# 
# 38328 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PRODH equ 0FF4h ;# 
# 38348 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TABLAT equ 0FF5h ;# 
# 38370 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TBLPTR equ 0FF6h ;# 
# 38377 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TBLPTRL equ 0FF6h ;# 
# 38397 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TBLPTRH equ 0FF7h ;# 
# 38417 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TBLPTRU equ 0FF8h ;# 
# 38439 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCLAT equ 0FF9h ;# 
# 38446 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCL equ 0FF9h ;# 
# 38466 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCLATH equ 0FFAh ;# 
# 38486 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
PCLATU equ 0FFBh ;# 
# 38506 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
STKPTR equ 0FFCh ;# 
# 38604 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TOS equ 0FFDh ;# 
# 38611 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TOSL equ 0FFDh ;# 
# 38631 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TOSH equ 0FFEh ;# 
# 38651 "/opt/microchip/xc8/v2.46/pic/include/proc/pic18f47q10.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_test_routine
	FNCALL	_test_routine,_alternate
	FNCALL	_test_routine,_counter
	FNCALL	_test_routine,_sequential_blink
	FNCALL	_sequential_blink,_set_lata
	FNCALL	_counter,_set_lata
	FNCALL	_alternate,_set_lata
	FNROOT	_main
	global	sequential_blink@F12917
	global	alternate@F12922
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"src/main.c"
	line	26

;initializer for sequential_blink@F12917
	db	low(010h)
	db	low(020h)
	db	low(040h)
	db	low(080h)
	line	40

;initializer for alternate@F12922
	db	low(05h)
	db	low(0Ah)
	global	_LATAbits
_LATAbits	set	0xF82
	global	_OSCCON1bits
_OSCCON1bits	set	0xED3
	global	_ANSELA
_ANSELA	set	0xF0C
	global	_LATA
_LATA	set	0xF82
	global	_TRISA
_TRISA	set	0xF87
	global	_OSCFRQbits
_OSCFRQbits	set	0xED9
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "OFF"
	config RSTOSC = "HFINTOSC_1MHZ"
	config MCLRE = "EXTMCLR"
	config WDTE = "OFF"
	file	"build/output.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"src/main.c"
	line	26
sequential_blink@F12917:
       ds      4
psect	dataCOMRAM
	file	"src/main.c"
	line	40
alternate@F12922:
       ds      2
	file	"build/output.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (6 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,6
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_set_lata:	; 1 bytes @ 0x0
??_set_lata:	; 1 bytes @ 0x0
?_sequential_blink:	; 1 bytes @ 0x0
?_alternate:	; 1 bytes @ 0x0
?_counter:	; 1 bytes @ 0x0
?_test_routine:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	set_lata@pins
set_lata@pins:	; 1 bytes @ 0x0
	ds   1
??_sequential_blink:	; 1 bytes @ 0x1
??_alternate:	; 1 bytes @ 0x1
??_counter:	; 1 bytes @ 0x1
	ds   2
	global	counter@x
counter@x:	; 1 bytes @ 0x3
	global	alternate@vals
alternate@vals:	; 2 bytes @ 0x3
	global	sequential_blink@leds
sequential_blink@leds:	; 4 bytes @ 0x3
	ds   2
	global	alternate@x
alternate@x:	; 2 bytes @ 0x5
	ds   2
	global	sequential_blink@i
sequential_blink@i:	; 2 bytes @ 0x7
	ds   2
	global	sequential_blink@i_114
sequential_blink@i_114:	; 2 bytes @ 0x9
	ds   2
??_test_routine:	; 1 bytes @ 0xB
	global	test_routine@i
test_routine@i:	; 2 bytes @ 0xB
	ds   2
??_main:	; 1 bytes @ 0xD
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        6
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     13      19
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK14           31      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_test_routine
;!    _test_routine->_sequential_blink
;!    _sequential_blink->_set_lata
;!    _counter->_set_lata
;!    _alternate->_set_lata
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     330
;!                       _test_routine
;! ---------------------------------------------------------------------------------
;! (1) _test_routine                                         2     2      0     330
;!                                             11 COMRAM     2     2      0
;!                          _alternate
;!                            _counter
;!                   _sequential_blink
;! ---------------------------------------------------------------------------------
;! (2) _sequential_blink                                    10    10      0     135
;!                                              1 COMRAM    10    10      0
;!                           _set_lata
;! ---------------------------------------------------------------------------------
;! (2) _counter                                              3     3      0      60
;!                                              1 COMRAM     3     3      0
;!                           _set_lata
;! ---------------------------------------------------------------------------------
;! (2) _alternate                                            6     6      0      75
;!                                              1 COMRAM     6     6      0
;!                           _set_lata
;! ---------------------------------------------------------------------------------
;! (3) _set_lata                                             1     1      0      15
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _test_routine
;!     _alternate
;!       _set_lata
;!     _counter
;!       _set_lata
;!     _sequential_blink
;!       _set_lata
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             CFF      0       0      41        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBIGSFR          100      0       0      38        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBIGSFR_1lll      B4      0       0      37        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBIGSFR_1hh       78      0       0      32        0.0%
;!BITBIGSFR_1lh       75      0       0      34        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F      D      13       1       20.0%
;!BITBIGSFR_1llhh     32      0       0      35        0.0%
;!BITBANK14           1F      0       0      30        0.0%
;!BANK14              1F      0       0      31        0.0%
;!BIGRAM_1            1F      0       0      40        0.0%
;!BITBIGSFR_1llhl      5      0       0      36        0.0%
;!BITBIGSFR_1hl        4      0       0      33        0.0%
;!BIGSFR_1             0      0       0     200        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      13      39        0.0%
;!DATA                 0      0      13       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 69 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_test_routine
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	69
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	69
	
_main:
;incstack = 0
	callstack 28
	line	71
	
l817:
	movlw	low(0)
	movwf	((c:3975))^0f00h,c	;volatile
	line	74
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3852))&0ffh	;volatile
	line	76
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	movlb	14	; () banked
	andwf	((3795))&0ffh	;volatile
	line	77
	movf	((3795))&0ffh,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(06h & ((1<<3)-1))<<4
	movwf	((3795))&0ffh	;volatile
	line	78
	movf	((3801))&0ffh,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(03h & ((1<<4)-1))<<0
	movwf	((3801))&0ffh	;volatile
	line	80
	
l819:; BSR set to: 14

	bcf	((c:3970))^0f00h,c,4	;volatile
	line	81
	
l821:; BSR set to: 14

	bcf	((c:3970))^0f00h,c,5	;volatile
	line	82
	
l823:; BSR set to: 14

	bcf	((c:3970))^0f00h,c,6	;volatile
	line	83
	
l825:; BSR set to: 14

	bcf	((c:3970))^0f00h,c,7	;volatile
	line	87
	
l827:
	call	_test_routine	;wreg free
	goto	l827
	global	start
	goto	start
	callstack 0
	line	90
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_test_routine

;; *************** function _test_routine *****************
;; Defined at:
;;		line 57 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_alternate
;;		_counter
;;		_sequential_blink
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	57
global __ptext1
__ptext1:
psect	text1
	file	"src/main.c"
	line	57
	
_test_routine:
;incstack = 0
	callstack 28
	line	60
	
l791:
	movlw	high(0)
	movwf	((c:test_routine@i+1))^00h,c
	movlw	low(0)
	movwf	((c:test_routine@i))^00h,c
	line	61
	
l797:
	call	_sequential_blink	;wreg free
	
l799:
	infsnz	((c:test_routine@i))^00h,c
	incf	((c:test_routine@i+1))^00h,c
	
l801:
	btfsc	((c:test_routine@i+1))^00h,c,7
	goto	u51
	movf	((c:test_routine@i+1))^00h,c,w
	bnz	u50
	movlw	6
	subwf	 ((c:test_routine@i))^00h,c,w
	btfss	status,0
	goto	u51
	goto	u50

u51:
	goto	l797
u50:
	line	63
	
l803:
	movlw	high(0)
	movwf	((c:test_routine@i+1))^00h,c
	movlw	low(0)
	movwf	((c:test_routine@i))^00h,c
	line	64
	
l809:
	call	_alternate	;wreg free
	
l811:
	infsnz	((c:test_routine@i))^00h,c
	incf	((c:test_routine@i+1))^00h,c
	
l813:
	btfsc	((c:test_routine@i+1))^00h,c,7
	goto	u61
	movf	((c:test_routine@i+1))^00h,c,w
	bnz	u60
	movlw	8
	subwf	 ((c:test_routine@i))^00h,c,w
	btfss	status,0
	goto	u61
	goto	u60

u61:
	goto	l809
u60:
	line	66
	
l815:
	call	_counter	;wreg free
	line	67
	
l45:
	return	;funcret
	callstack 0
GLOBAL	__end_of_test_routine
	__end_of_test_routine:
	signat	_test_routine,89
	global	_sequential_blink

;; *************** function _sequential_blink *****************
;; Defined at:
;;		line 25 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMRAM] int 
;;  i               2    7[COMRAM] int 
;;  leds            4    3[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_set_lata
;; This function is called by:
;;		_test_routine
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	25
global __ptext2
__ptext2:
psect	text2
	file	"src/main.c"
	line	25
	
_sequential_blink:
;incstack = 0
	callstack 28
	line	27
	
l731:
	movff	(c:sequential_blink@F12917),(c:sequential_blink@leds)
	movff	(c:sequential_blink@F12917+1),(c:sequential_blink@leds+1)
	movff	(c:sequential_blink@F12917+2),(c:sequential_blink@leds+2)
	movff	(c:sequential_blink@F12917+3),(c:sequential_blink@leds+3)
	line	29
	
l733:
	movlw	high(0)
	movwf	((c:sequential_blink@i+1))^00h,c
	movlw	low(0)
	movwf	((c:sequential_blink@i))^00h,c
	line	30
	
l739:
	movf	((c:sequential_blink@i))^00h,c,w
	addlw	low(sequential_blink@leds)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_set_lata
	line	31
	
l741:
	asmopt push
asmopt off
movlw  2
movwf	(??_sequential_blink+0+0+1)^00h,c
movlw	4
movwf	(??_sequential_blink+0+0)^00h,c
	movlw	186
u77:
decfsz	wreg,f
	bra	u77
	decfsz	(??_sequential_blink+0+0)^00h,c,f
	bra	u77
	decfsz	(??_sequential_blink+0+0+1)^00h,c,f
	bra	u77
	nop2
asmopt pop

	line	32
	
l743:
	infsnz	((c:sequential_blink@i))^00h,c
	incf	((c:sequential_blink@i+1))^00h,c
	
l745:
	btfsc	((c:sequential_blink@i+1))^00h,c,7
	goto	u11
	movf	((c:sequential_blink@i+1))^00h,c,w
	bnz	u10
	movlw	4
	subwf	 ((c:sequential_blink@i))^00h,c,w
	btfss	status,0
	goto	u11
	goto	u10

u11:
	goto	l739
u10:
	line	33
	
l747:
	movlw	high(03h)
	movwf	((c:sequential_blink@i_114+1))^00h,c
	movlw	low(03h)
	movwf	((c:sequential_blink@i_114))^00h,c
	line	34
	
l753:
	movf	((c:sequential_blink@i_114))^00h,c,w
	addlw	low(sequential_blink@leds)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_set_lata
	line	35
	
l755:
	asmopt push
asmopt off
movlw  2
movwf	(??_sequential_blink+0+0+1)^00h,c
movlw	4
movwf	(??_sequential_blink+0+0)^00h,c
	movlw	186
u87:
decfsz	wreg,f
	bra	u87
	decfsz	(??_sequential_blink+0+0)^00h,c,f
	bra	u87
	decfsz	(??_sequential_blink+0+0+1)^00h,c,f
	bra	u87
	nop2
asmopt pop

	line	36
	
l757:
	decf	((c:sequential_blink@i_114))^00h,c
	btfss	status,0
	decf	((c:sequential_blink@i_114+1))^00h,c
	
l759:
	btfsc	((c:sequential_blink@i_114+1))^00h,c,7
	goto	u20
	goto	u21

u21:
	goto	l753
u20:
	line	37
	
l26:
	return	;funcret
	callstack 0
GLOBAL	__end_of_sequential_blink
	__end_of_sequential_blink:
	signat	_sequential_blink,89
	global	_counter

;; *************** function _counter *****************
;; Defined at:
;;		line 49 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_set_lata
;; This function is called by:
;;		_test_routine
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	49
global __ptext3
__ptext3:
psect	text3
	file	"src/main.c"
	line	49
	
_counter:
;incstack = 0
	callstack 28
	line	51
	
l777:
	movlw	low(0)
	movwf	((c:counter@x))^00h,c
	line	52
	
l783:
	swapf	((c:counter@x))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	
	call	_set_lata
	line	53
	
l785:
	asmopt push
asmopt off
movlw  3
movwf	(??_counter+0+0+1)^00h,c
movlw	138
movwf	(??_counter+0+0)^00h,c
	movlw	86
u97:
decfsz	wreg,f
	bra	u97
	decfsz	(??_counter+0+0)^00h,c,f
	bra	u97
	decfsz	(??_counter+0+0+1)^00h,c,f
	bra	u97
asmopt pop

	line	54
	
l787:
	incf	((c:counter@x))^00h,c
	
l789:
		movlw	010h-1
	cpfsgt	((c:counter@x))^00h,c
	goto	u41
	goto	u40

u41:
	goto	l783
u40:
	line	55
	
l38:
	return	;funcret
	callstack 0
GLOBAL	__end_of_counter
	__end_of_counter:
	signat	_counter,89
	global	_alternate

;; *************** function _alternate *****************
;; Defined at:
;;		line 39 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    5[COMRAM] int 
;;  vals            2    3[COMRAM] unsigned char [2]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_set_lata
;; This function is called by:
;;		_test_routine
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	39
global __ptext4
__ptext4:
psect	text4
	file	"src/main.c"
	line	39
	
_alternate:
;incstack = 0
	callstack 28
	line	41
	
l761:
	movff	(c:alternate@F12922),(c:alternate@vals)
	movff	(c:alternate@F12922+1),(c:alternate@vals+1)
	line	42
	
l763:
	movlw	high(0)
	movwf	((c:alternate@x+1))^00h,c
	movlw	low(0)
	movwf	((c:alternate@x))^00h,c
	line	44
	
l769:
	asmopt push
asmopt off
movlw  3
movwf	(??_alternate+0+0+1)^00h,c
movlw	8
movwf	(??_alternate+0+0)^00h,c
	movlw	119
u107:
decfsz	wreg,f
	bra	u107
	decfsz	(??_alternate+0+0)^00h,c,f
	bra	u107
	decfsz	(??_alternate+0+0+1)^00h,c,f
	bra	u107
	nop
asmopt pop

	line	45
	
l771:
	movf	((c:alternate@x))^00h,c,w
	addlw	low(alternate@vals)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_alternate+0+0)^00h,c
	swapf	((??_alternate+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	
	call	_set_lata
	line	46
	
l773:
	infsnz	((c:alternate@x))^00h,c
	incf	((c:alternate@x+1))^00h,c
	
l775:
	btfsc	((c:alternate@x+1))^00h,c,7
	goto	u31
	movf	((c:alternate@x+1))^00h,c,w
	bnz	u30
	movlw	2
	subwf	 ((c:alternate@x))^00h,c,w
	btfss	status,0
	goto	u31
	goto	u30

u31:
	goto	l769
u30:
	line	47
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_alternate
	__end_of_alternate:
	signat	_alternate,89
	global	_set_lata

;; *************** function _set_lata *****************
;; Defined at:
;;		line 20 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;  pins            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pins            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sequential_blink
;;		_alternate
;;		_counter
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	20
global __ptext5
__ptext5:
psect	text5
	file	"src/main.c"
	line	20
	
_set_lata:
;incstack = 0
	callstack 28
	movwf	((c:set_lata@pins))^00h,c
	line	22
	
l729:
	movff	(c:set_lata@pins),(c:3970)	;volatile
	line	23
	
l17:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_lata
	__end_of_set_lata:
	signat	_set_lata,4217
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
