\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/37-notes.ily"

global = {
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    The Lord is king, "*"
    let the earth re -- joice.
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
        r8 des8 ges[ f] ges aes[( bes ces bes] aes4)
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        ges8 ges f[ ges] ees des4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 \hideNotes des8~ \unHideNotes des4. ees2. s16
        bes4 ces4. aes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ges4~ ges4.~ ges2.~ s16
        ges4~ ges4. f4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        bes4~ bes4. ces2. s16 ees4 aes,4. des4
    }

