#!/bin/bash
# Hangman

function todashes {
    for i in $(seq 1 ${#REAL_WORD}); do
        ${REAL_WORD:i-1:1}
    done
}


#${string/substring/replacement}

REAL_WORD="MONKEY"
HIDDEN_WORD=""
COUNT=6

echo "You are going to play hangman"
echo "Use only capital letters"
sleep 1
echo "Ready"
sleep 1
echo "GO!!"

todashes

while [ $COUNT -gt 0 ]; do
    read LETTER
    if [[ *"$LETTER"* == REAL_WORD ]]; then
        echo "yes"
    fi
    sleep 1
    let COUNT=COUNT-1
done