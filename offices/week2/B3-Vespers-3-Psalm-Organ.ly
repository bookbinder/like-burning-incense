\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/11-notes.ily"

\header {
    psalm_title = "Canticle, Revelation 4:11; 5:9, 10, 12"
    psalm_subtitle = "Redemption hymn"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O Lord our God, you" are worthy
    \ll "to receive glory and honor" and power.

    \ll "For you have created" all things;
    \ll "by your will they came to be and" were made.

    \ll "Worthy are you," O Lord
    \ll "to receive the scroll and break open" its seals.

    \ll "For you" were slain;
    \ll "with your blood you purchased" for God
    \ll "men of every race" and tongue,
    \ll "of every people" and nation.

    \ll "You made them a" kingdom,
    \ll "and priests to serve" our God,
    \ll "and they shall reign" on earth.

    \ll "Worthy is the Lamb that" was slain
    \ll "to receive power" and riches,
    \ll "wisdom" and strength,
    \ll "honor and glory" and praise.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
}
%textB = \lyricmode {
    %        \override InstrumentName #'X-offset = #4
    %        \override InstrumentName #'font-series = #'bold	
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %        \set shortVocalName = "2."
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
        \sopranoTwoFlex
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
        \altoTwoFlex
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
        \tenorTwoFlex
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
        \bassTwoFlex
        \bassOne
        \bassTwo
        \bassOne
        \bassTwo
    }

    \score {        <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
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

    \layout 
    { 
        ragged-last = ##t
        \context 
        { 
            \Staff 
            \remove Time_signature_engraver 
        } 


    } 

}
