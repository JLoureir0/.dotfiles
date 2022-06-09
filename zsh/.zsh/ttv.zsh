function ttv() {
  if [[ $# -ge 1 ]]; then
    mpv "https://twitch.tv/$1" &
    google-chrome-stable --app="https://www.twitch.tv/popout/$1/chat?popout=" &
  fi
}
