\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A6-Vespers-Mag-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Magnificat"
    %psalm_subtitle = ""
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
   \override InstrumentName #'X-offset = #4
   \override InstrumentName #'font-series = #'bold
   \set stanza = # "1. "
   \set shortVocalName = "1."
    \set includeGraceNotes = ##t
  \ll "My soul proclaims the greatness of the" Lord,
\ll "my spirit rejoices in God" my Savior;
\ll "for he has looked with favor on his low" -- ly servant.
\ll "From this day all generations will call me" blessed:
\ll "the Almighty has done great things" for me,
\ll "and holy is" his Name.
\ll "He has mercy on those" who \ll "fear him"
\ll "in every ge" -- ne -- ration.
\ll "He has shown the strength of" his arm,
\ll "he has scattered the proud in their" con -- ceit.
\ll "He has cast down the mighty from" their thrones,
\ll "and has lifted up" the lowly.
\ll "He has filled the hungry with" good things,
\ll "and the rich he has sent a" -- way empty.
\ll "He has come to the help of his ser" -- vant Israel,
\ll "for he has remembered his promise" of mercy,
\ll "The promise he made to" our fathers,
\ll "to Abraham and his children" for ever.
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "--->" "-->"
\ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "--->" "-->"
\ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.

}
sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
}   
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
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
		        \new Lyrics \lyricsto Soprano \textB
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
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
