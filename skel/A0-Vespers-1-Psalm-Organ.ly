\version "2.20.0"

\include "../lbi_defs_cantor.ily"
\include "notes/A0-Vespers-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 141:1-9"
    psalm_subtitle = "A prayer when in danger"
}

text = \lyricmode {
    % \override InstrumentName #'X-offset = #2
    % \override InstrumentName #'font-series = #'bold
    % \set stanza = # "1. "
    % \set shortVocalName = "1."
    \set includeGraceNotes = ##t

}
% textB = \lyricmode {
%     \override InstrumentName #'X-offset = #2
%     \override InstrumentName #'font-series = #'bold	
%     \set includeGraceNotes = ##t
%     \set stanza = # "2. "
%     \set shortVocalName = "2."
% }
sopMusic = {
    \global
    \voiceOne

}
altoMusic = {
    \global
    \voiceTwo

}  
tenorMusic = {
    \global
    \voiceOne

}
bassMusic = {
    \global
    \voiceTwo

}

\score {        
    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                       \clef treble
                       \accidentalStyle forget
                       \new Voice = "Soprano" \sopMusic
                       \new Voice = "Alto" \altoMusic
                       \new Lyrics \lyricsto Soprano \text
                       % \new Lyrics \lyricsto Soprano \textB
                       %\new Lyrics \lyricsto Soprano \textC
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
    
    \layout { 
        ragged-last = ##t
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
