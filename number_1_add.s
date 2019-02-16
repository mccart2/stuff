/*
 * AssemblerApplication4.asm
 *
 *  Created: 2/15/2019 6:24:23 PM
 *   Author: mccart2
 */ 


 

	 .include "m328Pdef.inc"
	 .ORG 0000

	 LDI R23,0 // Load Immediate value of 0 into R23
	 // The next 3 registers hold the 24 bit value we are multiplying
	 LDI R20,0 // Load Immediate value of 0 into R20
	 LDI R19,0 // Load Immediate value of 0 into R19
	 LDI R18,0 // Load Immediate value of 0 into R18
	 
	 //The next two are the multiplicand
	 LDI R25,0xFF //Load immediate value into R25
	 LDI R24,0xFF //Load immediate value into R24

	 // This next value holds our multiplier
	 LDI R22,0xFF//Load immediate value into R22


	 // This is our main loop to take care of all the adding
	loop: // Label for our loop
		
		// This is where the actual adding take places.
		ADD R18,R24  // Add value from our multiplicand into the rightmost of our three  registers
		ADC R19,R25 // Add and carry from our multiplicand and the middle of the three recieving registers
		ADC R20,R23 // Adds the resultant carry to the final position of the alloted registers
		
		//Loop tools
		dec R22 // Decrementer for R22 which controls how many times we loop
		brne loop // Branch Statement
	Done: jmp Done // Done statement

