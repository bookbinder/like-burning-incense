\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_49_14-21"
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
    Store up for your -- selves 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    trea -- sure in heav -- en, says the Lord.
}

sopNotesAnt = \relative e' {
    aes8 aes f ges aes4
    \noBreak \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak aes8[ bes]
    \allowBreak aes
    \allowBreak bes
    \allowBreak ces[ bes aes]
    \allowBreak aes4 \bar "'"
    \allowBreak ges8[ ees f]
    \allowBreak ees8
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des2. s16 ees\breve*9/16 ces2 aes
}
tenorNotesAnt = \relative g {
    f2. s16 ges\breve*9/16~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    des2. s16 ces\breve*9/16 aes2 des
}
