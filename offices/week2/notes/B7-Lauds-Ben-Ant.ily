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
    Lord, guide our feet  " * "
    in -- to the way of peace.
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
        f8[ aes] g[ aes] bes bes4
        \hideNotes bes16 \unHideNotes %so that I can align the * better
        aes8 g f ees[( f] g4) g8 f4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c4 f\breve*5/16 s16
        bes,4. ees\breve*5/16 c4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes4 bes\breve*5/16~ s16
        bes4.~ bes\breve*5/16 aes4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        f4 des\breve*5/16~ s16
        des4. c\breve*5/16 f4
    }

