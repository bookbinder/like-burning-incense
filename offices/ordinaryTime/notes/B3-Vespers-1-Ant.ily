\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_49_2-13"
psalmtone = "34"
psalmtonestruct = "33"
keysig = \key des \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    You can -- not serve \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    both God and mam -- mon.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 des8 f[ ges] aes \bar "" bes4( aes)
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    f8[ aes] \bar "" ges[( f] ees4) f8 \bar "" ees4 des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r8 \hideNotes des8~ \unHideNotes des4.~ des2.
    s16 des4 bes4. aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    f4 aes4. ges4( f) s16
    aes4 bes4 ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    \keysig
    \global
    des4~ des4.~ des2.~ s16
    des4~ des4.~ des2
}
