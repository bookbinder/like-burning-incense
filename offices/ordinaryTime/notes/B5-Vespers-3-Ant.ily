\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Rev_11_17-18_and_12_10b-12a"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Now has be -- gun  "*" the vic -- to -- rious reign of our God.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    aes8[ bes aes] f ges \bar "" aes4( des,)
    \hideNotes des16 \unHideNotes %so that I can align the * better
    des8 des \bar "" ces[ ees] ges \bar "" ges4 f8 ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    des\breve*5/16 aes2. s16 ces4. des2 aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    f\breve*5/16~ f2. s16
    ges4.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
    \keysig
    \global
    des\breve*5/16~ des2. s16
    ees4. bes2 des2
}
