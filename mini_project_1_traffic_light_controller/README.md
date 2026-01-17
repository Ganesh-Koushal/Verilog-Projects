# 🚦 Traffic Light Controller (Verilog)

## Overview
This mini project implements a traffic light controller using Verilog.
The goal was not just sequencing lights, but designing a clean, modular,
and verifiable digital system.

## Architecture
The design is divided into independent modules:
- **TL_FSM** : Moore FSM controlling traffic light states
- **traffic_timer** : Timer module for long/short durations
- **debounce_pulse** : Debounces button input and generates clean pulses
- **TOP_CONNECTIONS** : Top-level integration module

Control (FSM) and datapath (timer) are kept separate.

## Verification
Each module was verified using an independent testbench.
Simulation waveforms included demonstrate:
- Correct FSM state transitions
- Pulse-based control using done/btn pulses
- Deterministic top-level behavior

Representative RTL, synthesis schematics, and simulation results are provided.

## Key Learnings
- FSM design using one-hot encoding
- Importance of pulse-based control over level signals
- Control vs datapath separation
- Writing structured testbenches
- Debugging using waveform analysis

## Skills Demonstrated
- FSM design and state-based control logic
- Pulse-based event handling (done / button pulses)
- Control vs datapath separation
- Modular RTL design and top-level integration
- Writing and verifying testbenches
- Debugging using simulation waveforms

