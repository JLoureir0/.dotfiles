function proj() {
  if [[ $# -ge 1 ]]; then
    local search=${(j:*:)@}
    local directories="$(find $HOME/Workspace -maxdepth 3 -type d -iname "*$search*")"
    local directoriesArray=(${(f)directories})

    if [[ ${#directoriesArray[@]} -gt 1 ]]; then
      for (( i = 1; i <= ${#directoriesArray[@]}; i++ )); do
        echo "${i}) ${directoriesArray[$i]}"
      done
      printf "Choose one: "
      read input
      if [[ $input =~ ^[1-9][0-9]*$ ]]; then
        if [[ $input -le ${#directoriesArray[@]}  ]]; then
          cd "${directoriesArray[$input]}"
        else
          echo "Wrong choice !!"
        fi
      else
        echo "Wrong choice !!"
      fi
    elif [[ ${#directoriesArray[@]} -eq 1 ]]; then
      cd "${directoriesArray[-1]}"
    else
      echo "Project does not exist !!"
    fi
  else
    echo "Usage: $0 (project)"
  fi
}
