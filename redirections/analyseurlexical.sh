#!/bin/bash

#Ces  variables de mot clés sont générés par un IA
# Mots-clés de Déclaration de Classe et d'Héritage
mots_cle_classe=("class" "extends" "implements")

# Mots-clés de Package et d'Importation
mots_cle_package_import=("package" "import")

# Mots-clés de Gestion d'Exception
mots_cle_exception=("try" "catch" "throw" "throws" "finally")

# Mots-clés d'Interface et d'Énumération
mots_cle_interface_enum=("interface" "enum")

# Annotations
mots_cle_annotation=("@Annotation")

# Mots-clés de Création d'Instance et d'Objet
mots_cle_instance_objet=("new" "this" "super")

# Mots-clés de Contrôle d'Accès
mots_cle_acces=("public" "protected" "private" "default")

# Mots-clés de Modificateurs de Méthode et de Variable
mots_cle_modificateurs=("static" "final" "abstract" "synchronized" "volatile")

# Mots-clés de Contrôle de Flux
mots_cle_controle_flux=("switch" "case" "default" "break" "continue")

# Autres Mots-clés Java Courants
autres_mots_cle=("return" "void")











# Ce tableau est generé par un IA
operators=("+" "-" "*" "/" "%" "++" "--" "=" "==" "!=" "<" ">" "<=" ">=" "&&" "||" "!" "&" "|" "^" "~" "<<" ">>" ">>>" "+=" "-=" "*=" "/=" "%=" "<<=" ">>=" ">>>=" "&=" "|=" "^=" "instanceof" "?:" "->")

entier=(1 2 3 4 5 6 7 8 9 0)


if [ $# -eq 0 ]; then
  exit
fi

if [ $# -eq 1 ]; then
  echo "le fichier est  : $1"
fi

if test -f "$1"; then
    echo "$1 existe."
  else
    echo "$1 n'existe pas"
    exit
fi

fichier_code=$(pwd)"/"$1


echo "Le fichier analysé est : $fichier_code"







# Function to check if a string is in an array
# Usage: is_string_in_array string_to_check "${array[@]}"
is_string_in_array() {
  local search="$1"
  shift # Shift to remove the first argument, leaving only the array elements

  for element in "$@"; do
    if [[ "$element" == "$search" ]]; then
      return 0 # Found the string in the array
    fi
  done

  return 1 # String not found in the array
}
<<comment

string_to_find="while"
if is_string_in_array "$string_to_find" "${motsCle[@]}"; then
  echo "$string_to_find found in the array."
else
  echo "$string_to_find not found in the array."
fi
comment






sentence=$(cat "$1")

for word in $sentence; do
    if is_string_in_array "$word" "${mots_cle_classe[@]}"; then
        echo "$word: est un mot clé class"
    else
        if is_string_in_array "$word" "${mots_cle_package_import[@]}"; then
            echo "$word: est un import"
        else
            if is_string_in_array "$word" "${mots_cle_exception[@]}"; then
                echo "$word: est un clé exception"
            else
                if is_string_in_array "$word" "${mots_cle_interface_enum[@]}"; then
                    echo "$word: est un enum"
                else
                    if is_string_in_array "$word" "${mots_cle_annotation[@]}"; then
                        echo "$word: est un mot clé annotation"
                    else
                        if is_string_in_array "$word" "${mots_cle_instance_objet[@]}"; then
                            echo "$word: est un mot clé instance objet"
                        else
                            if is_string_in_array "$word" "${mots_cle_acces[@]}"; then
                                echo "$word: est un d'acces"
                            else
                                if is_string_in_array "$word" "${mots_cle_modificateurs[@]}"; then
                                    echo "$word: est un modificateur"
                                else
                                    if is_string_in_array "$word" "${mots_cle_controle_flux[@]}"; then
                                        echo "$word: est un controle de flux"
                                    else
                                        if is_string_in_array "$word" "${autres_mots_cle[@]}"; then
                                            echo "$word: est un autre mot cle"
                                        else
                                            echo "$word: n'est pas encore reconnu"
                                        fi
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
done




