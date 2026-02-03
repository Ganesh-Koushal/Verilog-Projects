# Verilog Fundamentals – RTL Design & Verification

This directory contains my foundational Verilog HDL work, developed as part of
a structured self-learning path toward Design Verification (DV).

The focus of this section is not only on writing synthesizable RTL,
but also on **understanding, verifying, and validating RTL behavior**
using independent testbenches.

All designs were written with clarity, modularity, and verifiability in mind,
following good RTL and verification practices.

---

## Design Philosophy

Each module in this directory was created with the following goals:

- Clear separation between **design logic** and **verification logic**
- Predictable, synthesizable RTL behavior
- Simple but effective testbenches to validate functionality
- Emphasis on **state transitions, timing, and corner cases**

Rather than building large systems immediately, these designs focus on
**core building blocks** that frequently appear in real-world digital systems.

---

## Repository Structure

Fundamentals/
├── Combinational/
├── Sequential/
├── counters_and_timers/
├── fsm_basics/
├── fsm_real_world/
└── pulse_generation/

yaml
Copy code

Each category contains:
- `source_codes/` – RTL modules
- `testbenches/` – Independent Verilog testbenches
- Minimal dependencies between modules to allow isolated testing

---

## Verification Approach

For every design, a **separate testbench** was written with the following intent:

### Testbench Characteristics
- Clock generation (where applicable)
- Reset sequencing and validation
- Directed stimulus to cover:
  - Normal operation
  - Boundary conditions
  - State transitions
- Observation of outputs using `$monitor` / `$display`
- Functional validation using simulation waveforms

The testbenches are **self-contained** and do not rely on internal signals of the DUT,
which helps reinforce proper black-box verification thinking.

---

## Category Overview

### 🔹 Combinational Logic
Covers basic combinational constructs using both:
- Gate-level modeling
- Behavioral modeling with `always @(*)`

Verification focuses on:
- Correct output for all select/input combinations
- Sensitivity list correctness
- Avoidance of unintended latches

---

### 🔹 Sequential Logic
Introduces clocked logic and state storage elements.

Verification focuses on:
- Correct behavior on clock edges
- Reset functionality
- Stable output behavior across cycles

---

### 🔹 Counters and Timers
Implements counter-based control logic commonly used in timing-sensitive systems.

Verification focuses on:
- Correct count progression
- Terminal count detection
- Timeout behavior
- Pulse generation correctness (single-cycle pulses)

---

### 🔹 FSM Basics
Implements Moore and Mealy finite state machines.

Verification focuses on:
- State transitions based on input stimulus
- Output behavior for Moore vs Mealy FSMs
- Reset bringing FSM to a known state
- Illegal/default state handling

---

### 🔹 Real-World FSM Designs
Applies FSM concepts to practical problems such as input debouncing.

Verification focuses on:
- Handling unstable/noisy inputs
- Valid state transitions only after confirmation cycles
- Robustness against glitches

---

### 🔹 Pulse Generation
Designs for generating clean, single-cycle pulses.

Verification focuses on:
- Ensuring pulses are exactly one clock wide
- Avoiding repeated pulses for a single event
- Proper interaction between debounce logic and pulse logic

---

## Skills Demonstrated

### RTL Design
- Combinational and sequential logic modeling
- FSM design (Moore & Mealy)
- Parameterized counters and timers
- Clean reset and clock handling

### Verification-Oriented Thinking
- Independent testbench creation
- Directed stimulus generation
- Functional correctness validation
- Awareness of edge cases and timing behavior

---

## Motivation Toward Design Verification

This fundamentals section serves as the base for my progression toward
Design Verification roles.

The emphasis on:
- Writing testbenches alongside RTL
- Thinking in terms of stimulus and response
- Validating behavior rather than assuming correctness

has helped me build the mindset required for more advanced DV topics such as
SystemVerilog, constrained random verification, and UVM in later stages.

---

## Tools Used
- Verilog HDL
- Xilinx Vivado (for RTL simulation and synthesis checks)
