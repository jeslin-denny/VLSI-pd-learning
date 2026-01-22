# Scan Chain
A scan chain is a serial connection of scan flip-flops where the scan output of one flip-flop is connected to the scan input of the next, allowing test data to be shifted in and out during scan mode.
Scan chains provide access to internal Flip-flops.
They enable shift-in => capture => shift-out.

# Why scan chains exist
Without scan chains:
- You would need complex input sequence
- ATPG become infeasible
- Fault covrage collapses
Scan chains convert a sequential design into a controllable and observable structure suitable for ATPG.

# Limitations of Single Scan Chain
- Huge shift time
- Excessive test time
- High shift power

# Multi Scan Chains
Multiple scan chains reduce scan shift time by enabling parallel shifting, lowering overall test time and reducing power during scan operations.

# Scan Architecture
A typical scan architecture includes:
- Scan flip-flops
- Scan chains
- Scan enable
- Scan clock
- Scan input
- Scan output

# Scan clocks
Scan clocks
- can be same as funtional clock
- Or seperate
Why seperate scan clocks?
- Avoid timing violations
- Control scan power
- Enable at-speed testing

# Common scan architecture problems
1. Clock gating blocking scan clocks
2. Asynchronous resets not controllable
3. X-propagation from unknown sources
4. Unbalanced scan chains
5. Scan-enable timing violations
