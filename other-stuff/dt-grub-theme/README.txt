DT Minimal — thème GRUB pour Gentoo
===================================

Style : minimal, fond presque noir, texte crème, accent orange, bordures gris
sourds. La palette reprend les couleurs de la configuration fsel fournie.

Installation manuelle
---------------------

1. Décompressez l'archive.
2. Copiez le dossier `dt-grub-theme` dans le répertoire de thèmes GRUB, par
   exemple :

       sudo mkdir -p /boot/grub/themes
       sudo cp -r dt-grub-theme /boot/grub/themes/

   Vous obtiendrez `/boot/grub/themes/dt-grub-theme/theme.txt`.

3. Éditez `/etc/default/grub` et définissez :

       GRUB_GFXMODE=auto
       GRUB_TERMINAL_OUTPUT=gfxterm
       GRUB_THEME="/boot/grub/themes/dt-grub-theme/theme.txt"

   Si `GRUB_GFXMODE` ou `GRUB_TERMINAL_OUTPUT` sont déjà configurés, adaptez
   les lignes existantes au lieu de créer des doublons.

4. Régénérez la configuration GRUB. Sur Gentoo, la commande dépend de votre
   installation. Vérifiez d'abord la méthode fournie par votre paquetage :
   `grub-mkconfig -o /boot/grub/grub.cfg` est courante, mais votre chemin peut
   être différent.

5. Redémarrez pour vérifier le rendu. Gardez un moyen de démarrer ou réparer
   GRUB si le mode graphique n'est pas pris en charge.

Notes
-----

- Le thème utilise la police GRUB `Unifont Regular`, couramment disponible.
  Les polices GRUB sont des polices PFF2, pas simplement les polices système.
- Le thème ne modifie pas les entrées de démarrage, le noyau, ni les options
  de sécurité.
- Le thème n'inclut pas d'image de fond : il utilise la couleur `#0f0f0f`.
