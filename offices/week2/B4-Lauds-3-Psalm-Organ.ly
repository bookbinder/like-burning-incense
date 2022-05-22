\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/37-notes.ily"

\header {
    psalm_title = "Psalm 97"
    psalm_subtitle = "The glory of the Lord in his decrees for the world"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "The Lord is king, let earth" re -- joice,
    \ll "let all the coastlands" be glad.
    \ll "Cloud and darkness are" his raiment;
    \ll "his throne, justice" and right.

    \ll "A fire prepares" his path;
    \ll "it burns up his foes on ev" -- ery side.
    \ll "His lightnings light up" the world,
    \ll "the earth trembles at" the sight.

    \ll "The mountains melt" like wax
    \ll "before the Lord of all" the earth.
    \ll "The skies proclaim" his justice;
    \ll "all peoples see" his glory.

    \ll "Let those who serve idols be a" -- shamed,
    \ll "those who boast of their worth" -- less gods.
    \ll "All you spirits, wor" -- ship him.

    \ll "Sion hears and is" glad;
    \ll "the people of Judah" re -- joice
    \ll "because of your judgements," O Lord.

    \ll "For you indeed are the" Lord
    \ll "most high above all" the earth,
    \ll "exalted far above" all spirits.

    \ll "The Lord loves those who hate" evil;
    \ll "he guards the souls of" his saints;
    \ll "he sets them free from" the wicked.

    \ll "Light shines forth for" the just
    \ll "and joy for the upright" of heart.
    \ll "Rejoice, you just, in" the Lord;
    \ll "give glory to his ho" -- ly name.

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
        \sopranoTwo
        \sopranoOneFlex
        \sopranoTwoFlex
        \sopranoOneFlex
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
        \altoTwo
        \altoOneFlex
        \altoTwoFlex
        \altoOneFlex
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
        \tenorTwo
        \tenorOneFlex
        \tenorTwoFlex
        \tenorOneFlex
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
        \bassTwo
        \bassOneFlex
        \bassTwoFlex
        \bassOneFlex
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
