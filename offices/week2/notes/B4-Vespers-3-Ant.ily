\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/9-notes.ily"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    All cre -- a -- tion is found  -- ed in him; "*"
    he holds all things to -- ge -- ther in him -- self.
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
        e4 e8 fis e e \bar "" dis e cis \bar "" b4
        \hideNotes b16 \unHideNotes %so that I can align the * better
        e8 \bar "" fis[ a] gis[ b] b a \bar "" gis a gis fis \bar "" fis4( e) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        b2. s4. s4 s16
        s8 e4 gis2 cis, b
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        e2. fis4. gis4. s16
        a4 b2 a2~ a4( gis)
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        gis2. b4. e4.~ s16
        e4~ e2~ e2~ e2
    }

