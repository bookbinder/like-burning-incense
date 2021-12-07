\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/37-notes.ily"

global = {
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Now has be -- gun  "*" the vic -- to -- rious reign of our God.
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
        aes8[ bes aes] f ges \bar "" aes4( des,)
        \hideNotes des16 \unHideNotes %so that I can align the * better
        des8 des \bar "" ces[ ees] ges \bar "" ges4 f8 ees \bar "" ees4( des) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        des\breve*5/16 aes2. s16 ces4. des2 aes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        f\breve*5/16~ f2. s16
        ges4.~ ges2~ ges4( f)
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        des\breve*5/16~ des2. s16
        ees4. bes2 des2
    }

