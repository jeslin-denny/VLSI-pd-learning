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

# Role of Scan Chins in ATPG
Scan chains transform a sequential circuit into a combinational-like structure from the ATPG tool's perspective, making fault activation and observation feasible.

# Limitations of Single Scan Chain
- Huge shift time
- Excessive test time
- High shift power

# Scan Chain Operation
1. Shift Mode (scan_enable = 1)
- Scan clock is used
- Test data is shifted through scan chains
- Functional logic is isolated

2. Capture Mode (scan_enable = 0)
- Funtional clock is used
- Circuit response is captured at-speed
- Enables stuck-at or transition fault detection

3. Shift-Out
- Captured values are shifted out for observation.

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
-> Scan shift failures and DRC violations
2. Asynchronous resets in scan path
-> Causes unknown (X) propagation during ATPG.
3. Unbalanced scan chains
-> Some chains dominate test time.
4. Scan-enable timing violations
5. Long scan chains
-> Increased test time and shift power. 
6. Multiple clock domains
-> Requires separate scan chins or lockup latches.
