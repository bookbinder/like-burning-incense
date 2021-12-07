\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/22-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    My heart leaps up with joy to the Lord, "*"
    for he hum -- bles on -- ly to ex -- alt us.
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
        r8^"Like last night\'s Mag, couldn\'t find orig. psalm tone. Replacement below." c8 c[ des] c c bes \bar "" ees[ f] ees f \bar "" aes4( g)
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        g8 aes \bar "" f4 ees8 f f ees des \bar "" des[ c] c4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        s2 s4. ees2~ ees2. s16 des4. bes2~ bes4 aes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ees4 f\breve*5/16 aes2 bes2.~ s16
        bes4. f2~ f2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes4 des\breve*5/16 c2 ees2. s16
        bes4. des2 f,
    }

