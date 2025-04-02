\version "2.18.2"
%% include "../../../lbi_defs.ily"

keysig = \key c \major
antiphon = "1"
psalmnum = "Ps_118"
psalmtone = "1"
psalmtonestruct = "34"
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed is he who comes "* "
    in the name of the Lord, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    g8 a g e[ f]  g \bar "" f[( e] d4) \bar ""
    \hideNotes d16 \unHideNotes
    d8 e \bar "" f[ g] f g \bar ""
    a4 \breathe \allowBreak g8 \allowBreak f \bar "" \allowBreak a[ g] \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    e2. s2. s16 c2~ c~ c4 b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    c2.~ c2 s16 a4 f2~ f d
}
bassNotesAnt = \relative c {
    \keysig
    \global
    c2. d4 f4~ s16 f4 a,2 f4 d g2
}
