#!/bin/sh
#site builder

pandoc -s index.md -o index.html -H assets/includes/header.html -A assets/includes/footer.html -c assets/css/main.css -V lang=en --metadata title="December Adventure"
