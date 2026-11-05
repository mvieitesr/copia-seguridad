#!/bin/bash
#Copia de seguridad de una carpeta en un .tar.gz con fecha
DESTINO="${DESTINO:-$HOME/copias}"

if [ "$1" = "--lista" ]; then
  ls -1 "$DESTINO"
  exit 0
fi

if [ ! -d "$1" ]; then
  echo "Error: no existe la carpeta $1" >&2
  exit 1
fi



mkdir -p "$DESTINO"
FICHERO="$DESTINO/copia-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czf "$FICHERO" -C "$1" .
echo "Copia creada: $FICHERO"
ls -liha "$FICHERO"
