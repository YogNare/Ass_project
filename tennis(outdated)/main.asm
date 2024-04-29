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
    ldi r0, 0x0ff0
    ldw r0, r0 #x

    ldi r1, ball_y
    ldw r1, r1 #y

    ldi r2, vx
    ldw r2, r2 #vx

    ldi r3, vy
    ldw r3, r3 #vy

    ldi r5, right_bat_y

    ldi r4, 0 #carry bits

    ldi r6, 224
    sub r6, r0, r6 #r6 = (224 - x)

    #devide on vx = 1

    #multiplying
    ldi r2, 0
    if
        cmp r3, 2
    is eq, or
        cmp r3, -2
        is eq
            shl r6 #r6 = r6 * vx(+-2)
            addc r2, r4
   # else
 #   if
  #      cmp r3, 3
  #  is eq, or
  #      cmp r3, -3
   #     is eq
  #          move r6, r7
   #         shl r6
   #         addc r2, r4
   #         add r6, r7, r6 #r6 = r6 * (+-3)
   #         addc r2, r4
    #fi
    fi

    #check minus vy
    if
        tst r3
    is mi
        neg r3
    fi

    add r1, r6 # r6 = y + r6
    addc r2, r4

    if
        cmp r4, 0
    is eq
        stb r5, r6
    else
    if
        shr r6 
    is cc       #odd
        ldi r1, 256
        sub r6, r1, r6
        stb r5, r6
        
    else        #even
        ldi r1, 512
        sub r6, r1, r6
        stb r5, r6
    fi
    fi

    halt



asect 0x0ff0

ball_x: ds 2        #0ff0
ball_y: ds 2        #0ff2
vx: ds 2            #0ff4
vy: ds 2            #0ff6
left_bat_y: ds 2    #0ff8
right_bat_y: ds 2   #0ffa
end.