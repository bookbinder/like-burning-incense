\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A0-Vespers-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")



\header {
    psalm_title = "Psalm 141:1-9"
    psalm_subtitle = "A prayer when in danger"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #2
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "I Have called to you, Lord; has" -- ten to \ll "help me!"
        \ll "Hear my voice when I cry" to you.
    \ll "Let my prayer arise before" you like incense,
        \ll "the raising of my hands like an evening" o -- blation.

    \ll "Set, O Lord, a guard o" -- ver my mouth;
        \ll "keep watch, O Lord, at the door of" my lips!
    \ll "Do not turn my heart to things" that are wrong,
        \ll "to evil deeds with men who" are sinners.

    \ll "Never allow me to share" in their feasting.
        \ll "If a just man strikes or reproves me it" is kindness;
    \ll "but let the oil of the wicked not a" -- noint my head.
        \ll "Let my prayer be ever against" their malice.

    \ll "Their princes were thrown down by the side" of the rock;
        \ll "then they understood that my words" were kind.
    \ll "As a millstone is shattered to pieces" on the ground,
        \ll "so their bones were strewn at the mouth of" the grave.

    \ll "To you, Lord God, my" eyes are turned:
        \ll "in you I take refuge; spare" my soul!
    \ll "From the trap they have laid for me" keep me safe:
        \ll "keep me from the snares of those who" do evil.

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #2
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever." A -- men.  

}
sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
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
        ragged-last = ##t
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
