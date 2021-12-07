\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A2-Lauds-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 29"
    psalm_subtitle = "A tribute of praise to the Word of God"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
   \override InstrumentName #'X-offset = #4
   \override InstrumentName #'font-series = #'bold
   \set stanza = # "1. "
   \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O give the Lord, you sons" of God,
        \ll "give the Lord glory" and power;
    \ll "give the Lord the glory of" his name.
        \ll "Adore the Lord in his ho" -- ly court.

    \ll "The Lord’s voice resounding on" the waters,
        \ll "the Lord on the immensity" of waters;
    \ll "the voice of the Lord, full" of power,
        \ll "the voice of the Lord, full" of splendour.

    \ll "The Lord’s voice shattering" the cedars,
        \ll "the Lord shatters the cedars" of Lebanon;
    \ll "he makes Lebanon leap like" a calf
        \ll "and Sirion like a young" wild ox.

    \ll "The Lord’s voice flashes flames of" fire.
    \ll "The Lord’s voice shaking" the wilderness,
        \ll "the Lord shakes the wilderness" of Kadesh;
    \ll "the Lord’s voice rending" the "oak tree"
        \ll "and stripping the fo" -- rest bare.

    \ll "The God of glor" -- y thunders.
        \ll "In his temple they all" cry: ‘Glory!’
    \ll "The Lord sat enthroned over" the flood;
        \ll "the Lord sits as king" for ever.

    \ll "The Lord will give strength to" his people,
        \ll "the Lord will bless his people" with peace.

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
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
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
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
    \altoOneFlex
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
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
    \tenorOneFlex
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
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
    \bassOneFlex
    \bassTwo
    \bassOne
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
