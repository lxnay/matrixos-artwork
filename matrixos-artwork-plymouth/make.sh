#!/bin/bash

set -e

RESOLUTIONS=("150x150")
WORKDIR=$(dirname "${0}")

for res in "${RESOLUTIONS[@]}"; do
	echo "Doing resolution: ${res}"
	magick convert -background none -size ${res}! "${WORKDIR}/matrixos-logo.svg" \
		-strip -alpha on -depth 8 \
		"${WORKDIR}/matrixos-logo-${res}.png"
done
