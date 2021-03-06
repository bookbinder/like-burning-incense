\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Christ our Lord "*  " is a priest for ev -- er,
    like Mel -- chiz -- e -- dek of old,
    al -- le -- lu -- ia
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
        e4 b8[ cis] cis4( gis')
        \hideNotes a16 \unHideNotes %so that I can align the * better
        gis8 gis gis[ a] gis \bar "" gis[ fis] fis4 \bar "'"
        fis8 fis \bar "" e[ gis] e8 dis e fis4 \bar "'" e8 dis dis[ cis] cis4 \bar "||"



    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        s4 s4 cis2 s16
        e4 dis4. cis2.~ cis\breve*5/16 b2 gis2

    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis4 fis gis2~ s16 gis4~ gis 4. a2. gis\breve*5/16
        fis2~ fis4 e4
    }

    bassNotesAnt = \relative f {
        \global
        \voiceTwo
        cis4 dis e2 s16 cis4 b4. a2. cis\breve*5/16 dis4 gis, cis2
    }

