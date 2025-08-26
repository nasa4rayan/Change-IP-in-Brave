# Change-IP-in-Brave

Auto IP Changer using **Tor** for **Brave Browser** on Linux.

This script automatically changes your Tor IP every 60 seconds and launches Brave configured to use the Tor SOCKS5 proxy. Perfect for anonymous browsing without using the Tor Browser itself.

---

## Features

- Start Tor Snap daemon if it's not running.
- Automatically change Tor IP every 60 seconds.
- Launch Brave with Tor SOCKS5 proxy.
- Auto restart for Auto IP Changer in the background.

---

## Requirements

- Linux (Ubuntu/Debian recommended)
- Tor Snap: `sudo snap install tor`
- Brave Browser installed
- `nc` (Netcat) installed

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/<username>/Change-IP-in-Brave.git
cd Change-IP-in-Brave
Make the script executable:

bash
Copy
Edit
chmod +x braveip.sh
Usage
Run the script:

bash
Copy
Edit
bash braveip.sh
Brave will open using Tor proxy.

Tor IP will automatically change every 60 seconds.
