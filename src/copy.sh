#!/usr/bin/env bash

DIR=$(pwd)
GREEN="\033[32m"
TEXT="\033[0;39m"
bold=$(tput bold)
normal=$(tput sgr0)

echo ""

for i in $DIR/*
do
    sleep 0.1
    ln -sfv $i ~/.local/bin/
done

echo -e "\n${GREEN}${bold}Scripts successfully copied!${TEXT}${normal}\n"
