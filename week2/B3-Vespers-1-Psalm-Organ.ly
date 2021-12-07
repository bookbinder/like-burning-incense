\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/34-notes.ily"

\header {
    psalm_title = "Psalm 49 -- I"
    psalm_subtitle = "Emptiness of riches"
    % psalm_subsubtitle = "I"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Hear this, all" you peoples,
    \ll "give heed, all who dwell in" the world,
    \ll "men both low" and high,
    \ll "rich and poor" a -- like!

    \ll "My lips will speak words" of wisdom.
    \ll "My heart is full" of insight.
    \ll "I will turn my mind to" a \ll parable,
    \ll "with the harp I will solve" my problem.

    \ll "Why should I fear in e" -- vil days
    \ll "the malice of the foes who" sur -- \ll "round me,"
    \ll "men who trust in" their wealth,
    \ll "and boast of the vastness of" their riches?

    \ll "For no man can buy his" own ransom,
    \ll "or pay a price to God for" his life.
    \ll "The ransom of his soul is beyond" him.
    \ll "He cannot buy life with" -- out end,
    \ll "nor avoid coming to" the grave.

    \ll "He knows that wise men and fools must" both perish
    \ll "and leave their wealth" to others.
    \ll "Their graves are their homes for" ever,
    \ll "their dwelling place from age" to age,
    \ll "though their names spread wide through" the land.

}
textB = \lyricmode {
            \override InstrumentName #'X-offset = #4
            \override InstrumentName #'font-series = #'bold	
    	\set stanza = # "2. "
            \set shortVocalName = "2."
    	\set includeGraceNotes = ##t
    \ll "In his riches, man" lacks wisdom;
    \ll "he is like the beasts that are" des -- troyed.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
    
   }

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
        \sopranoTwoFlex
        \sopranoOne
        \sopranoTwoFlex
        \mark "D.C."
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
        \altoTwoFlex
        \altoOne
        \altoTwoFlex
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
        \tenorTwoFlex
        \tenorOne
        \tenorTwoFlex
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
        \bassTwoFlex
        \bassOne
        \bassTwoFlex
    }

    \score {        <<
        \transpose aes aes {
            \new ChoirStaff \with { instrumentName = #"34" } %LBI_1A
            <<
                \new Staff ="up"
                <<
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    \new Lyrics \lyricsto Soprano \text
                    \new Lyrics \lyricsto Soprano \textB
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
