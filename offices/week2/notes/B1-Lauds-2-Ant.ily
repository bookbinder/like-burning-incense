\version "2.20.0"
% \include "../../lbi_defs.ily"



global = {
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    Let us sing a hymn of "praise * " to our God, al -- le -- lu -- ia.
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
        des8 des ges[ f] ges ees[ f] ges aes[( ces bes] aes4) \bar "'" 
        aes8 aes ges[ ees] \bar "'" f ees ees[ des] des4 \bar "||"
    }

    altoNotesAnt = \relative c' {
        \global
        \voiceTwo
        des4~ des2. ees\breve*5/16 des4 bes ces aes2
    }    
    tenorNotesAnt = \relative g {
        \global
        \voiceOne
        aes4 ges2.~ ges\breve*5/16 f4 ges4~ ges~ ges f
    }

    bassNotesAnt = \relative f {
        \global
        \voiceTwo
        f4 des2. ces\breve*5/16 des4 ees ces des2
    }

