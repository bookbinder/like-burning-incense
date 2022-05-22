\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/11-notes.ily"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    O God, all your ways are ho -- ly; "*" what god can com -- pare with our God?
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
        r8 e8 fis[ gis] gis[ a] gis \bar "" fis gis \bar "" a4 gis4
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 \bar "" fis[ gis] fis gis \bar "" a4 gis8 \bar "" fis4 e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        b\breve*9/16 e\breve*5/16 s16 cis2 e4. b2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis\breve*7/16 a4 b\breve*5/16 s16 a2~ a4.~ a4 gis
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e\breve*7/16~ e4~ e\breve*5/16 s16 a2 cis,4. e2
    }

