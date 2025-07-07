\version "2.20.0"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Rev_15_3-4"
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
    King of all the a -- ges,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    your ways are per -- fect and true.
}

sopNotesAnt = \relative e' {
    aes8[ bes] aes f ges ees[ des] des4  
    \noBreak \hideNotes des16 \unHideNotes %so that I can align the * better
    \allowBreak des8
    \allowBreak ces[ ees]
    \allowBreak ges
    \allowBreak f
    \allowBreak ges
    \allowBreak ees
    \allowBreak des4 \bar "||" \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*10/16 s16
    ces4. bes aes4
}
tenorNotesAnt = \relative g {
    f\breve*5/16 aes\breve*5/16 s16
    ges4.~ ges f4
}
bassNotesAnt = \relative c {
    des\breve*5/16 f s16
    ees4. ces des4
}
