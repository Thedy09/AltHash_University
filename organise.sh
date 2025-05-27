#!/bin/bash

DEST="Certificates"

# Créer le dossier s'il n'existe pas
mkdir -p "$DEST"

echo "📂 Déplacement des fichiers dans '$DEST'..."

# Boucle sur les fichiers visibles uniquement
for file in *; do
  if [[ -f "$file" && "$file" != "$0" && "$file" != "README.md" ]]; then
    echo "➡️  Déplacement : $file"
    mv "$file" "$DEST/"
  fi
done

echo "✅ Tous les fichiers visibles ont été déplacés dans '$DEST'"
