\version "2.18.2"
% \include "../../lbi_defs.ly"


%\include "../psalmtones/notes/37-notes.ily"

global = {
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    The Lord has worked mar -- vels for us; "*"
    make it known to the ends of the world.
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
        r8 des8 ges f ges \bar "" ees f ges aes4
        \hideNotes aes16 \unHideNotes %so that I can align the * better
        \bar "" aes8[ bes] aes \bar ""  ces[( bes] aes4) 
        ges8 f \bar "" ees[ ges] f ees \bar "" ees4( des) \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        r8 des8~ des4 s8 ees\breve*5/16 s16
        des4. ees2.~ ees2 aes,2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        ges4~ ges4.~ ges\breve*5/16 s16
        f4. ges2.~ ges2~ ges4( f)
    }

    bassNotesAnt = \relative c {
        \global
        \voiceTwo
        aes1~ aes4 s16
        des4. ces2. aes2 des
    }

