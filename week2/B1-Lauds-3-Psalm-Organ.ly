\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/11-notes.ily"

\header {
    psalm_title = "Psalm 150"
    psalm_subtitle = "Praise the Lord"
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    \ll "Praise God in his ho" -- ly place,
    \ll "praise him in his migh" -- ty heavens.
    \ll "Praise him for his power" -- ful deeds,
    \ll "praise his surpas" -- sing greatness.

    \ll "O praise him with sound" of trumpet,
    \ll "praise him with lute" and harp.
    \ll "Praise him with timbrel" and dance,
    \ll "praise him with strings" and pipes.

    \ll "O praise him with resoun" -- ding cymbals,
    \ll "praise him with clashing" of cymbals.
    \ll "Let everything that lives and" that breathes
    \ll "give praise to" the Lord.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll    "and will be for ever." A --  men.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
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
    }

    \score {        <<
        \transpose e dis {
            \new ChoirStaff \with { instrumentName = #"11" } %LBI_1A
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
