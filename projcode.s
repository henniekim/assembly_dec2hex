					area projcode, code
					extern num2ascii
					extern ascii2num
					entry
__main 		proc
					export __main [weak]
;--------------- insert your code between the lines ------------
					ldr r0, dec_string
					ldr r1, =hex_string
					str r0, [r1] 
					push {r0}
					bl ascii2num ; convert decimal string to hex number : "1234" -> 0x04d2
					pop {r0}
					push {r0}
					bl num2ascii ; convert number : 0x04d2 -> 0x30344432
					pop {r0}
					ldr r1, =hex_string
					str r0, [r1] ; dec2hexcomplete
;---------------------------------------------------------------
here 			b here
					endp
					align
dec_string 	dcb	"123"
					align
					area	projdata, data
hex_string 	space 4
					end