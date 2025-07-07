\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_49_2-13"
psalmtone = "34"
psalmtonestruct = "33"
antKeysig = \key des \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g

text = \lyricmode {
    \set includeGraceNotes = ##t
    You can -- not serve 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    both God and mam -- mon.
}

sopNotesAnt = \relative e' {
    r8 des8 f[ ges] aes \bar "" bes4( aes)
    \noBreak \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak f8[ aes]
    \allowBreak ges[( f] ees4)
    \allowBreak f8
    \allowBreak ees4
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes des8~ \unHideNotes des4.~ des2.
    s16 des4 bes4. aes2
}
tenorNotesAnt = \relative g {
    f4 aes4. ges4( f) s16
    aes4 bes4 ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    des4~ des4.~ des2.~ s16
    des4~ des4.~ des2
}
