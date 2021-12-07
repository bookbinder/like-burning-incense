\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/43-notes.ily"

\header {
    psalm_title = "Psalm 116:1-9"
    psalm_subtitle = "Thanksgiving"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "I love the Lord for" he has heard
    \ll "the cry of my" a -- ppeal;
    \ll "for he turned his" ear to me
    \ll "in the day when" I \ll "called him."

    \ll "They surrounded me, the" snares of death,
    \ll "with the anguish of" the tomb;
    \ll "they caught me, sorrow and dis" -- tress.
    \ll "I called on" the Lord’s name.
    \ll "O Lord, my God," de -- \ll "liver me!"

    \ll "How gracious is the" Lord, and just;
    \ll "our God has" com --  passion.
    \ll "The Lord protects the" sim -- ple hearts;
    \ll "I was helpless so" he \ll "saved me."

    \ll "Turn back, my soul," to your rest
    \ll "for the Lord has" been good;
    \ll "he has kept my soul from" death,
    \ll "my" eyes from tears,
    \ll "and my feet" from stumbling.

    \ll "I will walk in the presence" of the Lord
    \ll "in the land of" the living.

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
        \sopranoTwoFlex
        \sopranoOne
        \sopranoTwo
        \sopranoOne
        \sopranoTwoFlex
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
        \altoOne
        \altoTwo
        \altoOne
        \altoTwoFlex
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
        \tenorOne
        \tenorTwo
        \tenorOne
        \tenorTwoFlex
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
        \bassOne
        \bassTwo
        \bassOne
        \bassTwoFlex
        \bassOne
        \bassTwo
        \bassOne

    }

    \score {        <<
        \transpose a gis {
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
