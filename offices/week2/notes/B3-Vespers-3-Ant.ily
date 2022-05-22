\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/11-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    A -- do -- ra -- tion and glo -- ry "*"
    be -- long by right to the Lamb who was slain.
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
        b8 b e dis e \bar "" gis[ fis] fis4
        \hideNotes fis16 \unHideNotes %so that I can align the * better
        fis8 gis fis \bar "" e[ gis] b b \bar "" cis4( b) a8 gis \bar "" fis[( gis] e4)   \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        b\breve*5/16 cis\breve*7/16 s16
        e2~ e2. a,4( gis)
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis\breve*5/16 a\breve*7/16 s16
        gis2 e2.~ e2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e\breve*5/16~ e\breve*7/16~ s16
        e2 gis,2. e2
    }

