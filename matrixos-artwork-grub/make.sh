#!/bin/bash

set -e

RESOLUTIONS=("1024x768" "1920x1080" "1280x720")
WORKDIR=$(dirname "${0}")

for res in "${RESOLUTIONS[@]}"; do
	echo "Doing resolution: ${res}"
	magick convert -background none -size ${res}! "${WORKDIR}/grub.svg" \
		-strip -alpha on -depth 8 \
		"${WORKDIR}/themes/matrixos-theme/matrixos-${res}.png"
done
