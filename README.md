# Wireshark Development Setup (Windows)

This repository documents the step-by-step procedure to set up a Wireshark
development environment on Windows and build Wireshark using batch scripts.

> ⚠️ This repository does NOT contain Wireshark source code or binaries.
> It only documents the build procedure and provides helper batch files.

---

## 📋 Prerequisites

Before starting, ensure the following are installed:

- **Git for Windows**
- **CMake**
- **Python (3.x)**
- **Visual Studio 2022**
  - Desktop development with C++
- **Wireshark dependencies**
  - As per official Wireshark Windows build documentation
- **Qt (Required – Wireshark GUI)**

### Qt Requirements

- **Recommended Version:** Qt **6.9.3**
- **Compiler:** MSVC 2022 (64-bit)

#### Required Qt Components
- Desktop
- Qt 5 Compatibility Module
- Qt Debug Information Files

#### Optional (Recommended)
- Qt Multimedia (for advanced RTP Player features)

'''## 📁 Step 1: Create Development Directory

Create a folder named Development anywhere on your system

    (Example: C:\Development)

## 📥 Step 2: Clone Wireshark Repository

Open a terminal inside the Development folder and clone the Wireshark repository:

    git clone https://github.com/sam-grl/grl-wireshark-4.x
Rename the cloned folder to:

    wireshark-src

## 📁 Step 3: Create Build Directory

Inside the Development folder, create a new folder named:

    wsbuild64

## 🗂️ Step 4: Add Batch Files

Copy the following batch files from this repository into the wsbuild64 folder:

- wireshark-gen.bat
- wireshark.bat

### Final structure:

    C:\Development
    ├── wireshark-src
    ├── wsbuild64
    │   ├── wireshark-gen.bat
    │   └── wireshark.bat

## ⚙️ Step 5: Generate Build Files (Run as Administrator)

Open x64 Native Tools Command Prompt for Visual Studio as Administrator

Search for “x64 Native Tools Command Prompt for Visual Studio”

Navigate to the build directory:

    cd C:\Development\wsbuild64
  Run the generator script:
    
    wireshark-gen.bat

## 🏗️ Step 6: Build Wireshark

After successful generation, build Wireshark using:

    wireshark.bat

