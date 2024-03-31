asect 0
main: ext               # Declare labels
default_handler: ext    # as external

# Interrupt vector table (IVT)
# Place a vector to program start and
# map all internal exceptions to default_handler
dc main, 0              # Startup/Reset vector
dc default_handler, 0   # Unaligned SP
dc default_handler, 0   # Unaligned PC
dc default_handler, 0   # Invalid instruction
dc default_handler, 0   # Double fault
align 0x80              # Reserve space for the rest 
                        # of IVT

# Exception handlers section
rsect exc_handlers

# This handler halts processor
default_handler>
    halt

# Main program section
rsect main
rd: dc 0xfff1
vivod: dc 0xfff0
main>

    ldi r0, vivod
    ld r0, r0
    jsr print_card_tmplt
    jsr between_cards
    jsr print_card_tmplt

    
    halt


between_cards>
    push r1
    push r0
    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    ldi r1, 0x34
    st r0, r1
    ldi r1, 0x41
    st r0, r1

    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    ldi r1, 0x31
    st r0, r1
    ldi r1, 0x30
    st r0, r1
    ldi r1, 0x43
    st r0, r1
    pop r0
    pop r1

    rts

clear_terminal>

    ldi r1, 0x1b
    st r0, r1

    ldi r1, 0x5b
    st r0, r1

    ldi r1, 0x48
    st r0, r1
    
    ldi r1, 0x1b
    st r0, r1

    ldi r1, 0x5b
    st r0, r1

    ldi r1, 0x4a
    st r0, r1

    rts

print_card_tmplt>
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7

    ldi r1, 5 #tmplt len
    ldi r2, card_template

    while
        tst r1
    stays ne
        ld r2, r3
        inc r2
        ld r2, r4
        inc r2
        ld r2, r5
        inc r2
        ld r2, r6
        inc r2
        ld r2, r7
        inc r2
        st r0, r3
        st r0, r4
        st r0, r5
        st r0, r6
        st r0, r7

        #bellow is movement 5<- and 1v
        push r2
        if 
            ldi r3, 1
            cmp r1, r3
        is ne
            ldi r2, 0x1b
            ldi r3, 0x5b
            ldi r4, 0x35
            ldi r5, 0x44
            ldi r6, 0x1b
            ldi r7, 0x5b
            st r0, r2
            ldi r2, 0x42
            
            st r0, r3
            st r0, r4
            st r0, r5
            st r0, r6
            st r0, r7
            st r0, r2
        fi
        pop r2

        dec r1
    wend

    pop r7
    pop r6
    pop r5
    pop r6
    pop r3
    pop r2
    pop r1
    pop r0
    rts

card_template: dc "-----|m  || j ||   |-----"
coloda: dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
end.
