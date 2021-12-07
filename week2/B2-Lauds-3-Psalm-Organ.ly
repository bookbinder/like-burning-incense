\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/37-notes.ily"

\header {
    psalm_title = "Psalm 19A"
    psalm_subtitle = "Praise of the Lord, Creator of all"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "The heavens proclaim the glory" of God,
    \ll "and the firmament shows forth the work of" his hands.
    \ll "Day unto day takes up" the story
    \ll "and night unto night makes known" the message.

    \ll "No speech, no word, no voice is" heard
    \ll "yet their span extends through all" the earth,
    \ll "their words to the utmost bounds of" the world.

    \ll "There he has placed a tent for the" sun;
    \ll "it comes forth like a bridegroom coming from" his tent,
    \ll "rejoices like a champion to run" its course.

    \ll "At the end of the sky is the rising of the" sun;
    \ll "to the furthest end of the sky is" its course.
    \ll "There is nothing concealed from its burn" -- ing heat.

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
        \sopranoOneFlex
        \sopranoTwoFlex
        \sopranoOneFlex
        \sopranoTwo
        \sopranoOne
    }
    altoMusic = {
        \global
        \voiceTwo
        \altoOne
        \altoTwo
        \altoOneFlex
        \altoTwoFlex
        \altoOneFlex
        \altoTwo
        \altoOne
    }

    tenorMusic = {
        \global
        \voiceOne
        \tenorOne
        \tenorTwo
        \tenorOneFlex
        \tenorTwoFlex
        \tenorOneFlex
        \tenorTwo
        \tenorOne
    }

    bassMusic = {
        \global
        \voiceTwo
        \bassOne
        \bassTwo
        \bassOneFlex
        \bassTwoFlex
        \bassOneFlex
        \bassTwo
        \bassOne
    }

    \score {        <<
        \transpose a aes {
            \new ChoirStaff \with { instrumentName = #"37" } %LBI_1A
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
