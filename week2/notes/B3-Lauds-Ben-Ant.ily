\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/42-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Lord, save us "*" from the hands of all who hate us.
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
        cis8[(\tenuto dis e dis] cis4) gis'8[\tenuto fis gis] gis4
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 gis \bar "" fis[ gis] fis e[ dis] cis \bar "" dis[ cis] cis4  \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis2.~ gis\breve*7/16 s16 cis4. b gis2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2. dis\breve*7/16 s16 fis2.~ fis4 e
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis2. b\breve*7/16 s16 a4. gis cis2
    }

