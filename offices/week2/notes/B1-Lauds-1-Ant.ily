\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key c \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed is he who "comes * " in the name of the Lord, al -- le -- lu -- ia.
}


sopNotesAnt = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    g8 a g e[ f]  g f[( e] d4) \bar "'" d8 e f[ g] f g a4 g8 f a[ g] g4 \bar "||"
}

altoNotesAnt = \relative c' {
    \global
    \voiceTwo
    e2. s2. c2~ c~ c4 b
}

tenorNotesAnt = \relative g {
    \global
    \voiceOne
    c2.~ c2 a4 f2~ f d
}

bassNotesAnt = \relative c {
    \global
    \voiceTwo
    c2. d4 f4~ f a,2 f4 d g2
}

