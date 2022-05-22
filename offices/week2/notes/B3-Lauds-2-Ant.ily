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
    Lord, keep us safe "*" all the days of our life.
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
        e4 fis8 a \bar "" a4( gis)
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        fis8 e \bar "" fis[ gis] fis fis e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        e2~ e2. s16 cis2 b4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis4 a b2. s16 a2 gis4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e2~ e2. s16 e2~ e4
    }

