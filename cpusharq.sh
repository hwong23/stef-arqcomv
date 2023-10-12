# Actualiza reporte HMTL generado por Archi.

git checkout arq
git pull

mv ~/Downloads/tmpr/cmvarchidoc/* .

git add .
git commit -a -m "$1"
git push

git checkout main

