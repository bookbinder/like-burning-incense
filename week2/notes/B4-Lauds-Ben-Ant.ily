\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/43-notes.ily"

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Let us serve the Lord in ho -- li -- ness "*"
    all the days of our life.
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
        cis8 dis e[ dis] cis \bar "" dis[ cis] b cis[ gis'] gis gis4
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        \bar "" gis8[ a] gis fis4 e8 dis \bar "" e[( dis] cis4) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        gis\breve*5/16 a4. gis\breve*5/16 s16
        cis\breve*7/16 gis2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e\breve*5/16 fis4. e\breve*5/16 s16
        fis\breve*7/16~ fis4 e
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        cis\breve*5/16~ cis4.~ cis\breve*5/16 s16
        a\breve*7/16 cis2
    }

