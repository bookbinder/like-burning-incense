\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/11-notes.ily"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    O praise the Lord, " * " Je -- ru -- sa -- lem! 
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
        r8 e8 fis[ gis] fis a[(gis ] fis4) 
        \hideNotes fis16 \unHideNotes %so that I can align the * better
        fis8 fis[ gis] fis e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        b4~ b4. a4( cis4.~) s16
        cis4. b4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        gis4 fis4. e4~ e4. s16
        fis4. gis4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        e4 dis4. cis4( a4.~) s16
        a4. e'4
    }

