# Design for Testability (DFT)

# What is DFT?
DEsign for Testability (DFT) is a set of design techniques added to a chip to make internal nodes observable and controllable so manufacturing defects can be detected efficiently using automated test equipment (ATE).

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
