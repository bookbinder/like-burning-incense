\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A7-Lauds-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Canticle, Exodus 15:1-4a, 8-13, 17-18"
    psalm_subtitle = "Hymn of victory after the crossing of the Red Sea"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "I will sing to the Lord, for he is gloriously tri" -- umph -- ant;
    \ll "horse and chariot he has cast into" the sea.
    \ll "My strength and my courage is" the Lord,
    \ll "and he has been" my savior.
    \ll "He is my God," I \ll "praise him;"
    \ll "the God of my father, I" ex -- \ll "tol him."

    \ll "The Lord is a warrior, Lord is" his name!
    \ll "Pharaoh’s chariots and army he hurled into" the sea.
    \ll "At a breath of your anger the waters piled" up,
    \ll "the flowing waters stood like" a mound,
    \ll "the flood waters congealed in the midst of" the sea.

    \ll "The enemy boasted, “I will pursue and overtake" them;
    \ll "I will divide the spoils and have my fill" of them;
    \ll "I will draw my sword; my hand shall" de -- \ll "spoil them!”"

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "When your wind blew, the sea co" -- vered them;
    \ll "like lead they sank in the migh" ty waters.

    \ll "Who is like to you among the gods," O Lord?
    \ll "Who is like to you, magnificent" in \ll holiness?
    \ll "O terrible in renown, worker" of wonders,
    \ll "when you stretched out your right hand, the earth swal" -- lowed them!

    \ll "In your mercy you led the people you" re -- deemed;
    \ll "in your strength you guided them to your ho" -- ly dwelling.  

    \ll "--->" "-->"
    \ll "And you brought them in and planted them on the mountain of your" in -- heritance-
    \ll "the place where you made your seat," O Lord,
    \ll "--->" "-->"
    \ll "the sanctuary, O Lord, which your hands" es -- tablished.
    \ll "The Lord shall reign forever" and ever.
}
textC = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "3. "
    \set shortVocalName = "3."
    \set includeGraceNotes = ##t

    \ll "Glory to the Father and to" the \ll Son,
        \ll "and to the Ho" -- ly \ll Spirit:
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
    \sopranoOneFlex
    \sopranoTwoFlex
    \mark "D.C"
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOneFlex
    \altoTwoFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOneFlex
    \tenorTwoFlex
}

bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOneFlex
    \bassTwoFlex
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
