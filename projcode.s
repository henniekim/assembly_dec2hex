					area projcode, code
					extern num2ascii
					extern ascii2num
					entry
__main 		proc
					export __main [weak]
;--------------- insert your code between the lines ------------

;---------------------------------------------------------------
here 			b here
					endp
					align
dec_string 	dcb	"1234"
					align
					area	projdata, data
hex_string 	space 4
					end