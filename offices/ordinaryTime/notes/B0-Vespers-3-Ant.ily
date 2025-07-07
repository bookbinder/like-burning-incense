\version "2.18.2"
%% include "../../../lbi_defs.ily"

antKeysig = \key f \minor
antiphon = "3"
psalmnum = "Phil_2_6-11"
psalmtonestruct = "42"
psalmtone = "20"
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let ev -- ery -- thing in hea -- ven and on earth 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    bend the knee at the name of Je -- sus, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    r8 c8 c des c bes ees ees f aes g[( f] ees4) \bar ""
    \noBreak \noBreak \hideNotes ees16 \unHideNotes
    \allowBreak ees8[ f]
    \allowBreak ees
    \allowBreak f4
    \allowBreak f8
    \allowBreak ees
    \allowBreak des
    \allowBreak ees
    \allowBreak des[ c]
    \allowBreak c4 \bar "'"
    \allowBreak ees8
    \allowBreak ees[ des]
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 s1 s2 s8 s16 c\breve*13/16 s8 bes4~ bes4 aes
}
tenorNotesAnt = \relative g {
    aes2.~ aes2 bes2 s16 aes\breve*9/16 g\breve*4/16 s8 f4~ f2
}
bassNotesAnt = \relative f {
    f2. c2 ees4( g) s16 aes\breve*9/16 ees\breve*4/16 s8 bes4 f2
}
