# PIC18F47Q10 LED Test - Curiosity HPC

Simple LED control demonstration for the Microchip Curiosity HPC development board, built using XC8 compiler and Emacs as the development environment.

## Overview
This project implements a basic LED test routine for the PIC18F47Q10 microcontroller, demonstrating:
- Direct hardware register manipulation
- Bit manipulation techniques  
- Custom build toolchain setup outside of MPLAB IDE

## Hardware
- **Board:** Microchip Curiosity High Pin Count (HPC) Development Board
- **MCU:** PIC18F47Q10
- **LEDs:** Onboard LEDs connected to PORTA

## Build Environment
- **Compiler:** XC8 v2.46
- **Editor:** Emacs with custom build integration
- **Programming:** MPLAB IPE command line tools

## Building
```bash
./build.sh
