# Scan
Scan replaces regular flip-flops with scan-enabled flip-flops so that during test mode, all sequential elements can be connected as shift registers. This converts the sequential circuit into a commbinational one, enabling high fault coverage using ATPG.

# Why scan is required?
Problem without scan
- Sequential circuits hide internal states
- you cannot
    i) Set internal Flip Flop values easily
    ii) Observe internal Flip Flop outputs
This cause
- Low fault coverage.
- Huge test time.
- Unreliable manufacturing test.

# Controllability
Controllability is the ability to set an internal node or flip-flop to a desired logic value using primary inputs or scan inputs.

# Observability
Observability is the ability to observe the value of an internal node or flip-flop at the primary outputs or scan outputs.

# Disadvantage of scan
The biggest disadvantage of scan is the overhead it introduces in terms of area, power, and timing. Scan multiplexers and additional routing increases area, scan shifting increaes power consumption, and the added logic on the data path can impact funtional timing.
