\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/39-notes.ily"


global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Lord, show us "*" the ra -- \ll diance of your mer -- cy.
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
        cis8[ gis'] fis[ e dis] dis4
        \hideNotes dis16 \unHideNotes %so that I can align the * better
        dis8 cis8[ gis'] gis fis e e[ dis] dis4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        cis4~ cis4. b4. s16
        cis\breve*5/16~ cis4 b
        %\small \transpose a gis {\altoOne}
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis4~ gis4.~ gis4. s16 e\breve*5/16 gis2
        %\small \transpose a gis {\tenorOne}
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e4 cis4. gis4.~ s16 gis\breve*5/16~ gis2
        %\small \transpose a gis {\bassOne}
    }

