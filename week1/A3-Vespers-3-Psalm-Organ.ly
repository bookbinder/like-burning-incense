\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A3-Vespers-3-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Canticle, Revelation 4:11, 5:9, 10, 12"
    psalm_subtitle = "Redemption hymn"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O Lord our God," you are worthy
    \ll "to receive glory and honor and" power.

    \ll "For you have crea" -- ted all things;
    \ll "by your will they came to be and were" made.

    \ll "Worthy are" you, O Lord
    \ll "to receive the scroll and break open its" seals.

    \ll "For you were" slain;
    \ll "with your blood you purchased for God men of every" race and tongue,
    \ll "of every people and" nation.

    \ll "You made them a king" -- dom,
    \ll "and priests to" serve our God,
    \ll "and they shall reign on" earth.

    \ll "Worthy is the Lamb" that was slain
    \ll "to receive power and" riches,
    \ll "wis" -- dom and strength,
    \ll "honor and glory and" praise.

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
%    \set includeGraceNotes = ##t
%
%}
sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    \sopranoOne
    \sopranoTwoFlex
    \sopranoOneFlex
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
    \altoTwoFlex
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
    \tenorTwoFlex
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
    \bassTwoFlex
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
