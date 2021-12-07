\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/48-notes.ily"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Ring out your joy  "*" to God our strength.
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
        aes4 g8 aes \bar "" f4( ees)
        \hideNotes ees16 \unHideNotes %so that I can align the * better
        ees8 \bar "" ees[ f] ees des4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        ees2 c\breve*5/16~ s16
        c4. aes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes2~ aes\breve*5/16 s16
        ees4. f4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        c2 aes\breve*5/16~ s16
        aes4. des4
    }

