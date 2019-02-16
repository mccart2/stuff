
	 .include "m328Pdef.inc"
	 .ORG 0000
	 
	 
LDI R23,0 ; This will stay zero

	 // The next 3 registers hold the 24 bit value we are multiplying
	 LDI R20,0 ; These will hold values of result
	 LDI R19,0 // Load Immediate value of 0 into R20
	 LDI R18,0 // Load Immediate value of 0 into R20
	
	 //The next two are the multiplicand 
	 LDI R25,0xFF //Load immediate value into R25
	 LDI R24,0xFF //Load immediate value into R24
	
	 // This next value holds our multiplier
	 LDI R22,0xFF//Load immediate value into R22

		MUL R24, R22 // Multiplies R22 and R24 and places the reuslt into R24
		ADD R18, R0  // Adds the value from R18 and R0
		ADC R19, R1  // Add w/ carry the value from R1 to R19

		MUL R25,R22  // Multiplies R22 by R25 and puts the result in R25
		ADD R19, R0  // Adds the value from R19 and R0
		ADC R20, R1  // Add w/ carry the value from R1 to R20
		Done: jmp Done*/