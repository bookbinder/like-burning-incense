\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/37-notes.ily"

\header {
    psalm_title = "Psalm 49 -- II"
    % subpsalm_title = ""
    % psalm_subsubtitle = "II"
}

text = \lyricmode {
    %\override InstrumentName #'X-offset = #4
    %\override InstrumentName #'font-series = #'bold
    %\set stanza = # "1. "
    %\set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "This is the lot of those who trust in" them -- selves,
    \ll "who have others at their beck" and call.
    \ll "Like sheep they are driven to the" grave,
    \ll "where death shall be" their shepherd
    \ll "and the just shall become" their rulers.

    \ll "With the morning their outward" show vanishes
    \ll "and the grave becomes" their home.
    \ll "But God will ransom me" from death
    \ll "and take my soul to" him -- self.

    \ll "Then do not fear when a man" grows rich,
    \ll "when the glory of his house" in -- creases.
    \ll "He takes nothing with him when" he dies,
    \ll "his glory does not follow him" be -- low.

    \ll "Though he flattered himself while" he lived:
    \ll "‘Men will praise me for all my" suc -- cess,’
    \ll "yet he will go to join" his fathers,
    \ll "who will never see the light a" -- ny more.

    \ll "In his riches, man" lacks wisdom;
    \ll "he is like the beasts that are" des -- troyed.

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
    }
    altoMusic = {
        \global
        \voiceTwo
        \altoOne
        \altoTwoFlex
        \altoOne
        \altoTwo
        \altoOne
        \altoTwo
        \altoOne
        \altoTwo
        \altoOne
        \altoTwo
        \altoOne
    }

    tenorMusic = {
        \global
        \voiceOne
        \tenorOne
        \tenorTwoFlex
        \tenorOne
        \tenorTwo
        \tenorOne
        \tenorTwo
        \tenorOne
        \tenorTwo
        \tenorOne
        \tenorTwo
        \tenorOne
    }

    bassMusic = {
        \global
        \voiceTwo
        \bassOne
        \bassTwoFlex
        \bassOne
        \bassTwo
        \bassOne
        \bassTwo
        \bassOne
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
