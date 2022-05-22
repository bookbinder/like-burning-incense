\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/58-notes.ily"

\header {
    psalm_title = "Psalm 72 -- I"
    psalm_subtitle = "The Messiah's royal power"
    % psalm_subsubtitle = "I"
    poet = "[Tone might be a variant of 24, 31, or 36 instead]"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "O God, give your judgement to" the king,
    \ll "to a king’s son" your justice,
    \ll "that he may judge your people" in justice
    \ll "and your poor in" right judgement.

    \ll "May the mountains bring forth peace for" the people
    \ll "and the" hills, justice.
    \ll "May he defend the poor of the" people
    \ll "and save the children of" the needy
    \ll "and crush the" op -- pressor.

    \ll "He shall endure like the sun and" the moon
    \ll "from age" to age.
    \ll "He shall descend like rain on" the meadow,
    \ll "like raindrops on" the earth.

    \ll "In his days justice" shall flourish
    \ll "and peace till the" moon fails.
    \ll "He shall rule from sea" to sea,
    \ll "from the Great River to" earth’s bounds.

    \ll "Before him his enemies" shall fall,
    \ll "his foes lick" the dust.
    \ll "The kings of Tarshish and" the \ll "sea coasts"
    \ll "shall pay" him tribute.

    \ll "The kings of Sheba" and Seba
    \ll "shall bring" him gifts.
    \ll "Before him all kings shall" fall prostrate,
    \ll "all nations" shall \ll "serve him."

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
        \sopranoTwoFlex
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
        \transpose gis gis {
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
