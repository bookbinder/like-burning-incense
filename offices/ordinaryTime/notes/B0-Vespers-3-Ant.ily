\version "2.18.2"
%% include "../../../lbi_defs.ily"

keysig = \key f \minor
antiphon = "3"
psalmnum = "Phil_2_6-11"
psalmtonestruct = "42"
psalmtone = "20"
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let ev -- ery -- thing in hea -- ven and on earth "* " 
    bend the knee at the name of Je -- sus, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 c8 c des c bes ees ees f aes g[( f] ees4) \bar ""
    \noBreak \hideNotes ees16 \unHideNotes
    ees8[ f] \allowBreak ees \allowBreak f4 \allowBreak f8 \allowBreak ees \allowBreak des ees des[ c] c4 \bar "'"
    ees8 ees[ des] des[ c] c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r8 s1 s2 s8 s16 c\breve*13/16 s8 bes4~ bes4 aes
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes2.~ aes2 bes2 s16 aes\breve*9/16 g\breve*4/16 s8 f4~ f2
}
bassNotesAnt = \relative f {
    \keysig
    \global
    f2. c2 ees4( g) s16 aes\breve*9/16 ees\breve*4/16 s8 bes4 f2
}
