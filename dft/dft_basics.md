# Design for Testability (DFT)

# What is DFT?
DEsign for Testability (DFT) is a set of design techniques added to a chip to make internal nodes observable and controllable so manufacturing defects can be detected efficiently using automated test equipment (ATE).

# Defect
A defect is a physical imperfection introduced during fabrication. It is a physical manufacturing imperfection in the silicon.

# Fault
A fault is a logical abstraction of a defect, used for testing and analysis. It is a logical model represnting the effect of a physical defect.

# Error
An error is an incorrect signal value caused by an activated fault. An error occurs when a fault is activated and propagated, causing an incorrect signal vlue at some node.

# Failure
A failure is a user-visible malfunction caused by an unmsked error. A failure happens when an error reaches a primary output or architectural state, violating the specification.

In DFT, a defect is a physical manufacturing imperfection, a fault is a logical model and error is the incorrect signal caused by an activated fault, and a failure occurs when that error becomes observable at the sysem output.

# Common DFT Techniques
- Scan insertion
- Boundary scan (JTAG)
- Built-In Self-Test (BIST)

# Impact on Physical Design 
- Increases sequential element count due to scan flops
- Affects placement due to scan chain ordering
- Introduces test clocks and test modes
- Impacts STA in both funtional and test modes

# Tool
Tessant

# DFT and STA
- Separate constraints for funtional and test modes
- Scan enable paths require special timing checks
