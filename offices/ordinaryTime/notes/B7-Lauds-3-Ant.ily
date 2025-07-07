\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_8"
psalmtone = "21"
psalmtonestruct = "33"
antKeysig = \key aes \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    How won -- der -- ful is your name, O Lord,   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    in all cre -- a -- tion.
}

sopNotesAnt = \relative e' {
    r8 ees8 aes g aes f ees \bar "" f[ ees] des \bar "" ees4
    \noBreak \hideNotes ees16 \unHideNotes %so that I can align the * better
    \allowBreak ees8
    \allowBreak des[( ees] f4)
    \allowBreak f8
    \allowBreak ees4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*7/16 bes4. c4. s16
    des\breve*5/16 bes2
}
tenorNotesAnt = \relative g {
    ees\breve*7/16 des4. aes'4.~ s16
    aes\breve*5/16~ aes4 g
}
bassNotesAnt = \relative c {
    aes\breve*7/16~ aes4.~ aes4. s16
    bes\breve*5/16 ees2
}
