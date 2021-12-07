\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/4-notes.ily"

global = {
    \key c \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    My help comes from the Lord, " * "  
    who made heav -- en and earth.
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
        r8 g8 e[ f] \bar "" a4 g8 f \bar "" g[( c b] a4)
        \hideNotes a16 \unHideNotes %so that I can align the * better
        a8 a[ g] \bar "" f[( g] a4) a8 a g4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c2~ c2~ c4.~ c\breve*5/16 s16
        c\breve*6/16 b4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2 f e4. f\breve*5/16~ s16
        f\breve*6/16 d4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        c2~ c2~ c4. f,\breve*5/16 s16
        d\breve*6/16 g4
    }

