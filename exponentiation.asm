base	equ	12 ;here we set the base value
exp	equ	2 ;here we set the exponent value
	mov	r5,#1
	cmp	r5,#exp ;if exp= 1, return base
	beq	final_3
	cmp r0,#base ;if base= 0, return ERROR
	beq	final_1
	cmp	r0,#exp
	beq	final_2
	mov	r2,#base
	mov	r4,#base
	mov	r3,#exp
	sub	r3,r3,#1
start	mov	r1,#base
ad	cmp	r1,#1
	subge	r1,r1,#1
	addge	r2,r2,r4
	cmp	r1,#1
	bgt	ad
	mov	r4,r2
	sub	r3,r3,#1
	cmp	r3,#0
	bgt	start
	end
end_1	mov	r2,#404
		end
end_2	mov	r2,#1
		end
end_3	mov	r2,#base
		end
;r2 stores the final value
