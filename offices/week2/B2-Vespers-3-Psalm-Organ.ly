\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/42-notes.ily"

\header {
    psalm_title = "Canticle, Ephesians 1:3-10"
    psalm_subtitle = "God our savior"
}

text = \lyricmode {
    % \override InstrumentName #'X-offset = #4
    % \override InstrumentName #'font-series = #'bold
    % \set stanza = # "1. "
    % \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Praised be the" God and Father
    \ll "of our Lord Je" -- sus Christ,
    \ll "who has bestowed on" us in Christ
    \ll "every spiritual blessing in" the heavens.

    \ll "God chose us in him before the" world be -- gan
    \ll "to be holy and blameless in" his sight.

    \ll "He predestined us  to be his adopted sons through" Je -- sus Christ,
    \ll "such was his will" and pleasure,
    \ll "that all might praise the" glor -- ious favor
    \ll "he has bestowed on us in his" be -- loved.

    \ll "In him and through his blood, we have" been re -- deemed,
    \ll "and our sins" for -- given,
    \ll "so immeasurably" ge -- ne -- rous
    \ll "is God’s favor" to us.

    \ll "God has given" us the wisdom
    \ll "to understand fully" the mystery,
    \ll "the plan" he was pleased
    \ll "to decree" in Christ.

    \ll "A plan to be" car -- ried out
    \ll "in Christ, in the fullness" of time,
    \ll "to bring all things into" one in him,
    \ll "in the heavens and" on earth.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever." A -- men.
}
% textB = \lyricmode {
    %             \override InstrumentName #'X-offset = #4
    %             \override InstrumentName #'font-series = #'bold	
    %     	\set includeGraceNotes = ##t
    %     	\set stanza = # "2. "
    %             \set shortVocalName = "2."
    %     }

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
        \sopranoOne
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
        \altoOne
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
        \tenorOne
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
        \bassOne
    }

    \score {        
        <<
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
                        % \new Lyrics \lyricsto Soprano \textB
                        % \new Lyrics \lyricsto Soprano \textC
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
