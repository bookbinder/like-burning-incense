\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/56-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Lord, send forth "*" your light and your truth.
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
        e4 b8[ cis] cis[( gis' a] gis4)
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 fis[ gis] fis e dis4( cis) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        s2 cis4. b4.~ s16 b2 gis2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis4 fis e2. s16 dis2 e2
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis4 dis e2. s16 b2 cis2
    }

