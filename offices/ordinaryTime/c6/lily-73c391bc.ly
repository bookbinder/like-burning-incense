%% Generated by lilypond-book
%% Options: [indent=0\mm,line-width=6.9\in]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6.9\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "B0-Vespers-1-Ant-Organ.ly"
\sourcefileline 0
\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/B0-Vespers-1-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
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
               \new Voice = "Soprano" \sopNotesAnt
               \new Voice = "Alto" \altoNotesAnt
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \midi_instrument
               \clef bass
               \accidentalStyle forget
               \new Voice = "Tenor" \tenorNotesAnt
               \new Voice = "Bass" \bassNotesAnt
           >>
       >>
    >>

    \layout {
        ragged-last = ##t
        \context {
            \Staff
            \remove Time_signature_engraver
        }

    }
    %\midi {}
}



% ****************************************************************
% end ly snippet
% ****************************************************************