\version "2.18.2"
% \include "../../lbi_defs.ly"


\include "../psalmtones/notes/34-notes.ily"

global = {
    \key des \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    You can -- not serve "*" both God and mam -- mon.
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
        r8 des8 f[ ges] aes \bar "" bes4( aes)
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        f8[ aes] \bar "" ges[( f] ees4) f8 \bar "" ees4 des4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 \hideNotes des8~ \unHideNotes des4.~ des2.
        s16 des4 bes4. aes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        f4 aes4. ges4( f) s16
        aes4 bes4 ges4.~ ges4 f
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        des4~ des4.~ des2.~ s16
        des4~ des4.~ des2
    }

