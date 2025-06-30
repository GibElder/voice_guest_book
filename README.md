# Asterisk VoIP Two-Number Recorder

This project lets you record messages from a vintage phone dialing different numbers.

## 📞 How It Works

- Dial `1111`: Plays a funny message, records audio.
- Dial `2222`: Plays a serious message, records audio.
- Recordings are saved as WAV files in:
  - `/var/spool/asterisk/voicemail/1111/`
  - `/var/spool/asterisk/voicemail/2222/`

## 🛠 Setup

1. Install Asterisk.
2. Copy `sip.conf` to `/etc/asterisk/sip.conf`
3. Copy `extensions.conf` to `/etc/asterisk/extensions.conf`
4. Copy `sounds/*.wav` to `/var/lib/asterisk/sounds/custom/`
5. Reload Asterisk:
   ```bash
   sudo asterisk -rx "sip reload"
   sudo asterisk -rx "dialplan reload"