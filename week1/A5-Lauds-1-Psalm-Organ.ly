\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A5-Lauds-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 57"
    psalm_subtitle = "Morning prayer in affliction"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Have mercy on me, God," have mercy
        \ll "for in you my soul has ta" -- ken refuge.
    \ll "In the shadow of your wings I" take refuge
        \ll "till the storms of destruction" pass by.

    \ll "I call to God the" Most High,
        \ll "to God who has always been" my help.
    \ll "May he send from heaven and save" me
    \ll "and shame those who" as -- \ll "sail me."
        \ll "May God send his truth and" his love.

    \ll "My soul lies down a" -- mong lions,
        \ll "who would devour the sons" of men.
    \ll "Their teeth are spears" and arrows,
        \ll "their tongue a shar" -- pened sword.

    \ll "O God, arise above" the heavens;
        \ll "may your glory shine" on earth!

    \ll "They laid a snare for" my steps,
        \ll "my soul was" bowed down.
    \ll "They dug a pit in" my path
        \ll "but fell in it" them -- selves.

    \ll "My heart is ready, O God, my heart" is ready.
    \ll "I will sing, I will sing" your praise.
        
    \ll "Awake, my soul, awake, lyre" and harp,
        \ll "I will awake" the dawn.

    \ll "I will thank you, Lord, among" the peoples,
        \ll "among the nations I" will \ll "praise you"
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "for your love reaches to" the heavens
        \ll "and your truth to" the skies.

    \ll "O God, arise above" the heavens;
        \ll "may your glory shine" on earth!  
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
    \sopranoOne
    \sopranoTwo
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
    \altoOne
    \altoTwo
    \altoOne
    \altoTwoFlex
    \altoOne
    \altoTwo
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
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
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
    \bassOne
    \bassTwo
    \bassOne
    \bassTwoFlex
    \bassOne
    \bassTwo
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
