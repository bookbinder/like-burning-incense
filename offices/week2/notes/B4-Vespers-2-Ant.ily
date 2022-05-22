\version "2.18.2"
% \include "../../lbi_defs.ily"


%\include "../psalmtones/??.ly"

global = {
    \key a \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    May God turn his ra -- diant face toward us, "*"
    and fill us with his bles -- sings.
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
        r8^"2nd last note in soprano is either e or d" g8 g4 e8 f \bar "" a g g g \bar "" e4. 
        \hideNotes e16 \unHideNotes %so that I can align the * better
        e8 \bar "" f\tenuto[ g a ] a4 g8 f \bar "" f[ e] e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c2. c4 d e4. s16
        a,\breve*6/16 d4~ d c
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2. f2 g4. s16
        f\breve*6/16 a4~ a2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        c2.~ c2~ c4. s16
        d\breve*6/16~ d4 a2
    }

