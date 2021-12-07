\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/42-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    If you hun -- ger for ho -- li -- ness,  "*" 
    God will sat -- is -- fy your long -- ing, good meas -- ure, and
    flow -- ing o -- ver.
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
        cis8 dis e4 e8 e \bar "" fis e dis4
        \hideNotes dis16 \unHideNotes %so that I can align the * better
        dis8[ e] dis \bar "" e dis cis b \bar "" cis[ dis] dis4 \breathe \bar ""
        e8[ fis] \bar "" gis4 gis8 fis \bar "" gis[( gis gis]) gis \bar "" cis,4 cis \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis2. b2~ s16
        b4. gis2 b2~
        b4~ b2 cis a4 gis
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2. dis2 s16
        fis4. e2 gis2
        e4~ e2~ e2~ e2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis2. b2~ s16
        b4. cis2 gis2~
        gis4 e2 a cis
    }

