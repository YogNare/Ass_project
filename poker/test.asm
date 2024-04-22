### SECTION: .text
rsect _test_c_41



macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:
	ldi	r0, arr
	ldi	r1, 6
	stw	r0, r1
	ldi	r0, 0
	rts
                                        # -- End function
### SECTION: .bss
arr>                                    # @arr
	ds	4

end.
