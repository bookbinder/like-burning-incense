\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key g \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Praise God, all you who serve him, "*" both great and small, al -- le -- lu -- ia.
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
        g8[ a] b4 a8 c b a[ b a] \bar "" a4 \bar "'"
        \hideNotes a16 \unHideNotes %so that I can align the * better
        g8 \bar "" fis[ g] e d4 \bar"'" g8 a[ b] g4 g \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        d4~ d4. c4 e4. d4~ s16 d8 c4. g4. c4~ c b4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        g4~ g4.~ g4~ g4. fis4 s16
        g8~ g4.~ g4. e4 d2 \bar "||"
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        b4 g4. a4 d4.~ d4 s16
        b8 c4. g4.~ g4~ g2
    }

