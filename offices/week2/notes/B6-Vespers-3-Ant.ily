\version "2.20.0"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/37-notes.ily"

keysig = { \key ges \major }
antiphon = "Ant. 3"
psalmtone = "(37)"

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    King of all the a -- ges, " * "
    your ways are per -- fect and true.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %
    %}


    sopNotesAnt = \relative e' {
        \global
        \keysig
        \voiceOne
        aes8[ bes] aes f ges ees[ des] des4  
        \hideNotes des16 \unHideNotes %so that I can align the * better
        des8 ces[ ees] ges f ges ees des4 \bar "||" \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \keysig
        \voiceTwo
        des\breve*10/16 s16
        ces4. bes aes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \keysig
        \voiceOne
        f\breve*5/16 aes\breve*5/16 s16
        ges4.~ ges f4
    }

    bassNotesAnt = \relative c {
        \global
        \keysig
        \voiceTwo
        des\breve*5/16 f s16
        ees4. ces des4
    }

