\version "2.18.2"
\include "../../../lbi_defs.ily"

keysig = \key c \major
antiphon = "1"
psalmnum = "Ps_118"
psalmtone = "1"
psalmtonestruct = "34"
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed is he who "comes * " in the name of the Lord, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    g8 a g e[ f]  g f[( e] d4) \bar "'" d8 e f[ g] f g a4 g8 f a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    e2. s2. c2~ c~ c4 b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    c2.~ c2 a4 f2~ f d
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    c2. d4 f4~ f a,2 f4 d g2
}
