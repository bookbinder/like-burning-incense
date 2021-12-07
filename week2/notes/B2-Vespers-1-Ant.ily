\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/11-notes.ily"


global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Yours is more than mor -- tal beau -- ty; "*" ev -- ery word you speak is full of grace.
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
        e8[ fis] e fis4 e8 dis e \bar "" cis4 b 
        \hideNotes b16 \unHideNotes %so that I can align the * better
        e8 fis \bar "" gis[ b] gis \bar "" fis[ gis] a gis4 fis8 e4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        b4. cis\breve*11/16 s16 dis4. cis2. b4}    
        tenorNotesAnt = \relative g {
            \global
            \voiceOne
            gis4. a\breve*5/16 gis2.~ s16
            gis4. a2. gis4
        }

        bassNotesAnt = \relative c {
            \global
            \voiceTwo
            e4.~ e\breve*5/16~ e2. s16 b4. a2. e'4
        }

