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


main>
    #initialization
    jsr kek
    halt
asect 0x00f0
kek>
    ldi r0, 0x0ff0
    ldi r1, ball_y
    ldi r2, 0x0ff4
    ldi r3, vy
    ldi r4, left_bat_y
    jsr au
    rts

asect 0x0120
au>
    ldw r2, r6
    ldi r7, 0
    if
    cmp r7, r6
    is gt # 0>r6 move to left side
        ldw r1, r5 #r5 = ball_y
        ldw r


        ldw r0, r5 #r5 =ball x
        ldi r7, 0x0ffe # ball is very close to left wall
        if 
            cmp r7,r5
        is hs
            neg r6
            stw r2, r6
        fi
    fi

    br au



asect 0x0ff0

ball_x: ds 2    #00f0
ball_y: ds 2    #00f2
vx: ds 2        #00f4
vy: ds 2        #00f6
left_bat_y: ds 2#00f8
score: ds 2
end.