# Termux-Linux-Desktop

Run XFCE Desktop and GUI applications on Android using **Termux Native** and **Termux-X11** – no root required.

---

## ✨ Features

- Lightweight XFCE4 Desktop Environment
- Native Termux + Termux-X11 (no PRoot!)
- Audio support via PulseAudio
- Runs GUI apps smoothly
- Compatible with `cava` and other terminal visualizers

---

## 🙌 Credits
Inspired by the Termux community, Linux DroidMaster, and ChatGPT.


---

## 🖥️ Preview

![preview](pic.jpg) coming soon

---

## 📦 Requirements

Allow Termux to access internal storage first:

```bash
termux-setup-storage

```

install required package.

```bash
pkg update
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
```


## 🖥️ XFCE Desktop Installation

Install the XFCE desktop environment (lightweight and fast):

```
pkg install xfce
```

## 🎧 Audio Setup (Optional)

Start PulseAudio before running GUI apps:

```
pulseaudio --start
```


---

### 🚀 Start GUI Session

Make sure the Termux-X11 app is open and running (usually on display :0).

Then run:
```
export DISPLAY=:0
startxfce4
```

---

## ⚡ Quick Start Script 

To automate the setup and launch, use the following script:

```
wget https://raw.githubusercontent.com/mzfannn/Termux-X11-Desktop/main/script/run_desktop.sh
chmod +x run_desktop.sh
./run_desktop.sh
```

## ⚙️ Optional: Create Alias for Easy Access

If you want to run the desktop with a short command like gui, add this alias to your Termux shell config:

```
echo 'alias gui="bash ~/run_desktop.sh"' >> ~/.bashrc
source ~/.bashrc
```

Now you can just type:
```
gui
```
> 💡 Make sure run_desktop.sh is saved in your $HOME directory (~/).

Enjoy you desktop🎉
