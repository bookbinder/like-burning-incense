\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/40-notes.ily"

global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    The Lord will save the chil -- dren of the poor, "*" 
    and res -- cue them from slav -- ery.
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
        r8 dis8 dis[ fis] fis \bar "" gis4 gis8 fis[ gis] ais gis fis \bar "" gis4
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        gis8 \bar "" fis[ gis] \bar "" fis fis e \bar "" dis4 dis \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r4 cis4. dis cis dis4 e4. s16
        \parenthesize b4. cis4~^"looks like c# in alto in original" cis
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        b4 ais4. b4. ais4. b4~ b4.~ s16
        b4. gis4~ gis2
    }

    bassNotesAnt = \relative g {
        \global
        \voiceTwo
        gis4~ gis4.~ gis4.~ gis4. fis4 e4. s16
        dis4. e4 gis,2
    }

