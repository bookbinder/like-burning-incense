\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/48-notes.ily"

\header {
    psalm_title = "Psalm 119:105-112 -- XIV (Nun)"
    % psalm_subtitle = "XIV (Nun)"
    psalm_subtitle = "A meditation on God’s law"
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    \ll "Your word is a lamp" for my steps
    \ll "and a light for" my path.
    \ll "I have sworn and have made" up my mind
    \ll "to obey your" de -- crees.

    \ll "Lord, I am deep" -- ly af -- \ll flicted;
    \ll "by your word give" me life.
    \ll "Accept, Lord, the homage" of my lips
    \ll "and teach me your" de -- crees.

    \ll "Though I carry my life" in my hands,
    \ll "I remember" your law.
    \ll "Though the wicked try" to en -- \ll "snare me,"
    \ll "I do not stray from" your precepts.

    \ll "Your will is my heri" -- tage for ever,
    \ll "the joy of" my heart.
    \ll "I set myself to carry" out your statutes
    \ll "in fullness," for ever.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
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

    }

    \score {        
        <<
            \transpose e e {
                \new ChoirStaff \with { instrumentName = #"48" } % LBI_12a
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
