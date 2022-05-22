\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/11-notes.ily"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    As morn -- ing breaks we sing of your mer -- cy, Lord,  " * "
    and night will find us pro -- claim -- ing your fi -- del -- i -- ty.
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
        r8 e8 fis gis gis[ a] gis gis[ b] b b \bar "" a[ b] cis b4( gis)
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        e8 \bar "" fis[ gis] fis  a gis fis \bar "" a4 a8 gis fis \bar "" fis e e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 e8~ dis4~ e4. gis2 e4.~ e4~ e4. s16
        cis\breve*6/16 e\breve*5/16 b2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2 b'4.~ b2 cis4. gis4( b4.) s16
        a\breve*6/16~ a\breve*5/16~ a4 gis
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e2~ e4.~ e2~ e4.~ e4~ e4. s16
        a\breve*6/16 cis,\breve*5/16 e2
    }

