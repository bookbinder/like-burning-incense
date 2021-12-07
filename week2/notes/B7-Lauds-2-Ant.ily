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
    Ex -- tol " * " the great -- ness of our God. 
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
        cis8[ gis'] \bar "" gis[( b gis fis] gis4)
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 \bar "" fis[ gis] fis \bar "" e dis cis4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        cis4 dis\breve*7/16 s16
        cis4. b4 gis
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e4 gis\breve*7/16 s16
        a4. fis4 e4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis4 b\breve*7/16 s16
        a4. b4 cis
    }

