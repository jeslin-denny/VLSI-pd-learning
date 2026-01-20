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

# Scan Operation
Scan works in two modes:
- Shift mode (scan_enable = 1):
    Test patterns are shifted into scan chains through scan_in and shifted out through scan_out.
- Capture mode (scan_enable = 0):
    Functional clock is applied to capture the circuit response.
  The captured values are then shifted out for observation.

# Controllability
Controllability is the ability to set an internal node or flip-flop to a desired logic value using primary inputs or scan inputs.

# Observability
Observability is the ability to observe the value of an internal node or flip-flop at the primary outputs or scan outputs.

# Scan Impact on Physical Design
- Scan insertion increases flip-flop count and routing congestion.
- Long scan chains can create routing hotspots.
- Scan reordering is used to reduce wirelength.
- Scan cells can affect setup/hold timing on funtional paths.
- At-speed scan requires careful clock tree design.

# Disadvantage of scan
The biggest disadvantage of scan is the overhead it introduces in terms of area, power, and timing. Scan multiplexers and additional routing increases area, scan shifting increaes power consumption, and the added logic on the data path can impact funtional timing.
