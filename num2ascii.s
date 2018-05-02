				area num2ascii_code, code 
				export	num2ascii 
				entry 
 ;------------------------------------ 
num2ascii proc 
 				stmfd  sp!,{r0-r7, lr} 
;------------------------------------ 
 				ldr r0, [sp, #36] ; load the hex number from the stack 
				ldr r1, =ascii_table
;------------------------------------ 
				and r2, r0, #0x0000000F
				ldrb r3, [r1, r2]
				lsl r3, r3, #8
				and r2, r0, #0x000000F0
				lsr r2, r2, #4
				ldrb r2, [r1, r2]
				add r3, r3, r2
				lsl r3, r3, #8
				and r2, r0, #0x00000F00
				lsr r2, r2, #8
				ldrb r2, [r1, r2]
				add r3, r3, r2 
				lsl r3, r3, #8
				and r2, r0, #0x0000F000
				lsr r2, r2, #12
				ldrb r2, [r1, r2]
				add r3, r3, r2
				str r3, [sp, #36]
				ldmfd sp!,{r0-r7, pc};
ascii_table ; table for hexnumber to ascii 
				dcb 0x30 ;0 
				dcb 0x31;1 
				dcb 0x32;2 
				dcb 0x33;3 
				dcb 0x34;4 
				dcb 0x35;5 
				dcb 0x36;6 
				dcb 0x37;7 
				dcb 0x38;8 
				dcb 0x39;9 
				dcb 0x41;A 
				dcb 0x42;B 
				dcb 0x43;C 
				dcb 0x44;D 
				dcb 0x45;E 
				dcb 0x46;F 
				align
				endp
				area asc_table
				end
