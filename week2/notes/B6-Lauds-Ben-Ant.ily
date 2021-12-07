\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/50-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Through the ten -- der com -- pas -- sion of our God   " * "
    the dawn from on high shall break u -- pon us.
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
        f8 g aes g f g f ees f \bar "" g[( aes] bes4)
        \hideNotes bes16 \unHideNotes %so that I can align the * better
        bes8 \bar "" c[ bes] aes g \bar "" g[ bes] bes aes g \bar "" f4 f \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c\breve*9/16 f\breve*5/16 s16
        ees2 f4. des4 c2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes\breve*9/16~ aes\breve*5/16 s16
        aes2~ aes4. bes4~ bes aes
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        f\breve*9/16 des\breve*5/16 s16
        aes2 des4. bes4 f'2
    }

