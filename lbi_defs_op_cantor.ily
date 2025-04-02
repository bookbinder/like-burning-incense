#(set-global-staff-size 17)

\paper {
    %line-width = 7.3\in
    print-page-number = #f
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

