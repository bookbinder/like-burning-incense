\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/40-notes.ily"

global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    To you, O God, "*" our praise is due in Zi -- on.
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
        r8 dis8 dis[ fis] fis \bar "" gis[( fis ais] gis4)
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 \bar "" gis[ ais] gis fis4 fis8 dis4 dis  \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 \hideNotes dis8~ \unHideNotes dis4. e2. s16
        cis2.~ cis4 b
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        b4~ b4.~ b2. s16 gis2.~ gis2
    }

    bassNotesAnt = \relative g {
        \global
        \voiceTwo
        gis4 fis4. e2.~ s16 e4. cis 4. gis2
    }

