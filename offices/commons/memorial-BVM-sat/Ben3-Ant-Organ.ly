\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_op.ily"
\include "notes/Ben3-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    <<
       \new ChoirStaff \with {
           instrumentName = \markup {
               \center-column {
                     \bold { \line { Ant. \antiphon } }
                     \concat { (#psalmtone) } }
           }
       }

       <<
           \new Staff = "up"
           <<
               \midi_instrument
               \clef treble
               \accidentalStyle forget
               \new Voice = "Soprano" {
                 \sopNotesAnt
                 
               }
               \new Voice = "Alto" {
                 \altoNotesAnt
                 
               }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \midi_instrument
               \clef bass
               \accidentalStyle forget
               \new Voice = "Tenor" {
                 \tenorNotesAnt
                 
               }
               \new Voice = "Bass" {
                 \bassNotesAnt
                 
               }
           >>
       >>
    >>
  }
    \layout {
        ragged-last = ##t
        \context {
            \Staff
            \remove Time_signature_engraver
        }

    }
    %\midi {}
}

\include "/home/ryan/scores/like-burning-incense/psalmtones/notes/43-notes.ily"

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    %\altoOne
    %\altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    %\tenorOne
    %\tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    %\bassOne
    %\bassTwo
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_3a" }
    }
    <<
        \transpose f g {



            \new ChoirStaff \with { instrumentName = #"43" } % LBI_7c
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
