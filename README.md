# 4-Bit Adder in Verilog

This project demonstrates the implementation of a 4-bit adder in Verilog using three different modeling styles: **behavioral**, **dataflow**, and **structural**. Each implementation is accompanied by a corresponding testbench for simulation and verification.

## 📁 Repository Structure

├── 4 bit adder behavioural.png # Block diagram for behavioral model
├── 4 bit adder dataflow.png # Block diagram for dataflow model
├── 4 bit adder structural.png # Block diagram for structural model
├── Experiment 2.pdf # Lab report or documentation
├── adder_behavioural.v # Verilog code - Behavioral modeling
├── adder_dataflow.v # Verilog code - Dataflow modeling
├── adder_structural.v # Verilog code - Structural modeling
├── testbench_behavioural.v # Testbench for behavioral model
├── testbench_dataflow.v # Testbench for dataflow model
└── testbench_structural.v # Testbench for structural model


## 💡 Description

Each Verilog file implements a 4-bit binary adder which performs the addition of two 4-bit inputs and produces a 4-bit sum and a carry-out. The testbenches apply a set of inputs and verify the correctness of the outputs via simulation.

## 🛠️ Modeling Styles

- **Behavioral Modeling**: High-level description using procedural blocks.
- **Dataflow Modeling**: Describes the flow of data using continuous assignments.
- **Structural Modeling**: Builds the adder by interconnecting lower-level components like full adders.

## ▶️ How to Run

1. Clone the repository.
2. Use any Verilog simulator (like ModelSim, XSIM, Icarus Verilog).
3. Compile and simulate the testbench files:
   ```bash
   iverilog -o test_behavioural testbench_behavioural.v adder_behavioural.v
   vvp test_behavioural

Replace filenames to simulate other modeling styles.
📚 References

    Digital Design by M. Morris Mano

    Verilog HDL by Samir Palnitkar

👤 Author

Madhu Krishnan A P
