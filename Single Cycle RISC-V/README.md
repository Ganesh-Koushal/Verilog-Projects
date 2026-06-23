# Single-Cycle RISC-V RV32I Processor using Verilog HDL

## Project Overview

This project implements a 32-bit Single-Cycle RISC-V (RV32I) Processor in Verilog HDL. The processor fetches, decodes, executes, and completes an instruction within a single clock cycle. The design was developed to gain practical experience in processor architecture, RTL design, datapath implementation, control logic generation, and instruction execution flow.

The processor supports a subset of the RISC-V RV32I instruction set and demonstrates how hardware components such as the Program Counter, Instruction Memory, Register File, Control Unit, ALU, Data Memory, and Branch Logic work together to execute instructions.

A custom test program was loaded into instruction memory and executed to verify arithmetic, logical, memory, branch, and jump operations.

---

## Processor Architecture

The processor follows a single-cycle architecture, meaning every instruction completes in one clock cycle without pipelining.

The execution flow is:

```text
Program Counter
      ↓
Instruction Memory
      ↓
Instruction Decode
      ↓
Control Unit
      ↓
Register File
      ↓
Immediate Generator
      ↓
ALU Control
      ↓
Arithmetic Logic Unit
      ↓
Data Memory (for load/store instructions)
      ↓
Write Back to Register File
```

The Program Counter (PC) holds the address of the current instruction. Instructions are fetched from Instruction Memory and decoded to identify the operation, source registers, destination register, and immediate values.

The Control Unit generates the required control signals based on the instruction opcode, while the ALU Control Unit determines the exact ALU operation using the instruction's funct3 and funct7 fields.

The ALU performs arithmetic and logical operations, Data Memory handles load/store instructions, and the Write-Back stage updates the destination register with the final result.

---

## Supported Instructions

### R-Type Instructions

Arithmetic and logical operations between registers:

* ADD
* SUB
* AND
* OR
* XOR
* SLL
* SRL
* SRA
* SLT
* SLTU

### I-Type Instructions

Immediate-based operations:

* ADDI
* ANDI
* ORI
* XORI
* SLLI
* SRLI
* SRAI
* SLTI
* SLTIU

### Memory Instructions

* LW (Load Word)
* SW (Store Word)

### Branch Instructions

* BEQ (Branch if Equal)
* BNE (Branch if Not Equal)

### Jump Instructions

* JAL (Jump and Link)
* JALR (Jump and Link Register)

### Upper Immediate Instructions

* LUI (Load Upper Immediate)
* AUIPC (Add Upper Immediate to PC)

---

## Major Modules Implemented

### Program Counter (PC)

Maintains the address of the currently executing instruction and updates the address for the next instruction.

### Instruction Memory

Stores the machine-code program and provides instructions based on the current Program Counter value. The test program is loaded using a memory initialization file (`program.mem`).

### Control Unit

Decodes the opcode field of the instruction and generates control signals required for execution.

### Register File

Implements 32 general-purpose RISC-V registers (x0–x31) with two read ports and one write port.

### Immediate Generator

Extracts and sign-extends immediate values from different RISC-V instruction formats including I-Type, S-Type, B-Type, J-Type, and U-Type instructions.

### ALU Control Unit

Uses funct3 and funct7 fields to determine the exact ALU operation to perform.

### Arithmetic Logic Unit (ALU)

Performs arithmetic, logical, shift, and comparison operations required by the processor.

### Branch Unit

Evaluates branch conditions and determines whether a branch should be taken.

### Data Memory

Handles memory read and write operations for load and store instructions.

---

## Verification

The processor was verified using a custom test program containing arithmetic, logical, shift, branch, jump, and memory instructions.

The test program initializes registers, performs ALU operations, stores data into memory, reads data back using load instructions, evaluates branch conditions, and executes jump instructions. Simulation results were observed to verify correct register updates, memory accesses, and program flow.

---

## Tools Used

* Verilog HDL
* Xilinx Vivado
* FPGA Design Flow
* Simulation-Based Verification

---

## Key Concepts Explored

* RISC-V RV32I Instruction Set Architecture
* Processor Datapath Design
* Control Signal Generation
* Register File Design
* Immediate Value Generation
* ALU Design and Operation Selection
* Branch and Jump Mechanisms
* Load/Store Memory Operations
* RTL Design Methodology
* Functional Verification through Simulation

---

## Future Enhancements

Potential future improvements include:

* RV64I Implementation
* Multi-Cycle Processor Design
* Pipelined Processor Architecture
* Hazard Detection and Forwarding
* Cache Integration
* Advanced Verification using SystemVerilog and UVM

