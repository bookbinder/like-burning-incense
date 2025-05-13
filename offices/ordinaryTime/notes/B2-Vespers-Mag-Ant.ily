\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "37"
psalmtonestruct = "33"
antKeysig = \key ges \major
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    For ev -- er will my soul pro -- claim  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the great -- ness of the Lord.
}

sopNotesAnt = \relative e' {
    r8 aes8 aes[ bes] aes f ges aes[ bes] aes \bar "" ces[( bes] aes4) 
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges
    \allowBreak ges
    \allowBreak f
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*10/16 ees\breve*5/16 s16 des2 aes2
}
tenorNotesAnt = \relative g {
    f\breve*10/16 ges\breve*5/16~ s16 ges2 f2
}
bassNotesAnt = \relative c {
    des\breve*10/16 ces\breve*5/16 s16 bes2 des2
}
