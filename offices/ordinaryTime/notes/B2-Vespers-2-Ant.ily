\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_45_11-18"
psalmtone = "21"
psalmtonestruct = "33"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Bride -- groom is here; "* "
    go out and wel -- come him.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 ees8 aes g aes \bar "" f4( ees) 
    \hideNotes b16 \unHideNotes %so that I can align the * better
    ees8 \bar "" f[ ees] des \bar "" f ees ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r8 \hideNotes ees8~ \unHideNotes ees4. c\breve*5/16
    s16 des4. bes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes4~ aes4.~ aes\breve*5/16~ s16
    aes4.~ aes4 g4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    c4~ c4. aes\breve*5/16 s16
    des4. ees2
}
