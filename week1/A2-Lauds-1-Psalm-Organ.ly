\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A2-Lauds-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 5:2-10, 12-13"
    psalm_subtitle = "A morning prayer asking for help"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "--------->" "-->"
    \ll "To my words give" ear, O Lord,
        \ll "give heed to my" groaning.
    \ll "Attend to the sound" of my cries,
        \ll "my King and my" God.

    \ll "It is you whom I in" -- voke, O Lord.
        \ll "In the morning you" "hear me;"
    \ll "in the morning I offer" you my prayer,
        \ll "watching and" waiting.

    \ll "You are no God" who loves evil;
        \ll "no sinner is your" guest.
    \ll "The boastful shall not" stand their ground
        \ll "before your" face.

    \ll "You hate all" who do evil;
        \ll "you destroy all who" lie.
    \ll "The deceitful and blood" -- thir -- sty man
        \ll "the Lord de" -- tests.
\ll "But I through the greatness" of your love
        \ll "have access to your" house.
    \ll "I bow down before your" ho -- ly temple,
        \ll "filled with" awe.
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "Lead me, Lord, in your jus" -- tice,
        \ll "because of those who" lie in wait;
        \ll "make clear your way be" -- "fore me."

    \ll "No truth can be found" in their mouths,
        \ll "their heart is all" mischief,
    \ll "their throat a wide-" -- o -- pen grave,
        \ll "all honey their" speech.

    \ll "All those you protect" shall be glad
        \ll "and ring out their" joy.
    \ll "You shelter them; in you" they re -- oice,
        \ll "those who love your" name.

    \ll "It is you who bless the" just man, Lord:
        \ll "you surround him with favour as with a" shield.

    \ll "Glory to the Father and" to the Son,
        \ll "and to the Holy" Spirit:
    \ll "as it was in the begin" -- ning, is now,
        \ll "and will be for ever. A" -- men.  
}
sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \mark \markup { "D.C" }
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
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
    \tenorOneFlex
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
    \bassOneFlex
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
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
