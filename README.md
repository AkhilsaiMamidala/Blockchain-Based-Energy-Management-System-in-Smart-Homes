# ⚡ Blockchain-Based Energy Management System in Smart Homes

A decentralized application (DApp) that manages and trades energy units between smart homes using blockchain technology.

---

## 🧱 Project Structure

```
.
├── build/                # Compiled contract files
├── client/               # Front-end code (HTML/JS)
├── contracts/            # Solidity smart contracts
├── migrations/           # Deployment scripts
├── test/                 # Test files
├── truffle-config.js     # Truffle config
└── README.md
```

---

## 🚀 Technologies

- Solidity, Truffle, Ganache, MetaMask  
- HTML, CSS, JavaScript  
- Web3.js  
- Exsat (Bitcoin-based simulation)  
- VS Code

---

## ⚙️ Setup Instructions

### 1. Clone the repo

```bash
git clone https://github.com/AkhilsaiMamidala/Blockchain-Based-Energy-Management-System-in-Smart-Homes.git
cd Blockchain-Based-Energy-Management-System-in-Smart-Homes
```

### 2. Install Truffle globally

```bash
npm install -g truffle
```

### 3. (If starting from scratch) Initialize Truffle

```bash
truffle init
```

> *Skip this if you already have the folder structure.*

### 4. Start Ganache (GUI or CLI)

- Note the RPC server (usually http://127.0.0.1:7545)  
- Use provided accounts for MetaMask

### 5. Compile and deploy contracts

```bash
truffle compile
truffle migrate
```

### 6. Run the Frontend

- Open `client/index.html` with Live Server in VS Code or any browser.

---

## 🧪 Testing

```bash
truffle test
```

---

## 🔐 MetaMask Setup

- Connect MetaMask to Ganache’s RPC URL  
- Import an account using Ganache's private key  
- Make sure the wallet is unlocked while interacting

---

## 📌 Notes

- Simulated Bitcoin transactions via Exsat & MetaMask  
- Ensure MetaMask is connected to Ganache network

---

## 📄 License

MIT License
