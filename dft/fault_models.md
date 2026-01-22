# Define Fault
A fault is a physical defect in a manufactured chip that causes the circuit to deviate from its intended logical behaviour. Fault models abstract physical defects into logical representations so that ATPG can efficiently generate test patterns.

# Stuck-At Fault Model
A stuck-at fault assumes that a signal line is permanentlly stuck at logic 0 (SA0) or logic 1 (SA1), regardless of the intended value.

# Examples:
- Metal short to GND => SA0
- Metal short to VDD => SA1
- Broken transistor => constant value.

# Types of Stuck-At Fault Model
- Sing stuck-at fault
- SA0
- SA1

# How to detect a stuck-at fault
Three-step rule
1. Activalte the fault
2. Propagate the fault
3. Observe the fault
  A stuck-at fault is detected by activating the fault by driving the opposite value, propagating the fault effect through sensitized logic, and observing it at a primary ooutput or scan output.

# Why stuck-at fault is still used?
Despite being simple, the stuck-at fault modl provides high coverage for many physical defects, is computationally efficient for ATPG, and has historically correlated well with manufacturing defects.

# How Stuck-At Faults are tested in Scan Designs
In scan-based testing, stuck-at faults are detected by:
1. Shifting a test vector through scan chains
2. Applying the test pattern in funtional mode
3. Observing the response through scan-out

# Limitations
It can't detect
- Delay defects
- Resistive opens/shorts
- Crosstalk

# Transition Fault Model
A transition fault models defects that cause a signal to transtion too slowly, either from 0->1 (slow-to-rise) or 1->0 (slow-to-fall).

# Why transition fault matter
As technology scales, timing-related defects dominate, and stuck-at testing alone is insufficient to guarantee performance correctness.

# Types of Transition Fault Modeel
- STR (slow-to-rise)
- STF (slow-to-fall)

# Transition Fault Testing in practice

Transition fault testing requires:
- Two clock pulses (launch and capture)
- At-speed operation
- Scan enable toggling between shift and capture

Two common methods:
- Launch-on-Shift (LOS)
- Launch-on-capture (LOC)


# Why is transition testing called at-speed testing?
Transition fault testing is called at-speed testing because the fault can only be detected when the circuit is clocked at its functional operating frequency, ensuring the timing-related defects are exposed.
