# Scan Insertion Using Tessent (Gate-level)

# Objective
Insert scan into a synthesized DFF gate-level netlist using Tessent Scan.

# Input
- Gate-level Verlilog netlist ("dff_netlisy.v")
- Standard cell library ("adk.tcelllib")
- Scan insertion Do file ("scan_insert.do")

# Flow
1. Set DFT context to netlist
2. Read standard cell library
3. Read gate-level netlist
4. Set top module
5. Define scan signals
6. Insert scan
7. Genertate scan-inserted netlist and reports

# Key issue faced
- Incorrect use of RTL context instead of netlist context
- Confusion between file name and module name
- Unsupported PVL command ("read_pvl")
- Library format mismatch (".db vs .tcelllib")

# Learning
- Tessent identifies design by module name, not file name
- Scan insertion must be done in netlist context
- ".tcelllib" is required for DFT cell understanding
- Tool errors guid the correct DFT flow

# Output
- Scan-inserted netlisy
- Scan chain report
