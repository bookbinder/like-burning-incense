#(set-global-staff-size 15)

\paper {
    %line-width = 7.3\in
    print-page-number = ##t
    ragged-last = ##t
    scoreTitleMarkup = \markup {
        \fill-line {
            \fontsize #2 \bold \fromproperty #'header:psalm_title  %% User-defined field
            \fontsize #2 \italic \fromproperty #'header:psalm_subtitle %% User-defined field
        }
    }
}

ll = {
    \once \override LyricText.self-alignment-X = #LEFT
}

global = {
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    \override Lyrics.LyricSpace.minimum-distance = #1.0
}

midi_instrument = {
    \set Staff.midiInstrument = # "drawbar organ"
}

% #(define toneStruct (make-hash-table))
% #(hashq-set! toneStruct '01 "34")
% #(hashq-set! toneStruct '02 "43")
% #(hashq-set! toneStruct '03 "44")
% #(hashq-set! toneStruct '04 "33")
% #(hashq-set! toneStruct '05 "44")
% #(hashq-set! toneStruct '06 "43")
% #(hashq-set! toneStruct '07 "43")
% #(hashq-set! toneStruct '08 "33")
% #(hashq-set! toneStruct '09 "33")
% #(hashq-set! toneStruct '10 "33")
% #(hashq-set! toneStruct '11 "33")
% #(hashq-set! toneStruct '12 "34")
% #(hashq-set! toneStruct '13 "43")
% #(hashq-set! toneStruct '14 "43")
% #(hashq-set! toneStruct '15 "34")
% #(hashq-set! toneStruct '16 "44")
% #(hashq-set! toneStruct '17 "44")
% #(hashq-set! toneStruct '18 "43")
% #(hashq-set! toneStruct '19 "43")
% #(hashq-set! toneStruct '20 "42")
% #(hashq-set! toneStruct '21 "33")
% #(hashq-set! toneStruct '22 "43")
% #(hashq-set! toneStruct '23 "42")
% #(hashq-set! toneStruct '24 "33")
% #(hashq-set! toneStruct '25 "43")
% #(hashq-set! toneStruct '26 "33")
% #(hashq-set! toneStruct '27 "33")
% #(hashq-set! toneStruct '28 "43")
% #(hashq-set! toneStruct '29 "43")
% #(hashq-set! toneStruct '30 "32")
% #(hashq-set! toneStruct '31 "43")
% #(hashq-set! toneStruct '32 "33")
% #(hashq-set! toneStruct '33 "33")
% #(hashq-set! toneStruct '34 "33")
% #(hashq-set! toneStruct '35 "33")
% #(hashq-set! toneStruct '36 "33")
% #(hashq-set! toneStruct '37 "33")
% #(hashq-set! toneStruct '38 "32")
% #(hashq-set! toneStruct '39 "43")
% #(hashq-set! toneStruct '40 "43")
% #(hashq-set! toneStruct '41 "23")
% #(hashq-set! toneStruct '42 "43")
% #(hashq-set! toneStruct '43 "43")
% #(hashq-set! toneStruct '44 "32")
% #(hashq-set! toneStruct '45 "42")
% #(hashq-set! toneStruct '46 "33")
% #(hashq-set! toneStruct '47 "33")
% #(hashq-set! toneStruct '48 '43)
% #(hashq-set! toneStruct '49 "33")
% #(hashq-set! toneStruct '50 "33")
% #(hashq-set! toneStruct '51 "34")
% #(hashq-set! toneStruct '52 "44")
% #(hashq-set! toneStruct '53 "43")
% #(hashq-set! toneStruct '54 "43")
% #(hashq-set! toneStruct '55 "33")
% #(hashq-set! toneStruct '56 "43")
% #(hashq-set! toneStruct '57 "33")
% #(hashq-set! toneStruct '58 "33")

