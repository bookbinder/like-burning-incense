\header {
    psalm_title = "Canticle, Isaiah 12:1-6"
    psalm_subtitle = "Joy of God's ransomed people"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne

}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwo
    \altoOne
    \altoTwo
    \altoOneFlex
    \altoTwo
    \altoOneFlex
    \altoTwo
    \altoOne

}

tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOneFlex
    \tenorTwo
    \tenorOneFlex
    \tenorTwo
    \tenorOne
}

bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwo
    \bassOne
    \bassTwo
    \bassOneFlex
    \bassTwo
    \bassOneFlex
    \bassTwo
    \bassOne

}

\score {        <<
    \transpose \master-from-pitch \master-to-pitch {
          \transpose \frompitch \topitch {
        \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
        <<
            \new Staff ="up"
            <<
                \clef treble \toneKeysig
                \accidentalStyle forget
                \new Voice = "Soprano" \sopMusic
                \new Voice = "Alto" \altoMusic
                \new Lyrics \lyricsto Soprano \text
                %\new Lyrics \lyricsto Soprano \textB
                %\new Lyrics \lyricsto Soprano \textC
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

\layout {
        indent = 0.5\in 
    ragged-last = ##t
    \context 
    { 
        \Staff 
        \remove Time_signature_engraver 
    } 


} 

}

