\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/37-notes.ily"


global = {
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    For ev -- er will my soul pro -- claim "*" the great -- ness of the Lord.
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
        r8 aes8 aes[ bes] aes f ges aes[ bes] aes \bar "" ces[( bes] aes4) 
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        aes8 \bar "" ges ges f ees \bar "" ees4( des) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        des\breve*10/16 ees\breve*5/16 s16 des2 aes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        f\breve*10/16 ges\breve*6/16~ ges2 f2

    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        des\breve*10/16 ces\breve*6/16 bes2 des2
    }

