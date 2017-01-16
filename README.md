EDIT : Une nouvelle VM est disponible , elle est réalisée par des tek2 et vous pouvez trouver les liens sur vos groupes Facebook Epitech de promo.
Ce patch est donc désormais inutile pour les étudiants.

Epitech Patch VM Exam 0.1

tuto disponible sur http://lp1.eu/patch_vm

Ce tuto est destiné aux étudiants souhaitant travailler sur la VM disponible sur ftp.epitech.eu pour leurs examens . La VM vmware proposée par le bocal ne permet pas de rentrer son token une fois loggé et boucle sur la séquence de login , voici comment la patcher simplement .

1. Changer le mot de passe root de la VM

La première étape consiste à changer le mot de passe de l'user root de la machine virtuelle .

Au lancement du GRUB , appuyez sur la touche E lorsque "opensuse-exam" est mis en surbrillance pour éditer l'entrée .

Changez ensuite après la ligne 
(...)splash=silent quiet showopts

en 
(...)splash=silent quiet showopts init=/bin/sh

Enfin , utilisez ctrl+x pour démarrer votre partition exam en root.

Entrez dans le prompt affiché la commande passwd et entrez le nouveau mot de passe root (attention en qwerty ; loadkeys fr pour passer en azerty ). Vous pouvez ensuite l'éteindre manuellement depuis VMware.

2. Récupérer l'IP de sa VM

Il va ensuite falloir récupérer l'IP de votre machine virtuelle pour pouvoir communiquer avec elle . Démarrez votre machine et lorsque vous arrivez sur l'écran de login connectez vous sur un autre TTY avec ctrl+alt+F1.

Entrez "root" en login , et le mot de passe que vous avez choisi en mot de passe .

Ensuite notez l'IPV4 associée à l'interface 2:eth0 (de base sur la VM) donnée par la commande ip addr.

3. Lancer le fichier de patch

Pour la suite , gardez votre VM alllumée et lancez le script de patch disponible sur GitHub .

git clone https://github.com/lupin012345/patch_vm_epitech.git

Si vous avez rsync sur votre machine : 
sh patch_rsync.sh ip.de.ma.vm

Sinon : 
sh patch.sh ip.de.ma.vm

Il ne vous reste plus qu'a entrer le mot de passe root de la VM lorsque le script va vous le demander !

Si vous avec des questions / remarques , n'hésitez pas à me contacter sur epitech(at)lp1.eu .
