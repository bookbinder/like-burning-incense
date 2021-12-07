\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/27-notes.ily"

global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Stir up your migh -- ty pow -- er, Lord;  "*" 
    come to our aid.
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
        aes4 g8 aes \bar "" f ees g f \bar "" ees4
        \hideNotes ees16 \unHideNotes %so that I can align the * better
        \bar "" f4 f8 f ees4   \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c2 des2 c4 s16 bes2~ bes4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ees2 f aes4 s16 f2 g4
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes1~ aes4 s16 des2 ees4
    }

