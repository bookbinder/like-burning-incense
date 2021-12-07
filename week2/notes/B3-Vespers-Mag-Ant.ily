\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/23-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Do great things for us, O Lord, "*" for you
    are might -- y, and ho -- ly is your name.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %
    %}


    sopNotesAnt = \relative e' {
        \global
        \override Lyrics.LyricSpace.minimum-distance = #2.0
        \voiceOne
        r8 c8^\markup {"(The psalm tone for this antiphon wasn't found, so I substituted below)"} c[ des] c bes \bar "" ees[ f] aes \bar "" aes4( g)
        \hideNotes g16 \unHideNotes %so that I can align the * better
        g8 g aes \bar "" f ees des \bar "" f f ees des c4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 s8 s2  ees4.~ ees\breve*7/16 s16 des4. bes2 aes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ees4 f2 aes4. bes\breve*7/16~ s16 bes4. f2~ f4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes4 des2 c4. ees\breve*7/16 s16 bes4. des2 f,4
    }

