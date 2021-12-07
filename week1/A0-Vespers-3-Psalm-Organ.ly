\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A0-Vespers-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    %dedication = "Dedication"
    psalm_title = "Canticle, Philippians 2:6-11"
    psalm_subtitle = "Christ, God's holy servant"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Though he was in the form of" God,
    \ll "Jesus did not deem equality" with God
    \ll "something to" be "grasped at."

    \ll "Rather, he emptied him" -- self
    \ll "and took the form of" a slave,
    \ll "being born in the likeness" of men.

    \ll "He was known to be of human" es -- tate
    \ll "and it was thus that he humbled" him -- self,
    \ll "obediently accepting e" -- ven death,
    \ll "death on" a cross!

    \ll "Because" of this,
    \ll "God highly exal" -- ted him
    \ll "and bestowed on him" the name
    \ll "above every o" -- ther name,  

    \ll "So that at Je" -- sus’ name
    \ll "every knee" must bend
    \ll "in the heavens, on" the earth,
    \ll "and under" the earth,
    \ll "and every tongue pro" -- claim
    \ll "to the glory of God" the Father:  
    \ll "JESUS CHRIST" IS LORD!

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
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
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
    \altoOneFlex
    \altoTwo
    \altoOne
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
    \tenorOneFlex
    \tenorTwo
    \tenorOne
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
    \bassOneFlex
    \bassTwo
    \bassOne
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
        ragged-last = ##t
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
