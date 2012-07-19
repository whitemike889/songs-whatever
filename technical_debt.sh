#!/bin/bash

function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo square $note
        done
    ) tempo "$2"
}

synth 'G3 C4 Bb4 Eb5' 4
synth 'G3 Bb4 Eb4 C5' 4
synth 'Bb4' 12
synth 'C5' 12
synth 'G3 C4 Bb4 Eb5' 4
synth 'G3 Bb4 Eb4 C5' 4
synth 'Bb3 Eb4 G4' 12
synth 'G3 Bb4 Eb4 C5' 12
synth 'Bb4' 8
synth 'A4' 12
synth 'G4 C4 Bb4 Eb5' 4
synth 'C5' 12
synth 'Bb4 A4' 4
synth 'G4 C4 Bb4 Eb5' 4
synth 'C5' 12
