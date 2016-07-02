#!/bin/bash
# _____________________________________________________________________________________________________
#|                                                                                                     |
#| Ce script serts à créer les dossiers/fichiers de bases pour rédiger correctement un playbook Ansible|
#|_____________________________________________________________________________________________________|
# By aydent

# création des dossiers
mkdir roles && mkdir group_vars
mkdir ./roles/common
mkdir ./roles/common/handlers && mkdir ./roles/common/tasks && mkdir ./roles/common/templates

# création des fichiers nu de bases
touch site.yml hosts 
touch ./roles/common/handlers/main.yml && touch ./roles/common/tasks/main.yml
touch ./group_vars/all

#insertion des lignes de comms dans les fichiers nu
echo "---" >> ./roles/common/handlers/main.yml && echo "# Handler to handle common notifications. Handlers are called by other plays." >> ./roles/common/handlers/main.yml
echo "---" >> ./roles/common/tasks/main.yml && echo "# This playbook contains common plays that will be run on all nodes." >> ./roles/common/tasks/main.yml
echo "---" >> ./group_vars/all && echo "# Variables listed here are applicable to all host groups." >> ./group_vars/all
echo "---" >> site.yml && echo "# This playbook deploys the whole application stack in this site." >> site.yml


#message de fin
echo " C'est prêt."
echo " ( *)> "
echo " ( ()  "
echo " ----- "

exit 0;
