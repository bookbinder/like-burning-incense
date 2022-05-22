\version "2.20.0"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/50-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Ea -- ger -- ly we a -- wait "*"
    the ful -- fill -- ment of our hope,
    the glo -- rious com -- ing of our Sav -- ior.
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
        aes8 g f ees f \bar "" g[( aes] bes4) 
        \hideNotes gis16 \unHideNotes %so that I can align the * better
        bes8 aes bes[ c] bes \bar "" aes c c4( bes) \bar "'"
        bes8 aes[ bes] aes \bar "" g g g ees f4 f \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c\breve*5/16 f\breve*9/16~ s16 f4 g\breve*1/4
        s8 des4.~ des2 c2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes\breve*5/16 bes\breve*9/16 s16 des4 bes\breve*1/4
        s8 des4. bes2~ bes4 aes
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        f\breve*5/16 des\breve*9/16~ s16 des4 ees\breve*1/4
        s8 f4.~ f2~ f
    }

