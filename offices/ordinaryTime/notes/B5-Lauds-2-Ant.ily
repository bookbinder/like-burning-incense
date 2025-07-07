\version "2.18.2"

antiphon = "2"
psalmnum = "Isa_12_1-6"
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
    The Lord has worked mar -- vels for us; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    make it known to the ends of the world.
}

sopNotesAnt = \relative e' {
    r8 des8 ges f ges \bar "" ees f ges aes4
    \noBreak \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak aes8[ bes]
    \allowBreak aes
    \allowBreak ces[( bes] aes4)
    \allowBreak ges8
    \allowBreak f
    \allowBreak ees[ ges]
    \allowBreak f
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    r8 des8~ des4. ees\breve*5/16 s16
    des4. ees2.~ ees2 aes,2
}
tenorNotesAnt = \relative g {
    ges4~ ges4.~ ges\breve*5/16 s16
    f4. ges2.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
  bes4~ bes4. ces\breve*5/16 s16
  des4. ces2. aes2 des2
    
}
