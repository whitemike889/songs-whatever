#!/bin/bash

function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo sawtooth $note
        done
    ) tempo "32" fade 0.03 0.1
}

synth 'F3 A3 C4 F4 A4'
synth 'F3 G#3 C4 F4 Bb4'
synth 'F3 G3 C4 F4 G4'
synth 'F3 A3 C4 F4 A4'
synth 'F3 G#3 D4 F4 Bb4 D5'
synth 'F3 Bb3 D4 F4 G#4 D5'
synth 'F3 G#3 D4 F4 Bb4 D5'
synth 'F3 Bb3 D4 F4 G#4 D5'
