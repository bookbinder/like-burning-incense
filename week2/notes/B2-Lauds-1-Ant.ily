\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    When will I come to the end of my pil -- grim -- age "*"
    and en -- ter the pres -- ence of God?
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
        f4 ees8 f g aes bes \bar "" bes4 aes8 g \bar "" g[ aes] g g4
        \hideNotes a16 \unHideNotes %so that I can align the * better
        g8 \bar "" aes g f \bar "" ees[( f] g4) \bar "" g8 g f4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        c\breve*7/16 f2~ f4. ees4. s16
        c4. ees2~ ees4 c4
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes\breve*7/16 des2 bes2. s16
        aes4. g2~ g4 aes4
    }

    bassNotesAnt = \relative c' {
        \global
        \voiceTwo
        aes\breve*7/16 des,2 ees2. s16
        f4. c2~ c4 f,4
    }

