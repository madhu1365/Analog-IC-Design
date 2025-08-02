# Analog-IC-Design
# 🎓 Summer Internship Summary: Design of Analog ICs for System Applications



##  Course Outcomes

-  Design analog ICs based on system-level requirements.
-  Understand CMOS device physics and analog building blocks.
-  Analyze and simulate circuits using professional EDA tools.
-  Implement real-world systems from schematic to PCB testing.

---

##  Course Highlights

### 1. **System Design**
- Case study: USB-MIDI microphone
- Preamp design using **TI OPA344**
- Op-amp specification derivation

### 2. **Linear Circuits**
- RLC basics using EM theory
- Network analysis: KCL, KVL, Nodal, Thevenin, Norton

### 3. **MOS Physics**
- P-N junctions, threshold voltage
- I-V characteristics and parasitics

### 4. **Analog Building Blocks**
- Current mirrors (simple, cascode, wide-swing)
- Differential amplifiers and folded cascode
- AC analysis and amplifier stability



### 5. **PCB Design & Testing**
- System simulation with ngspice/LTspice
- PCB design using **Eagle**
- Testing with Python libraries: `numpy`, `scipy`, `matplotlib`

---
## Tools and Technologies

- **ngspice** – SPICE-based analog simulation
- **xschem** – Schematic drawing tool
- **magic** – Layout design (CMOS)
- **netgen** – verification  
- Technology: **Skywater 130nm CMOS**


---

## References & Resources

-  [Knowles MEMS Capacitive Microphone Datasheet (SPH8878LR5H-1)](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
-  [TI OPA344 Op-Amp Datasheet](https://www.ti.com/lit/ds/symlink/opa344.pdf)
-  [SparkFun Analog MEMS Microphone Breakout – SPH8878LR5H-1](https://www.sparkfun.com/products/18011)

---



# 🎤 USB-MIDI Microphone Interface System

Design and analysis of a USB-MIDI Microphone System that utilizes a MEMS microphone module, an analog front-end amplifier using the OPA344 op-amp, and an Arduino-based microcontroller to digitize and transmit MIDI signals over USB.
![image alt](https://github.com/madhu1365/Analog-IC-Design/blob/1432bd712c1d6a3c4930e609c5d531754f5d402c/Fig-USBmic.png)

---
---



### Microphone Specs (From Datasheet & Research)
- **Sensitivity**: −44 dBV/Pa
- **Test Condition**: 94 dB SPL @ 1 kHz (equivalent to 1 Pa)
- **Normal voice level**: ~60 dB SPL

### Thevenin Equivalent Voltage Calculation

   Voice (Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
  - Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu Vpk$
  - **$V_{out-pk} = 0.178~ mV$**
- **Rth** (from datasheet) = 380 ohms

---

[🔗 SparkFun Breakout Board (SPH8878LR5H-1)](https://www.sparkfun.com/products/18011)
- From Sparkfun schematic: Rin=5k, Rfb=300k, therefore Gain = 60
- So output of the amplfier will be 60x0.178 mVpk = **10.68 mVpk**
- Sparkfun site states **100 mVpk** probaby assuming 10 times higher input signal i.e. Voice is **80 dB SPL**
- Input high-pass frequency = $1/2\pi RC = 1/2\pi 5k 4.7uF = 6.77 Hz$
- Feedback Low-pass filter frequency = $1/2\pi RC = 1/2\pi 300k 27pF = 19.6kHz $
- Input common-mode filter = $1/2\pi 10k 1uF = 15.9 Hz$


###  OPA344 Op-Amp: Single-Pole Model

-  **Open-Loop Gain (DC)**: 120 dB  
-  **Unity-Gain Bandwidth**: 1 MHz  
-  **Pole = $1 MHz/10^6 = 1~Hz$

### AFE analysis of mic



![image alt](https://github.com/madhu1365/Analog-IC-Design/blob/cad9a2dd1842dc3dd40a67e2558981b64220d19f/Fig-d2-1-mic-analysis.png)
---

### Thevenin Eqivalent of mic

![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/e8e92b60461a5b4e898bee261719f636d813901e/ip.png)
![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/e8e92b60461a5b4e898bee261719f636d813901e/op.png)

---

### Mictest


![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/f00281a3ab2d1b520fd8caac0fd59eda90bdea04/mictest1.png)

### Current Mirror

![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/46c38bb084742a8217534daf018f5eb2560478e3/currentmirror.png)
---
### High-Pass Circuit

![image_alt]
---

# NGSPICE simulations

## 1. High Pass Filter
![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/ee120c9cca470124126ba1082a672daf4cd97421/hf.png)
![image_alt](https://github.com/madhu1365/Analog-IC-Design/blob/c0cf865461ea0a7b345988df5bc4367b4b7bea4b/hfop.png)
---

## 2.Transient Analysis

![image_alt]
![image_alt]
---
## 3. Diode Analysis

![image_alt]
![image_alt]


---



