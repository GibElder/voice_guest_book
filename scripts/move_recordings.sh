#!/bin/bash
DEST="/home/youruser/voicemail-archive"

mkdir -p "$DEST/1111"
mkdir -p "$DEST/2222"

mv /var/spool/asterisk/voicemail/1111/*.wav "$DEST/1111/" 2>/dev/null
mv /var/spool/asterisk/voicemail/2222/*.wav "$DEST/2222/" 2>/dev/null