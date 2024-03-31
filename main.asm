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
    ldi r1, 0xe2
    ldi r2, 0x99
    ldi r3, 0xa5
    st r0, r1
    st r0, r2
    st r0, r3
    

    halt


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


coloda: dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
end.
