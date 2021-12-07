\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A6-Lauds-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Canticle, Isaiah 45:15-25"
    myspacer = "—"
    psalm_subtitle = "People of all nations will become disciples of the Lord"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Truly with you God" is hidden,
    \ll "the God of Israel," the savior!

    \ll "Those are put to shame and" dis -- grace
    \ll "who vent their anger" a -- \ll "gainst him;"

    \ll "Those go in" dis -- grace 
    \ll who carve images.
    
    \ll "Israel, you are saved by the Lord, saved fore" -- ver!
    \ll "You shall never be put to shame or" dis -- grace 
    \ll "in fu" -- ture ages.

    \ll "For thus says the" Lord,
    \ll "The creator of the heavens, who" is God,
    \ll "the designer and maker of" the earth, 

    \ll "who established" it,
    \ll "not creating it to be" a waste,
    \ll "but designing it to" be \ll "lived in:"

    \ll "I am the Lord, and there is no o" -- ther.
    \ll "I have not spoken" from hiding
    \ll "nor from some dark place of" the earth,

    \ll "And I have not said to the descendants" of Jacob,
    \ll "“Look for me in an em" -- pty waste.”

    \ll "I, the Lord, pro" -- mise justice,
    \ll "I foretell what" is right.

    \ll "Come and assemble, gather" to -- gether,
    \ll "you fugitives from among" the Gentiles!

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "They are without knowledge who bear woo" -- den idols
    \ll "and pray to gods that can" -- not save.  
    
    \ll "Come here and" de -- clare 
    \ll "in counsel" to -- gether:
    
    \ll "Who announced this from the" be -- ginning 
    \ll "and foretold it from"  of old? 
    
    \ll "Was it not I, the" Lord,
    \ll "besides whom there is no o" -- ther God?
    \ll "There is no just and saving God" but me.

    \ll "Turn to me and be" safe,
    \ll "all you ends of" the earth,
    \ll "for I am God; there is" no other!
    
    \ll "By myself I" swear,
    \ll "uttering my just" de -- cree
    \ll "and my unalterab" -- le word:
    
    \ll "--->" "-->"
    \ll "To me every knee" shall bend;
    \ll "by me every tongue" shall swear,

    \ll "saying, “Only in" the Lord
    \ll "are just deeds" and power.

    \ll "Before him in shame" shall come
    \ll "all who vent their anger" a -- \ll "gainst him."

    \ll "In the Lord shall be the vindication and" the glory
    \ll "of all the descendants" of Israel.”

    \ll "Glory to the Father and to" the Son,
        \ll "and to the Ho" -- ly Spirit:

    \ll "as it was in the beginning," is now,
        \ll "and will be for ever." A -- men.
}
textC = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "3. "
    \set shortVocalName = "3."
    \set includeGraceNotes = ##t
    \ll "Glory to the Father and to" the Son,
        \ll "and to the Ho" -- ly Spirit:

    \ll "as it was in the beginning," is now,
        \ll "and will be for ever." A -- men.
}
sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \mark "D.C."
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwoFlex
    \altoOneFlex
    \altoTwoFlex
    \altoOneFlex
    \altoTwo
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwoFlex
    \bassOneFlex
    \bassTwoFlex
    \bassOneFlex
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
	                \new Lyrics \lyricsto Soprano \textC
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
