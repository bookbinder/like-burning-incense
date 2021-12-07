\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/43-notes.ily"

\header {
    psalm_title = "Psalm 110:1-5,7"
    psalm_subtitle = "The Messiah, king and priest"
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    \ll "The Lord’s revelation to my" Master:
    ‘Sit on my right:
    \ll "your foes I will put beneath" your feet.’

    \ll "The Lord will wield from" \ll Sion
    \ll "your scep" -- tre of power:
    \ll "rule in the midst of all" your foes.

    \ll "A prince from the day of your" birth
    \ll "on the" ho -- ly \ll mountains;
    \ll "from the womb before the dawn I" be -- \ll "got you."

    \ll "The Lord has sworn an oath he will not" change.
    \ll "‘You are a" priest for \ll ever,
    \ll "a priest like Melchizedek" of old.’

    \ll "The Master standing at" your right hand
    \ll "will shatter kings in the day of" his wrath.

    \ll "He shall drink from the stream" by the \ll wayside
    \ll "and therefore he shall lift up" his head.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly \ll Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever." A -- men.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %
    %}

    sopMusic = {
        \global
        \voiceOne
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
        \transpose e dis {
            \new ChoirStaff \with { instrumentName = #"43" } %LBI_1A
            <<
                \new Staff ="up"
                <<
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    \new Lyrics \lyricsto Soprano \text
                    %\new Lyrics \lyricsto Soprano \textB
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
