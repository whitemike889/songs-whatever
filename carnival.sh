#!/bin/bash

function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo square $note
        done
    ) tempo "8" fade 0.03 0.3
}

synth 'C2 G5 C3'
synth 'Eb3 G#5 D7'
synth 'G3 Bb5'
synth 'Eb3 A5 C7'
synth 'C2 G#5'
synth 'Eb3 Eb5 Bb6'
synth 'G3 D5 A6'
synth 'Eb3 G5'
