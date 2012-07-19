#!/bin/bash

function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo sine $note
        done
    ) tempo "8" fade 0.03 0.3
}

synth 'F3 C5 E7'
synth 'F2 Eb5'
synth 'C4 G5 F7'
synth 'C4 Eb6'
synth 'F3 F2'
synth 'F2 Eb5 G7'
synth 'G#3 G6'
synth 'Bb3 Eb6'
