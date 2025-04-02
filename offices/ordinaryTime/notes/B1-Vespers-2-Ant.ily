\version "2.18.2"
%% include "../../../lbi_defs.ily"

keysig = \key aes \major
psalmnum = "Ps_115"
psalmtone = "21"
psalmtonestruct = "33"
antiphon = "2"
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    God dwells in high -- est heav -- en;  "* "
    he has power to do all he wills, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    ees8[ f] ees[ aes] aes bes aes g[ f ees] ees4 \bar ""
    \hideNotes ees16 \unHideNotes %so that I can align the * better
    ees8 ees des ees \bar "" f4 \allowBreak f8[-- bes] \allowBreak aes \allowBreak
    g4 \bar "'"
    \allowBreak g8 \bar "" \allowBreak g[ aes] \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    s2 s4 s2 s4 s16
    c2 des4~ des4. ees4. c4 bes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    c\breve*7/16 bes4.~ bes4 s16
    aes2~ aes4 bes4.~ bes4. aes4~ aes g \bar "||"
}
bassNotesAnt = \relative f {
    \keysig
    \global
    aes\breve*7/16 ees4. g4 s16
    aes2 des,4 bes4. ees4.~ ees4~ ees2
}
