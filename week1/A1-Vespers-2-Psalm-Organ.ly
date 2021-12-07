\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A1-Vespers-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 114"
    psalm_subtitle = "The Israelites are delivered from the bondage of Egypt."
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "When Israel came forth" from Egypt,
        \ll "Jacob’s sons from an alien" people,
    \ll "Judah became the" Lord’s temple,
        \ll "Israel became his" kingdom.

    \ll "The sea fled at" the sight:
        \ll "the Jordan turned back on its" course,
    \ll "the mountains leapt" like rams
        \ll "and the hills like yearling" sheep.

    \ll "Why was it, sea, that" you fled,
        \ll "that you turned back, Jordan, on your" course?
    \ll "Mountains, that you leapt" like rams;
        \ll "hills, like yearling" sheep?

    \ll "Tremble, O earth, before" the Lord,
        \ll "in the presence of the God of" Jacob,
    \ll "who turns the rock into" a pool
        \ll "and flint into a spring of" water.

    \ll "Glory to the Father and to" the Son,
        \ll "and to the Holy" Spirit:
    \ll "as it was in the beginning," is now,
        \ll "and will be for ever. A" -- men.  
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
