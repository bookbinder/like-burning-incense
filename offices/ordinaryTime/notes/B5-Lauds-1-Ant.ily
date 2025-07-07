\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_80"
psalmtone = "26"
psalmtonestruct = "33"
antKeysig = \key aes \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Stir up your migh -- ty pow -- er, Lord;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    come to our aid.
}

sopNotesAnt = \relative e' {
    aes4 g8 aes \bar "" f ees g f \bar "" ees4
    \noBreak \hideNotes ees16 \unHideNotes %so that I can align the * better
    \allowBreak f4
    \allowBreak f8
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    c2 des2 c4 s16 bes2~ bes4
}
tenorNotesAnt = \relative g {
    ees2 f aes4 s16 f2 g4
}
bassNotesAnt = \relative c {
    aes1~ aes4 s16 des2 ees4
}
