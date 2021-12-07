\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A1-Lauds-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 149"
    psalm_subtitle = "The joy of God's holy people"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Sing a new song" to the Lord,
        \ll "his praise in the assembly of the" faithful.
    \ll "Let Israel rejoice" in its Maker,
        \ll "let Zion’s sons exult in their" king.
    \ll "Let them praise his" name with dancing
        \ll "and make music with timbrel and" harp.

    \ll "For the Lord takes delight" in his people.
        \ll "He crowns the poor with" salvation.
    \ll "Let the faithful rejoice" in their glory,
        \ll "shout for joy and take their" rest.
    \ll "Let the praise of God be" on their lips
        \ll "and a two-edged sword in their" hand,

    \ll "to deal out vengeance" to the nations
        \ll "and punishment on all the" peoples;
    \ll "to bind their" kings in chains
        \ll "and their nobles in fetters of" iron;
    \ll "to carry out the sentence" pre -- -or -- dained:
        \ll "this honour is for all his" faithful.

    \ll "Glory to the Father and" to the Son,
        \ll "and to the Holy" Spirit:
    \ll "as it was in the begin" -- ning, is now,
        \ll "and will be for ever. A" -- men.  
}
%textB = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold	
%    \set includeGraceNotes = ##t
%    \set stanza = # "2. "
%    \set shortVocalName = "2."
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
