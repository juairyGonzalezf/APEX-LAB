#!/bin/bash
cd /home/tomcat/export

# Intentar sincronizar primero para evitar el error que te acaba de dar
#git pull server21 main

# Añadir cambios nuevos
git add .

# Hacer commit solo si hay cambios (para no llenar el log de basura)
if ! git diff-index --quiet HEAD --; then
    git commit -m "Auto-sync: $(date +'%Y-%m-%d %H:%M:%S')"
    git push server21 main
fi

