; Filename : ascii2num.s 
; Date : 18. April, 2018
; input :  
;
					area 	ascii2num_code, code 
					export 	ascii2num 
					entry 
 ;------------------------------------ 
ascii2num 	proc 
					stmfd  sp!,{r0-r6, lr}  ; push to remain context
;-------------------------------------
					ldr r0, [sp, #32] ; get decimal string "1234"  -> result r0 =0x34333231
					ldr r2, =0
					and r1, r0, #0x0F000000 
					lsr r2,  r1, #24
					and r1, r0, #0x000F0000
					ldr r6, =10; dec 100
					lsr r1, r1, #16
					mul r3, r6, r1 ; 
					and r1, r0, #0x00000F00
					ldr r6, =100 ; dec 10 
					lsr r1, r1, #8
					mul r4, r6, r1 ; 
					and r1, r0, #0x0000000F 
					ldr r6, =1000
					mul r5, r6, r1
					add r5, r5, r2
					add r5, r5, r3
					add r5, r5, r4 ; 
; ---------- parameter passing by stack 
					str r5, [sp, #32] ;  
;-----------ready to return 
					ldmfd sp!,{r0-r6, pc} ; pop to remain context 
					endp
					end
