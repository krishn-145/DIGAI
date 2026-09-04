**DIGAI** 🤞🏻
---
<img width="1254" height="1254" alt="46486" src="https://github.com/user-attachments/assets/00ed3970-f33f-4abf-af7b-6b97f622c375" />

DIGAI is a Termux-based AI coding assistant powered by the OpenRouter API.
It can generate complete software projects with multiple files directly from your Android device.

«BY HARI • ONXX 🚀»

---

✨ Features

- 🤖 AI-powered code generation
- 📱 Designed for Termux
- 🧩 Multi-file project generation
- 🐍 Python support
- ☕ Java support
- 🟣 Kotlin support
- 🌐 HTML / CSS / JavaScript support
- 🖥️ Bash scripting support
- ⚙️ C / C++ support
- 📦 Automatic "requirements.txt"
- 📦 Automatic "package.json" when required
- 📖 Automatic "README.md"
- ⚡ Automatic "install.sh"
- 🔐 API key stored separately from generated projects
- 🔄 Request retry support
- 🛡️ Basic project-path safety checks
- 🚫 Existing files are not silently overwritten

---

📱 Requirements

You need:

- Android phone
- Termux
- Internet connection
- OpenRouter API key

---

🚀 Installation

Clone the repository: 🫅🏻
```
git clone https://gitHub.com/onxx-x145/DIGAI.git
cd DIGAI
chmod +x install.sh
./install.sh
```

The installer will install the required Termux and Python dependencies.

---

🔑 API Key Setup

During installation DIGAI will ask for your OpenRouter API key.
---
**KEY_AI👉🏻👉🏻[openrouter](https://openrouter.ai/Keys)**
---
## Start Api_Key
```
export OPENROUTER_API_KEY="your-secret-key"
```
./digai.sh setup

The key is stored in:

~/.digai_env

The API key is not stored inside generated projects.

---

▶️ Start DIGAI

Run :
./digai.sh dig

You will see:

You >

Now describe the project you want.

Example:

Python calculator banao

or:

HTML portfolio website banao

or:

Java CLI application banao

---

🧠 How It Works

DIGAI sends your request to the AI model through OpenRouter.

The AI returns files using the following format:

FILE: main.py
print("Hello World")
END_FILE

DIGAI parses these "FILE" blocks and creates the project files automatically.

---

📂 Generated Project

For example, requesting a Python project can generate:

my_project/
├── main.py
├── requirements.txt
├── install.sh
├── README.md
└── .gitignore

---

🛠️ Commands

Install

./digai.sh install
Start

./digai.sh dig

Configure API Key
./digai.sh setup
Upda

./digai.sh update
---

💬 Chat Commands

Inside DIGAI:

/help

Show help.

/clear

Clear the current AI conversation.

/exit

Exit DIGAI.

---

🔐 Security

DIGAI is designed to keep API credentials outside generated source code.

Never commit your API key to GitHub.

Do not put this in your repository:

OPENROUTER_API_KEY="your-secret-key"

If you accidentally expose an API key, revoke it and create a new one.

---

📦 Dependencies

DIGAI uses:

requests
urllib3
certifi

Termux packages:

python
openssl
ca-certificates
git
curl

---

📱 Termux Installation

If Termux packages are outdated, update them first:
```
pkg update && pkg upgrade -y
```
Then run:
`
./digai.sh install
``
---

🌐 Supported Project Types

DIGAI can generate projects for many languages, including:

- Python
- Bash
- Java
- Kotlin
- JavaScript
- TypeScript
- HTML
- CSS
- C
- C++
- PHP
- Go
- Rust
- Ruby
- XML
- SQL

Actual project quality depends on the AI model and your prompt.

---

🧪 Example Prompts

Python

Create a Python file organizer for Termux.

Bash

Create a safe Termux backup utility.

Website

Create a responsive dark portfolio website using HTML CSS and JavaScript.

Java

Create a Java command-line calculator with a clean menu.

Android

Create a basic Android Java project with a simple activity.

---

🗂️ Project Structure

DIGAI/
│
├── digai.sh
├── README.md
└── LICENSE

The runtime files are stored separately:

~/.digai-ai-coder/
└── digai.py

---

🔄 Updating

To update the DIGAI runtime:

./digai.sh update

---

⚠️ Disclaimer

DIGAI is an AI-assisted development tool.

Generated code should always be reviewed before execution or deployment.

Do not run unknown generated scripts without inspecting them first.

Especially review:

cat install.sh

bash install.sh
---

👨‍💻 Developer

HARI • ONXX

Instagram: "@_insrnx_"

Telegram: "@onxx12"

YouTube: "@onxx-x145"

---

⭐ Support

If DIGAI is useful to you:

- ⭐ Star the repository
- 🐛 Report bugs
- 💡 Suggest features
- 🔧 Contribute improvements

---

📄 License

This project is provided for educational and development purposes.

See the repository "LICENSE" file for the applicable license terms.

---

🚀 DIGAI

AI Code Builder for Termux

BY HARI • ONXX ✨
