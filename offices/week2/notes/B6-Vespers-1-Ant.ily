\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/43-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Lord, keep my soul from death,  " * " 
    ne -- ver let me stum -- ble.
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
        e4 b8 cis \bar "" cis[ gis'] gis gis4
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        \bar "" fis8[ gis] fis \bar "" e dis \bar "" dis[ cis] cis4  \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis4 s4 cis4. e4 s16
        dis4 b gis2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e4 fis gis4. b4~ s16
        b4. fis4~ fis e
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis4 dis e4.~ e4 s16
        b4.~ b4 cis2
    }

