\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/21-notes.ily"


global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    The Bride -- groom is here; "*" go out and wel -- come him.
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
        r8 ees8 aes g aes \bar "" f4( ees) 
        \hideNotes b16 \unHideNotes %so that I can align the * better
        ees8 \bar ""f[ ees] des \bar "" f ees ees4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 \hideNotes ees8~ \unHideNotes ees4. c\breve*5/16
        s16 des4. bes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes4~ aes4.~ aes\breve*5/16~ s16
        aes4.~ aes4 g4

    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        c4~ c4. aes\breve*5/16 s16
        des4. ees2

    }

