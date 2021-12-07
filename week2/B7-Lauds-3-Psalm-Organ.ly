\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/21-notes.ily"

\header {
    psalm_title = "Psalm 8"
    psalm_subtitle = "The majesty of the Lord and man's dignity"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "How great is your name, O Lord" our God,
    \ll "through all" the earth!

    \ll "Your majesty is praised above" the heavens;
    \ll "on the lips of children and" of babes
    \ll "you have found praise to foil" your enemy,
    \ll "to silence the foe and" the rebel.

    \ll "When I see the heavens, the work of" your hands,
    \ll "the moon and the stars which you" ar -- ranged,
    \ll "what is man that you should keep him" in mind,
    \ll "mortal man that you care" for him?

    \ll "Yet you have made him little less than" a god;
    \ll "with glory and honour" you \ll "crowned him,"
    \ll "gave him power over the works of" your hand,
    \ll "put all things under" his feet.

    \ll "All of them, sheep" and cattle,
    \ll "yes, even the sa" -- vage beasts,
    \ll "birds of the air," and fish
    \ll "that make their way through" the waters.

    \ll "How great is your name, O Lord" our God
    \ll "through all" the earth!

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
        \bassOne
        \bassTwo
        \bassOne
        \bassTwo

    }

    \score {        <<
        \transpose a a {
            \new ChoirStaff \with { instrumentName = #"21" } %LBI_1A
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
