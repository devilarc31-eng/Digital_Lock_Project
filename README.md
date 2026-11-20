# 🔐 Digital Lock Project

## 📌 Overview
The Digital Lock Project is a password-based security system designed to provide controlled access using digital logic and FPGA technology. The system verifies the entered password and grants access only when the correct password is provided.

This project demonstrates digital design concepts, logic implementation, and hardware development using Verilog HDL and Xilinx Vivado.

## 🎯 Objectives
- Design a digital password-based locking system.
- Verify password input using digital logic.
- Allow access only for a valid password.
- Display or indicate lock and unlock status.
- Implement and simulate the design using Vivado.

## ⚙️ Working Principle
1. The user enters the password through the input interface.
2. The system receives the entered password.
3. The entered password is compared with the predefined password.
4. If the password matches, the lock is unlocked.
5. If the password is incorrect, the lock remains locked.
6. The system returns to the locked state after the operation.

## 🏗️ System Architecture

    User Input
        |
        v
  Password Entry
        |
        v
 Password Verification
        |
    +---+---+
    |       |
 Correct   Incorrect
    |       |
    v       v
 Unlock    Locked
    |       |
    +---+---+
        |
        v
   System Status

## 🧰 Tools & Technologies
- Verilog HDL
- Xilinx Vivado
- FPGA Design
- Digital Logic Design
- Simulation and Verification

## 📂 Project Structure

    Digital_Lock_Project/
    │
    ├── Digital_Lock.srcs/
    │   └── Source Files
    │
    ├── Digital_Lock/
    │   └── Project Files
    │
    ├── Digital_Lock.tcl
    │
    └── README.md

## 🧪 Implementation
The digital lock is designed using Verilog HDL. The logic is developed, simulated, and verified using the Vivado design environment.

The design consists of:
- Password input logic
- Password comparison logic
- Lock control logic
- Output status logic

## 🔒 Features
- Password verification
- Secure access control logic
- Digital lock and unlock states
- FPGA-based implementation
- Simulation and verification

## 📈 Applications
- Electronic security systems
- Digital lockers
- Access control systems
- Smart door locking systems
- Restricted access areas

## 🚀 Future Enhancements
- Multiple password support
- Password reset functionality
- Keypad interfacing
- LCD status display
- Alarm for invalid password attempts
- FPGA hardware implementation

## 📖 Conclusion
The Digital Lock Project demonstrates the implementation of a password-based access control system using digital logic and Verilog HDL. It provides practical experience in hardware design, logic verification, simulation, and FPGA development using Vivado.

---

**Project Name:** Digital Lock System  
**Domain:** Digital Electronics & FPGA Design  
**HDL:** Verilog  
**Tool:** Xilinx Vivado
