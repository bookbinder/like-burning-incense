\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A1-Lauds-1-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Psalm 63:2-9"
    psalm_subtitle = "A soul thirsting for God"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O God, you are my God, for you" I long;
        \ll "for you my soul" is thirsting.
    \ll "My body pines" for you
        \ll "like a dry, weary land with" -- out water.
    \ll "So I gaze on you in the sanctu" -- a -- ry
        \ll "to see your strength and" your glory.

    \ll "For your love is better" than life,
        \ll "my lips will speak" your praise.
    \ll "So I will bless you all" my life,
        \ll "in your name I will lift up" my hands.
    \ll "My soul shall be filled as with" a banquet,
        \ll "my mouth shall praise you" with joy.

    \ll "On my bed I remem" -- ber you.
        \ll "On you I muse through" the night
    \ll "for you have been" my help;
        \ll "in the shadow of your wings I" re -- joice.
    \ll "My soul clings" to you;
        \ll "your right hand holds" me fast.

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
