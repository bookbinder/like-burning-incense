\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/21-notes.ily"

\header {
    psalm_title = "Psalm 45 -- II"
    % subpsalm_title = ""
    % psalm_subsubtitle = "II"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Listen, O daughter, give ear to" my words:
    \ll "forget your own people and your fa" -- ther’s house.
    \ll "So will the king desire" your beauty:
    \ll "He is your lord, pay homage" to him.

    \ll "And the people of Tyre shall come" with gifts,
    \ll "the richest of the people shall seek" your favour.
    \ll "The daughter of the king is clothed" with splendour,
    \ll "her robes embroidered with pearls set" in gold.

    \ll "She is led to the king with her maiden com" -- panions.
    \ll "They are escorted amid gladness" and joy;
    \ll "they pass within the palace of" the king.

    \ll "Sons shall be yours in place of" your fathers:
    \ll "you will make them princes over all" the earth.
    \ll "May this song make your name for ever" re -- membered.
    \ll "May the peoples praise you from age" to age.

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
        \altoTwo
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
        \tenorTwo
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
        \bassTwo
        \bassOneFlex
        \bassTwo
        \bassOne
        \bassTwo
        \bassOne

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
