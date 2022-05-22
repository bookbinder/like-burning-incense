\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Praise the Lord "*" in his in -- fi -- nite great -- ness, al -- le -- lu -- ia.
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
        gis8[ a] gis \bar "" fis[( gis] a4)
        \hideNotes a16 \unHideNotes %so that I can align the * better
        gis8 a \bar "" b cis b a gis \breathe
        fis \bar "" fis[ gis] \bar "" e4 e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        e4.~ e2~  s16 e4 dis4. e4. cis4 b2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        b4. cis2 s16 b4~ b2. a4~ a gis \bar "||"
    }

    bassNotesAnt = \relative f {
        \global
        \voiceTwo
        e4.~ e2~ s16 e4 gis2. a4 e2
    }

