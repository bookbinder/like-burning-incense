\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/57-notes.ily"

\header {
    psalm_title = "Psalm 67"
    psalm_subtitle = "People of all nations will worship the Lord"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O God, be gracious" and \ll "bless us"
    \ll "and let your face shed its light" u -- \ll "pon us."
    \ll "So will your ways be known u" -- pon earth
    \ll "and all nations learn your sa" -- ving help.

    \ll "Let the peoples praise you," O God;
    \ll "let all the peo" -- ples \ll "praise you."

    \ll "Let the nations be glad and" e -- xult
    \ll "for you rule the world" with \ll justice.
    \ll "With fairness you rule" the peoples,
    \ll "you guide the nations" on earth.

    \ll "Let the peoples praise you," O God;
    \ll "let all the peo" -- ples \ll "praise you."

    \ll "The earth has yielded" its fruit
    \ll "for God, our God," has \ll "blessed us."
    \ll "May God still give us" his blessing
    \ll "till the ends of the earth" re -- \ll "vere him."

    \ll "Let the peoples praise you," O God;
    \ll "let all the peo" -- ples \ll "praise you."

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly \ll Spirit:
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

    }

    tenorMusic = {
        \global
        \voiceOne

    }

    bassMusic = {
        \global
        \voiceTwo

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
