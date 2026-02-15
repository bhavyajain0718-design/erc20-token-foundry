# 🪙 ERC20 Token Protocol

> A secure, production-style ERC20 implementation built with Solidity + Foundry  
> Designed to understand token mechanics, security risks, and real-world testing practices.

---

## 👋 About Me

Hi, I'm **Bhavya**  
Blockchain & DeFi developer focused on **smart contract engineering and protocol security**.

I build protocols from scratch to deeply understand:
- how they work  
- how they break  
- how to secure them  

---

## 🚀 Project Goal

This project was built to master the fundamentals behind the ERC20 standard using battle-tested contracts from OpenZeppelin and production-grade testing with Foundry.

Instead of just "deploying a token", the focus was:

✅ Understanding ERC20 internals  
✅ Studying allowance vulnerabilities  
✅ Implementing safe mint/burn logic  
✅ Writing fuzz & invariant tests  
✅ Thinking like a smart contract auditor  

---

## ✨ Features

### Core
- ERC20 compliant
- Transfers / approvals / transferFrom
- Minting
- Burning
- Custom decimals

### Security
- Access control (Ownable)
- Safe allowance handling
- Reentrancy-safe patterns
- Edge case protection

### Testing
- Unit tests
- Fuzz testing
- Invariant testing
- Gas reporting

---

## 🧠 What I Learned

- ERC20 storage & state layout
- Allowance attack vectors
- Token accounting invariants
- Gas optimization techniques
- Writing property-based tests
- Security-first smart contract design

---

## 🧱 Tech Stack

- Solidity
- Foundry
- OpenZeppelin

---

## 📂 Structure

src/        → token contracts  
test/       → unit + fuzz + invariant tests  
script/     → deployment scripts  

---

## ⚙️ Setup

### Install dependencies
```bash
forge install
