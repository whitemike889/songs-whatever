#!/bin/bash

function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo sine $note
            echo square $note
        done
    ) tempo "8"
}

synth 'C3 Eb3 G3 C4'
synth 'F#3 Bb3 D4'
synth 'G3 Bb3 Eb4'
synth 'Bb3 D4 F4'
synth 'A3 D4 F#4'
synth 'Bb3 D4 G4'
synth 'A3 D4 F#4'
synth 'Bb3 D4 G4'
synth 'C4 Eb4 G4'
synth 'Bb3 D4 G4'
synth 'A3 D4 F#4'
synth 'G3 Bb3 Eb4'
synth 'F#3 Bb3 D4'
synth 'C3 Eb3 G3 C4'
synth 'D3 F3 Bb3 D4 F4 Bb4'
