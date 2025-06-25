\header {
    psalm_title = "Canticle, Sirach 36:1-5, 10-13"
    psalm_subtitle = "Prayer of entreaty for the holy city, Jerusalem"
}


sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne

}

tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne

}

bassMusic = {
    \global
    \voiceTwo

    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne

}

\score { 
  <<
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
            %% \new Lyrics \lyricsto Soprano \textB
            %% \new Lyrics \lyricsto Soprano \textC
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
    \context { 
      \Staff 
      \remove Time_signature_engraver 
    }
  }
}
