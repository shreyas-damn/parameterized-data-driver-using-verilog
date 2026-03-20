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
`verilog`
`dout = {width{1'bx}};`

### Monitoring
<img width="848" height="232" alt="image" src="https://github.com/user-attachments/assets/ef037663-5f65-41d7-8d86-941ef0003a4c" />

###GTKwave Waveform

<img width="2648" height="684" alt="image" src="https://github.com/user-attachments/assets/f406bace-8deb-40ff-b09f-85264fe452a9" />

