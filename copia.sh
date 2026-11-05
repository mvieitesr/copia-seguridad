#!/bin/bash
#Copia de seguridad de una carpeta en un .tar.gz con fecha
DESTINO="${DESTINO:-$HOME/copias}"
mkdir -p "$DESTINO"
FICHERO="$DESTINO/copia-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czf "$FICHERO" -C "$1" .
