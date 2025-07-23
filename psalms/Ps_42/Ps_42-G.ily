\header {
    psalm_title = "Psalm 42"
    psalm_subtitle = "Longing for the Lord’s presence in his Temple"
}
sopMusic = {
    \global
    \voiceOne
    \sopranoIntone
    \soprano
    \soprano
    \soprano
    \soprano
    \soprano
    \soprano
    \soprano
    \soprano 
    \soprano
    \soprano
    \mark "D.C."
}
altoMusic = {
    \global
    \voiceTwo
    \altoIntone
    \alto
    \alto
    \alto
    \alto
    \alto
    \alto
    \alto
    \alto
    \alto
    \alto

}
tenorMusic = {
    \global
    \voiceOne
    \tenorIntone
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
    \tenor
}

bassMusic = {
    \global
    \voiceTwo
    \bassIntone
    \bass
    \bass
    \bass
    \bass
    \bass
    \bass
    \bass
    \bass
    \bass
    \bass

}

\score {        
    <<
        \transpose \master-from-pitch \master-to-pitch {
          \transpose \frompitchG \topitchG {
            \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
            <<
                \new Staff ="up"
                <<
                    \clef treble \toneKeysig
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    \new Lyrics \lyricsto Soprano \text
                    \new Lyrics \lyricsto Soprano \textB
                    \new Lyrics \lyricsto Soprano \textC
                >>
                \new Staff ="down"
                <<
                    \clef bass \toneKeysig
                    \accidentalStyle forget
                    \new Voice = "Tenor" \tenorMusic
                    \new Voice = "Bass" \bassMusic
                >>
            >>
        }
      }
    >>

    \layout 
    {
      indent = 0.5\in
      ragged-last = ##t
        \context 
        { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    } 

}
