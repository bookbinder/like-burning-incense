\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A4-Lauds-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 47"
    psalm_subtitle = "The Lord Jesus is King of all"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "All peoples, clap" your hands,
        \ll "cry to God with shouts" of joy!
    \ll "For the Lord, the Most High, we" must fear,
        \ll "great king over all" the earth.

    \ll "He subdues peoples un" -- der us
        \ll "and nations under" our feet.
    \ll "Our inheritance, our glory, is" from him,
        \ll "given to Jacob out" of love.

    \ll "God goes up with shouts" of joy;
        \ll "the Lord goes up with trum" -- pet blast.
    \ll "Sing praise for God," sing praise,
        \ll "sing praise to our king," sing praise.

    \ll "God is king of all" the earth,
        \ll "sing praise with all" your skill.
    \ll "God is king over" the nations;
        \ll "God reigns on his ho" -- ly throne.

    \ll "The princes of the people are" as -- sembled
        \ll "with the people of Abra" -- ham’s God.
    \ll "The rulers of the earth belong" to God,
        \ll "to God who reigns o" -- ver all.

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
