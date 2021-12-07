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
    How won -- der -- ful is your name, O Lord,  " * "
    in all cre -- a -- tion.
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
        r8 ees8 aes g aes f ees \bar "" f[ ees] des \bar "" ees4
        \hideNotes ees16 \unHideNotes %so that I can align the * better
        ees8 \bar "" des[( ees] f4) f8 \bar "" ees4 ees \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c\breve*7/16 bes4. c4. s16
        des\breve*5/16 bes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ees\breve*7/16 des4. aes'4.~ s16
        aes\breve*5/16~ aes4 g
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes\breve*7/16~ aes4.~ aes4. s16
        bes\breve*5/16 ees2
    }

