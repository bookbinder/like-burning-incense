\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    God dwells in high -- est heav -- en; " *" he has power to do all he wills, al -- le -- lu -- ia.
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
        ees8[ f] ees[ aes] aes bes aes g[ f ees] ees4 \bar ""
        \hideNotes ees16 \unHideNotes %so that I can align the * better
        ees8 ees des ees \bar "" f4 f8[ bes] aes g4 \bar "'"
        g8 \bar "" g[ aes] f[ ees] ees4 \bar "||"
        \bar "||"



    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        s2 s4 s2 s4 s16
        c2 des4~ des4. ees4. c4 bes2

    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        c\breve*7/16 bes4.~ bes4 s16
        aes2~ aes4 bes4.~ bes4. aes4~ aes g \bar "||"
    }

    bassNotesAnt = \relative f {
        \global
        \voiceTwo
        aes\breve*7/16 ees4. g4 s16
        aes2 des,4 bes4. ees4.~ ees4~ ees2
    }

