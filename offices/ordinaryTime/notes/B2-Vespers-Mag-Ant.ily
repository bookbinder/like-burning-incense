\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    For ev -- er will my soul pro -- claim  "*" 
    the great -- ness of the Lord.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 aes8 aes[ bes] aes f ges aes[ bes] aes \bar "" ces[( bes] aes4) 
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    aes8 \bar "" ges ges f ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    des\breve*10/16 ees\breve*5/16 s16 des2 aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    f\breve*10/16 ges\breve*6/16~ ges2 f2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    des\breve*10/16 ces\breve*6/16 bes2 des2
}
