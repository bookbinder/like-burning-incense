\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/39-notes.ily"

global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Give your peo -- ple know -- ledge of sal -- va -- tion, Lord, "*" 
    and for -- give us our sins.
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
        e8 dis cis b \bar "" cis[ gis'] gis fis e \bar "" fis[ gis] fis fis4
        \hideNotes fis16 \unHideNotes %so that I can align the * better
        fis8 gis \bar "" cis,[ fis] \bar "" fis e dis4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis4 s4 cis\breve*12/16 s16
        cis4~ cis4 b
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e4 fis gis\breve*5/16 b\breve*7/16 s16
        gis4~ gis~ gis
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis4 dis e\breve*5/16 dis\breve*7/16 s16
        e4 cis gis
    }

