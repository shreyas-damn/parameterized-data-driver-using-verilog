# Data Driver (Parameterized) in Verilog

## Overview
This project implements a **parameterized data driver** in Verilog along with a testbench for simulation and verification.

The data driver passes input data (`din`) to the output (`dout`) when enabled.  
When disabled, the output is driven to an unknown state (`X`), simulating a high-impedance or inactive condition.

---

## datadriver.v
The main module implements the data driver logic.

### Parameters
- `width` : Defines the bit-width of input and output signals (default = 8)

### Inputs
- `din [width-1:0]` : Input data  
- `d_en` : Data enable signal  

### Output
- `dout [width-1:0]` : Output data  

### Functionality
- If `d_en = 1` → `dout = din`  
- If `d_en = 0` → `dout = X (unknown state)`  

### Key Concept
```verilog
dout = {width{1'bx}};
