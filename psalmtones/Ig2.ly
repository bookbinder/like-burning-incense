\version "2.18.2"
\include "notes/Ig2-notes.ily"


sopMusic = {
    \global
    \voiceOne
    \sopranoOneIntone
    \sopranoOneFlex
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneIntone
    \altoOneFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneIntone
    \tenorOneFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneIntone
    \bassOneFlex
  }
pedalMusic = {
  \global
  \voiceTwo
  \pedalOneIntone
  \pedalOneFlex
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_1A" }
    }
    <<
        \transpose e e {
            \new ChoirStaff \with { instrumentName = #"Ig2" } %LBI_1A
            <<
                \new Staff ="up"
                <<
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                >>
                \new Staff ="down"
                <<
                    \clef bass
                    \accidentalStyle forget
                    \new Voice = "Tenor" \tenorMusic
                    \new Voice = "Bass" \bassMusic
                    \new Voice = "Pedal" \pedalMusic
                >>
            >>
        }
    >>

    \layout 
    { 
        ragged-last = ##t
        \context 
        { 
            \Staff 
            \remove Time_signature_engraver 
        } 
    } 
}
