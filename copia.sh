#!/bin/bash
#Copia de seguridad de una carpeta en un .tar.gz con fecha
COPIA_DESTINO="${COPIA_DESTINO:-$HOME/copias}"

if [ "$1" = "--lista" ]; then
  ls -1 "$COPIA_DESTINO"
  exit 0
fi

if [ ! -d "$1" ]; then
  echo "Error: no existe la carpeta $1" >&2
  exit 1
fi



mkdir -p "$COPIA_DESTINO"
FICHERO="$COPIA_DESTINO/copia-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czf "$FICHERO" -C "$1" .
echo "Copia creada: $FICHERO"
ls -liha "$FICHERO"
