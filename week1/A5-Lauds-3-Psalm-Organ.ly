\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A5-Lauds-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 48"
    psalm_subtitle = "Thanksgiving for the people's deliverance"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "The Lord is great and worthy to" be praised
        \ll "in the city of" our God.
    \ll "His holy mountain rises" in beauty,
        \ll "the joy of all" the earth.

    \ll "Mount Zion, true pole of" the earth,
        \ll "the Great" King’s city!
    \ll "God, in the midst of" its citadels,
        \ll "has shown himself" its stronghold.

    \ll "For the kings assembled" to -- gether,
        \ll "together they" ad -- vanced.
    \ll "They saw; at once they were" a -- stounded;
        \ll "dismayed, they fled" in fear.

    \ll "A trembling seized" them there,
        \ll "like the pangs" of birth.
    \ll "By the east wind you have" de -- stroyed
        \ll "the ships" of Tarshish.

    \ll "As we have heard, so we" have seen
        \ll "in the city of" our God,
    \ll "in the city of the Lord" of hosts
        \ll "which God upholds" for ever.

    \ll "O God, we ponder" your love
        \ll "within" your temple.
    \ll "Your praise, O God, like" your name
        \ll "reaches the ends of" the earth.

    \ll "With justice your right hand "is filled.
        \ll "Mount Zion" re -- joices;
    \ll "the people of Judah" re -- joice
        \ll "at the sight of" your judgements.

    \ll "Walk through Zion, walk all round" it;
    \ll "count the number of" its towers.
        \ll "Review all its ramparts, examine" its castles,

    \ll "that you may tell the next ge" ne -- ration
        \ll "that such is" our God,
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "our God for ever" and always.
        \ll "It is he" who \ll "leads us."

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
    \sopranoTwo
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
    \sopranoOneFlex
    \sopranoTwo
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
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOneFlex
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
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOneFlex
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
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOneFlex
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
