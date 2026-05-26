# Tiny Tapeout - 8-bit Inverter

## Project Description

This project implements a simple 8-bit inverter using Verilog HDL for Tiny Tapeout.

The design accepts an 8-bit input through `ui_in` and produces the inverted output on `uo_out`.

Example:

Input:
00001111

Output:
11110000

---

## Verilog Operation

The inverter is implemented using:

```verilog
assign uo_out = ~ui_in;
```

The `~` operator performs bitwise NOT operation.

---

## Pin Description

### Inputs

| Pin | Description |
|-----|-------------|
| ui_in[7:0] | 8-bit input data |

### Outputs

| Pin | Description |
|-----|-------------|
| uo_out[7:0] | Inverted 8-bit output |

### Unused Pins

| Pin | Status |
|-----|--------|
| uio_in | Unused |
| uio_out | Unused |
| uio_oe | Unused |
| clk | Unused |
| rst_n | Unused |

---

## File Structure

```text
project/
│
├── src/
│   └── tt_um_example.v
│
├── test/
│   └── tb.v
│
├── docs/
│   └── info.md
│
├── info.yaml
│
└── README.md
```

---

## Simulation

### Compile

```bash
iverilog -o sim src/tt_um_example.v test/tb.v
```

### Run Simulation

```bash
vvp sim
```

### Open Waveform

```bash
gtkwave dump.vcd
```

---

## Expected Results

| Input | Output |
|------|------|
| 00001111 | 11110000 |
| 10101010 | 01010101 |
| 11110000 | 00001111 |
| 11111111 | 00000000 |

---

## Tiny Tapeout

This project is designed for the Tiny Tapeout ASIC flow.

The design demonstrates:

- Basic combinational logic
- Bitwise operations
- Verilog HDL fundamentals
- Tiny Tapeout top module structure

---

## Author

Your Name
