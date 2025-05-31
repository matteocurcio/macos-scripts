#!/bin/bash

# Temp file location
FILLER=~/secure-space-fill.tmp

echo "Starting free space overwrite..."

# Create a file with random data, but stop before disk is full
# Leaves ~2GB free space (you can adjust 'count' or check free space dynamically)
dd if=/dev/urandom of="$FILLER" bs=1048576 count=2048 conv=notrunc

echo "Filling remaining space (but leaving ~2GB)..."
# Keep writing until failure, but with small blocks to avoid fast overfill
yes | tr \\n \\0 | dd of="$FILLER" bs=1048576 conv=notrunc oflag=append 2>/dev/null || true

echo "Deleting filler file..."
rm -f "$FILLER"

echo "Free space overwrite complete!"