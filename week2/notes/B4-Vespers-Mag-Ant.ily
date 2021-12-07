\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/21-notes.ily"

global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Lord, with the strength of your arm "*"
    scat -- ter the proud, and lift up the low -- ly.
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
        ees4 ees8 f ees[ aes] g aes \bar "" bes4
        \hideNotes bes16 \unHideNotes %so that I can align the * better
        aes4 aes8 bes \bar "" aes[( g f] ees4) \breathe
        ees8 \bar "" f[ ees] des ees \bar "" f4 ees \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        ees1 f2. s16 ees2.
        des2 bes
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes1~ aes2.~ s16
        aes2.~ aes2~ aes4 g
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        c1 des2. s16
        c2. bes2 ees
    }

