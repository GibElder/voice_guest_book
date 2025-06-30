#!/bin/bash
INPUT_DIR="/var/spool/asterisk/voicemail"
OUTPUT_DIR="/var/spool/asterisk/voicemail_mp3"

mkdir -p "$OUTPUT_DIR"

find "$INPUT_DIR" -type f -name "*.wav" | while read -r file; do
    base=$(basename "$file" .wav)
    dir=$(dirname "$file")
    subdir=$(echo "$dir" | sed "s|$INPUT_DIR||")
    outdir="$OUTPUT_DIR/$subdir"

    mkdir -p "$outdir"
    ffmpeg -y -i "$file" "$outdir/$base.mp3"
done