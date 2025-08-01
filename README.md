# Analog-IC-Design
# 🎤 USB-MIDI Microphone Interface System

This repository presents the design and analysis of a USB-MIDI Microphone System that utilizes a MEMS microphone module, an analog front-end amplifier using the OPA344 op-amp, and an Arduino-based microcontroller to digitize and transmit MIDI signals over USB.

---

## 🚀 Project Highlights

- **Goal**: Capture analog audio signals using a MEMS mic, condition them with an op-amp-based preamplifier, and convert them into digital MIDI messages.
- **Core Components**:
  - MEMS Microphone: SPH8878LR5H-1
  - Operational Amplifier: OPA344 (TI)
  - Arduino Microcontroller with 10-bit ADC
  - Passive components (resistors, capacitors)

---

## 🧠 System Architecture


---

## 🔧 Circuit Description

### 🎙 Microphone Front-End
- **Microphone**: SPH8878LR5H-1 (sensitivity: −44 dBV/Pa)
- **Coupling Capacitor**: `C1 = 4.7µF`
- **Input Resistor**: `R3 = 4.7kΩ`

### ⚙️ Preamplifier Section
- **Op-Amp**: OPA344, configured in non-inverting mode
- **Feedback Path**: `R4 = 300kΩ`, `C3 = 7.2pF` (sets gain & bandwidth)
- **Bias Network**: `R1, R2 = 10kΩ`, `C2 = 1.0µF` (sets common-mode voltage)

### 🔄 Signal Flow
- Analog output from the mic is AC-coupled and amplified.
- The processed analog signal is digitized using Arduino’s 10-bit ADC.
- Digital values are processed and transmitted via USB-MIDI protocol.

---

## 📏 System Specifications

| Parameter           | Value                |
|--------------------|----------------------|
| Amplifier Gain      | 60× (R4/R3)           |
| HPF Cutoff Frequency| ~6.66 Hz             |
| LPF Cutoff Frequency| ~19.6 kHz            |
| ADC Resolution      | 10-bit               |
| Output Range        | Compatible with 0–5V logic |

---

## 🛠 Tools and Technologies

- **ngspice** – SPICE-based analog simulation
- **xschem** – Schematic drawing tool
- **magic** – Layout design (CMOS)
- **Arduino IDE** – Microcontroller programming

---

## 🎓 Learning Objectives

- Apply analog circuit design to real-world audio interfacing
- Analyze and simulate RC filter responses
- Explore CMOS op-amp behavior in signal conditioning
- Develop USB-MIDI applications using embedded systems

---

## 🔗 Reference Materials

- 📄 [OPA344 Datasheet (TI)](https://www.ti.com/lit/ds/symlink/opa344.pdf)
- 📄 [SPH8878LR5H-1 MEMS Mic Datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
- 📄 SparkFun MEMS Mic Breakout Board Schematic
- 📄 PDK, DRC & layout design manuals

---

## 📅 Day-Wise Tasks

### 🧮 Day 1
- ✅ Calculate the Thevenin Equivalent of the microphone source
- ✅ Identify voltage sensitivity and impedance from the datasheet

### 📊 Day 2
- ✅ Analyze frequency response of preamplifier using transfer function
- ✅ Derive HPF/LPF cutoff frequencies using R-C values

---

## ✅ Checklist

- [x] Design circuit based on MEMS microphone
- [x] Calculate frequency response of the amplifier
- [ ] Simulate using `ngspice` and verify response
- [ ] Connect ADC and test live signal acquisition
- [ ] Format and transmit USB-MIDI data

---



