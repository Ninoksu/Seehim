#!/bin/bash

menu() {

  printf "\n"
  printf "\e[2C\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Ngrok\e[0m\n"
  printf "\n"
  printf "\e[2C\e[1;92m[\e[0m\e[1;77m97\e[0m\e[1;92m]\e[0m\e[1;93m Disclaimer  \e[0m\e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;93m Credits  \e[0m\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
  printf "\n"
  read -p $'\n\e[2C\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

  if [[ ($option == 01) || ($option == 1) ]]; then
    startServer

  elif [[ $option == 97 ]]; then
    disclaimer
    sleep 5
    clear
    banner
    menu

  elif [[ $option == 98 ]]; then
    printf "\e[1;93m [!] SullFurix (@sullfurix)\e[0m\n"
    sleep 3
    clear
    banner
    menu

  elif [[ $option == 99 ]]; then
    stop
    exit 1

  else
    printf "\e[1;93m [!] Invalid option!\e[0m\n"
    sleep 1
    clear
    banner
    menu
  fi
}
