\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A1-Vespers-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 110:1-5, 7"
    psalm_subtitle = "The Messiah, king and priest"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "The Lord’s revelation to my Mas" -- ter:
        \ll "‘Sit on" my right:
        \ll "your foes I will put beneath" your feet.’

    \ll "The Lord will wield from Zi" -- on
        \ll "your sceptre" of power:
        \ll "rule in the midst of all" your foes.

    \ll "A prince from the day of your" birth
        \ll "on the holy" moun -- tains;
        \ll "from the womb before the dawn I" be -- "got you."

    \ll "The Lord has sworn an oath he will not" change.
        \ll "‘You are a priest" for ever,
        \ll "a priest like Melchizedek" of old.’

    \ll "The Master standing at your" right hand
        \ll "will shatter kings in the day of" his wrath.

    \ll "He shall drink from the stream by" the wayside
        \ll "and therefore he shall lift up" his head.

    \ll "Glory to the Father and to" the Son,
        \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
        \ll "and will be for ever." A -- men.  
}
%textB = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold	
%    \set includeGraceNotes = ##t
%    \set stanza = # "2. "
%    \set shortVocalName = "2."
%
%}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
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
    \altoOneFlex
    \altoTwoFlex
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
    \tenorOneFlex
    \tenorTwoFlex
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
    \bassOneFlex
    \bassTwoFlex
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
		        %\new Lyrics \lyricsto Soprano \textB
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
