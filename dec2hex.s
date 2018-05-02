				area dec2hex_code, code 
				export	dec2hex 
				entry 
 ;------------------------------------ 
dec2hex proc 
 				stmfd  sp!,{r0-r7, lr} 
 				ldr r5, [sp, #40] ; load the hex number from the stack 
;------------------------------------ 
				ldr r7, =4096
				
				endp
				end
