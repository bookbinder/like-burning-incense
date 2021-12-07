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
    God planned in the full -- ness of time "*" to re -- store all things in Christ.
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
        cis4 e8[ dis] cis b cis[ gis'] gis gis \bar "" fis[( gis] fis4)
        \hideNotes fis16 \unHideNotes %so that I can align the * better
        fis8 fis e[ fis] \bar "" gis4 cis,8 b cis4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis\breve*10/16 cis1 s16 gis2~ gis4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e\breve*10/16 fis1~ s16 fis4 dis e

    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis\breve*10/16 a1~ s16 cis2~ cis4
    }

