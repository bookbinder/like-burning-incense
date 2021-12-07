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
    Store up for your -- selves "*" trea -- sure in heav -- en, says the Lord.
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
        aes8 aes f ges aes4
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        \bar "" aes8[ bes] aes bes ces[ bes aes] aes \bar "'"
        \bar "" ges[ ees f] ees8 ees4( des) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        des2. s16 ees\breve*8/16 ces2 aes
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        f2. s16 ges\breve*8/16~ ges2~ ges4 f
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        des2. s16 ces\breve*8/16 aes2 des
    }

