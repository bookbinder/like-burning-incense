\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A4-Vespers-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 27 - II"
    % psalm_subtitle = "II"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O Lord, hear my voice when" I call;
        \ll "have mercy" and \ll answer.
    \ll "Of you my heart" has \ll spoken:
        \ll "‘Seek" his face.’

    \ll "It is your face, O Lord, that" I seek;
        \ll "hide not" your face.
    \ll "Dismiss not your servant" in \ll anger;
        \ll "you have been" my help.

    \ll "Do not abandon or" for -- \ll "sake me,"
        \ll "O God" my help!
    \ll "Though father and mother" for -- \ll "sake me,"
        \ll "the Lord will" re -- \ll "ceive me."

    \ll "Instruct me, Lord, in" your way;
        \ll "on an even" path \ll "lead me."
    \ll "When they lie in ambush" pro -- \ll "tect me"        \ll "from my ene" -- my’s greed.
    \ll "False witnesses rise" a -- \ll "gainst me,"
        \ll "breathing" out fury.

    \ll "I am sure I shall see the" Lord’s \ll goodness
        \ll "in the land of" the \ll living.
    \ll "Hope in him, hold firm and" take heart.
        \ll "Hope in" the Lord!

    \ll "Glory to the Father and to" the Son,
        \ll "and to the Ho" -- ly \ll Spirit:
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
