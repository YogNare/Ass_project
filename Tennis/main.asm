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

x_ball: dc 0xff00
y_ball: dc 0xff01
vx: dc 0xff02
vy: dc 0xff03
y_r_bat: dc 0xff04

assect 0x90

main>
    ldi r0, 2
    ldi r1, vx
    ld r1, r1
    st r1, r2
    ldi r0, 1
    ldi r1, vy
    ld r1, r1
    st r1, r2


    halt

end.
