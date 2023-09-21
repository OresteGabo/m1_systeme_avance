#!/bin/bash
#pay attention while initialising variables there is no space between the = sign and the vars
#chaine de traitement avec le pipe
#

email="oreste.muhirwa-gabo@uha.fr"
pin="1234"
nombre_max_dessai=2 #On met 2 car le 1er n'est pas compter
success=false

typedEmail=""
typedPin=""


while [ $nombre_max_dessai -gt 0 ] && [ "$success" == false ]; do

  if [ $# -eq 2 ]; then
    echo "L'utilisateur a entré les identifiants suivants : $typedEmail, $typedPin"
    if [ "$typedEmail" == "$email" ] && [ "$typedPin" == "$pin" ]; then
      success=true
    else
      echo "Identifiants incorrect : Resaississez"
      read -p "Email:" typedEmail
      read -p "Pin: " typedPin
    fi
  else
    echo "Assurez vous d'avoir mit le email et le mot de passe separé par l'espace: $#"
	echo "Identifiants incorrect : Resaississez"
	read -p "Email:" typedEmail
	read -p "Pin: " typedPin
	if [ "$typedEmail" == "$email" ] && [ "$typedPin" == "$pin" ]; then
            success=true
	else
	      echo "Identifiants incorrect : Resaississez"
	      read -p "Email:" typedEmail
	      read -p "Pin: " typedPin
	fi

  fi

  nombre_max_dessai=$((nombre_max_dessai-1))
done

if [ "$success" == true ]; then
  echo "Authentification reussi"
else
  echo "Authentification echoué veuillez contacter l'admin sur admin@uha.fr"


	PS3="Selectioner un option: "
	options=("Envoyer un email à administration@uha.fr" "Exit")

	select opt in "${options[@]}"; do
	    case $opt in
		"Envoyer un email à administration@uha.fr")
		    xdg-email --subject "Demande d'access" --body "Je voudrai creer un compte dans votre systeme, mon identifiant ne marche pas" --to "administration@uha.fr"
		    ;;
		"Exit")
		    break
		    ;;
		*)
		    echo "Invalide"
		    ;;
	    esac
	done

fi
