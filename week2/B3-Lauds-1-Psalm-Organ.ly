\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/56-notes.ily"

\header {
    psalm_title = "Psalm 43"
    psalm_subtitle = "Longing for the Temple"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Defend me, O God, and" plead my cause
    \ll "against a god" -- less nation.
    \ll "From deceitful and" cun -- ning men
    \ll "rescue me," O God.

    \ll "Since you, O God," are my stronghold,
    \ll "why have you" re -- \ll "jected me?"
    \ll "Why do" I go mourning
    \ll "oppressed by" the foe?

    \ll "O send forth your light" and your truth;
    \ll "let these be" my guide.
    \ll "Let them bring me to your" ho -- ly mountain,
    \ll "to the place where" you dwell.

    \ll "And I will come to the al" -- tar of God,
    \ll "the God of" my joy.
    \ll "My redeemer, I will thank you" on the harp,
    \ll "O God," my God.

    \ll "Why are you cast" down my soul,
    \ll "why groan" wi -- \ll "thin me?"
    \ll "Hope in God; I will" praise him still,
    \ll "my saviour and" my God.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" ning, is now,
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
        \transpose a gis {
            \new ChoirStaff \with { instrumentName = #"56" } %LBI_1A
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
