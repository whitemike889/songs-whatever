#!/usr/bin/env node

function song (chords) {
    return flatten([
        'play', '-n', 'synth', '3',
        chords.map(function (c) {
            return c.map(function (n) { return [ 'square', n ] })
        }),
        'delay',
        chords.map(function (c, ix) {
            return ix / (chords.length - 1)
            //return c.map(function (n) { return ix * 100 })
        }),
        'tempo 2',
    ]);
}

function flatten (xs) {
    if (!Array.isArray(xs)) return xs;
    return xs.reduce(function (acc, x) {
        return acc.concat(flatten(x))
    }, []);
}

console.log(song([
    ['F3','A3','C4','F4','A4'],
    ['F3','G#3','C4','F4','Bb4'],
    ['F3','G3','C4','F4','G4'],
    ['F3','A3','C4','F4','A4'],
    ['F3','G#3','D4','F4','Bb4','D5'],
    ['F3','Bb3','D4','F4','G#4','D5'],
]).join(' '))

/*
function synth {
    play -n synth 3 $(
        for note in $(echo "$1"); do
            echo square $note
        done
    ) tempo "$2"
}

while true; do
    synth 'F3 A3 C4 F4 A4' 3
    synth 'F3 G#3 C4 F4 Bb4' 2
    synth 'F3 G3 C4 F4 G4' 3
    synth 'F3 A3 C4 F4 A4' 2
    synth 'F3 G#3 D4 F4 Bb4 D5' 3
    synth 'F3 Bb3 D4 F4 G#4 D5' 2
    synth 'F3 G#3 D4 F4 Bb4 D5' 3
    synth 'F3 Bb3 D4 F4 G#4 D5' 2
done
*/
