\version "2.20.0"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/20-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Ev -- en in your an -- ger, Lord,  " * " 
    you will re -- mem -- ber com -- pas -- sion.
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
        c8 des c bes \bar "" ees[ f] aes \bar "" aes4( g)
        \hideNotes g16 \unHideNotes %so that I can align the * better
        g8 aes g \bar "" f4 ees8 des \bar "" des[ c] c4  \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        s2 ees4.~ ees\breve*7/16 s16
        des4 bes~ bes aes
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ees2 aes4. bes\breve*7/16~ s16
        bes4 f~ f2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes2 c4. ees\breve*7/16 s16
        bes2 f
    }

