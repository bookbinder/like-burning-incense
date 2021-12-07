\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A4-Lauds-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Canticle, Judith 16:2-3a, 13-15"
    psalm_subtitle = "God who created the world takes care of his people"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Strike up" the instruments,
    \ll "a song to my God with" timbrels,
    \ll "chant to the Lord with cym" -- bals;
    \ll "Sing to him a" new song,
    \ll "exalt and acclaim his" name.

    \ll "A new hymn I will sing to my" God.
    \ll "O Lord, great are you" and glorious,
    \ll "wonderful in power and unsur" -- passable.

    \ll "Let your every crea" -- ture "serve you;"
    \ll "for you spoke, and they were" made,
    \ll "you sent forth your spirit, and they were" cre -- ated;
    \ll "no one can resist your" word.

    \ll "The mountains to their bases, and the seas," are shaken;
    \ll "the rocks, like wax, melt before your" glance.
    \ll "But to those" who "fear you,"
    \ll "you are very" merciful.

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
    \sopranoTwoFlex
    \sopranoOneFlex
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
    \altoTwoFlex
    \altoOneFlex
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
    \tenorTwoFlex
    \tenorOneFlex
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
    \bassTwoFlex
    \bassOneFlex
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
