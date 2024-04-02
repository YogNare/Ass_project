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

rd: dc 0xffe1
vivod: dc 0xffe0
start_card: dc 0xffc0
main>
    ldi r1, start_card
    ld r1, r1
    ldi r2, 8
    st r1, r2
    inc r1
    ldi r2, 9
    st r1, r2
    inc r1
    ldi r2, 10
    st r1, r2
    inc r1
    ldi r2, 12
    st r1, r2
    inc r1
    #jsr print_interface

    ldi r0, rd
    ld r0, r0
    ldi r1, 1
    st r0, r1

    ldi r0, vivod
    ld r0, r0
    ldi r1, 0xffe3
    ld r1, r1
    st r0, r1

    

    halt

print_interface>
    ldi r0, vivod
    ld r0, r0

    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    ldi r1, 0x31
    st r0, r1
    ldi r1, 0x48
    st r0, r1

    clr r1
    ldi r1, 0x35 # 5
    jsr down_x_r1

    clr r1
    ldi r1, 0x37 # 7
    jsr right_x_r1

    ldi r1, start_card #начальный наминал карты
    jsr print_card_tmplt

    ldi r1, 0x34
    jsr up_x_r1
    ldi r1, 0x37
    jsr right_x_r1

    ldi r1, start_card
    jsr print_card_tmplt

    ldi r1, 0x39
    jsr left_x_r1
    ldi r1, 0x35
    jsr down_x_r1

    ldi r1, start_card
    jsr print_card_tmplt

    ldi r1, 0x34
    jsr up_x_r1
    ldi r1, 0x37
    jsr right_x_r1

    ldi r1, start_card
    jsr print_card_tmplt

    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    ldi r1, 0x32
    st r0, r1
    ldi r1, 0x33
    st r0, r1
    ldi r1, 0x48
    st r0, r1

    jsr print_text
    rts

down_x_r1>
    push r1
    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    pop r1
    st r0, r1
    ldi r1, 0x42
    st r0, r1
    rts

up_x_r1>
    push r1
    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    pop r1
    st r0, r1
    ldi r1, 0x41
    st r0, r1
    rts

left_x_r1>
    push r1
    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    pop r1
    st r0, r1
    ldi r1, 0x44
    st r0, r1
    rts

right_x_r1>
    push r1
    ldi r1, 0x1b
    st r0, r1
    ldi r1, 0x5b
    st r0, r1
    pop r1
    st r0, r1
    ldi r1, 0x43
    st r0, r1
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
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7
    push r1


    ldi r1, 5 #tmplt len
    ldi r2, card_template
    
    while
        tst r1
    stays ne
        ldb r2, r3
        inc r2
        ldb r2, r4
        inc r2
        ldb r2, r5
        inc r2
        ldb r2, r6
        inc r2
        ldb r2, r7
        inc r2

        st r0, r3
        if
            ldi r0, 0x6d
            cmp r0, r4
        is eq
            move r1, r3
            pop r1
            push r1
            ld r1, r1
            ldi r4, num
            ldb r1, r0
            add r0, r4
            ldb r4, r4
            ldi r0, vivod
            ld r0, r0
            st r0, r4
            move r3, r1
        else
            ldi r0, vivod
            ld r0, r0
            st r0, r4
        fi

        if
            ldi r0, 0x6a
            cmp r0, r5
        is eq
            move r1, r3
            pop r1
            push r1
            ld r1, r1
            ldi r5, mas
            ldb r1, r0
            inc r1
            
            add r0, r5
            ldb r5, r5
            ldi r0, vivod
            ld r0, r0
            st r0, r5
            ldi r4, start_card
            st r4, r1
            move r3, r1

        else
            ldi r0, vivod
            ld r0, r0
            st r0, r5
        fi
        st r0, r6
        st r0, r7

        #bellow is movement 5<- and 1v 
        #movement on the next line
        if 
            ldi r3, 1
            cmp r1, r3
        is ne
            push r1
            clr r1
            ldi r1, 0x35
            jsr left_x_r1

            clr r1
            ldi r1, 0x31
            jsr down_x_r1
            pop r1
        fi

        dec r1
    wend

    pop r1
    pop r7
    pop r6
    pop r5
    pop r6
    pop r3
    pop r2
    pop r0
    rts

print_text>
    push r0
    push r1
    push r2
    push r3
    push r4
        ldi r2, 6
        ldi r1, printable_text
        while
            tst r2
        stays ne
            dec r2
            push r2
            ld r1, r2
            inc r1
            ld r1, r3
            inc r1
            ld r1, r4
            inc r1
            st r0, r2
            st r0, r3
            st r0, r4
            pop r2
        wend

    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

printable_text: dc "Enter your answer:"
card_template: dc "-----|m  || j ||   |-----"

num: dc "6789XJQKA", "6789XJQKA", "6789XJQKA", "6789XJQKA" #X - 10
mas: dc "ddddddddd", "hhhhhhhhh", "sssssssss", "ccccccccc"
end.
