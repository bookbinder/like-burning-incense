\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A6-Lauds-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 100"
    psalm_subtitle = "The joyful of those entering God's temple"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Cry out with joy to the Lord, all the" earth.
        \ll "Serve the" Lord with gladness.
        \ll "Come before him, singing" for joy.

    \ll "Know that he, the Lord, is" God.
        \ll "He made us, we be" -- long to him,
        \ll "we are his people, the sheep of" his flock.

    \ll "Go within his gates, giving" thanks.
        \ll "Enter his courts with" songs of praise.
        \ll "Give thanks to him and bless" his name.

    \ll "Indeed, how good is the" Lord,
        \ll "eternal his mer" -- ci -- ful love.
        \ll "He is faithful from age" to age.

    \ll "Glory to the Father and" to the Son,
        \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
        \ll "and will be for ever." A -- men.  
}
%textB = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold	
%    \set includeGraceNotes = ##t
%    \set stanza = # "2. "
%    \set shortVocalName = "2."
%    \set includeGraceNotes = ##t
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
