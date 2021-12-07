\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/39-notes.ily"

\header {
    psalm_title = "Canticle, Sirach 36:1-5, 10-13"
    psalm_subtitle = "Prayer of entreaty for the holy city, Jerusalem"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Come to our aid, O God" of the \ll universe,
    \ll "and put all the nations in dread" of you!
    \ll "Raise your hand a" -- gainst the heathen,
    \ll "that they may realize" your power.

    \ll "As you have used us to show" them your \ll holiness,
    \ll "so now use them to show us" your glory.
    \ll "Thus they will know," as we know,
    \ll "that there is no God" but you.

    \ll "Give new signs and" work new wonders;
    \ll "show forth the splendor of your" right hand and arm.

    \ll "Gather all the" tribes of Jacob,
    \ll "that they may inherit the land as" of old,
    \ll "Show mercy to the people called" by your name;
    \ll "Israel, whom you named your" first- -- born.

    \ll "Take pity on your" ho -- ly city,
    \ll "Jerusalem, your dwel" -- ling place.
    \ll "Fill Zion" with your \ll majesty,
    \ll "your temple with" your glory.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
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

    \score {        <<
        \transpose a gis {
            \new ChoirStaff \with { instrumentName = #"39" } %LBI_1A
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
