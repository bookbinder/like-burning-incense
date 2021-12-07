\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A2-Vespers-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 11"
    psalm_subtitle = "God is the unfailing support for the just"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "In the Lord I have taken my re" -- fuge.
        \ll "How can you say to" my soul:
        \ll "‘Fly like a bird to" its mountain.

    \ll "See the wicked bracing" their bow;
        \ll "they are fixing their arrows on" the string
    \ll "to shoot upright men in" the dark.
        \ll "Foundations once destroyed, what can the" just do?’

    \ll "The Lord is in his ho" -- ly temple,
        \ll "the Lord, whose throne is" in heaven.
    \ll "His eyes look down on" the world;
        \ll "his gaze tests mor" -- tal men.

    \ll "The Lord tests the just and" the wicked;
        \ll "the lover of violence" he hates.
    \ll "He sends fire and brimstone on" the wicked;
        \ll "he sends a scorching wind as" their lot.

    \ll "The Lord is just and" loves justice;
        \ll "the upright shall see" his face.

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
%    \set includeGraceNotes = ##t
%
%}
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
    \sopranoOne
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
    \altoOne
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
    \tenorOne
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
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}
