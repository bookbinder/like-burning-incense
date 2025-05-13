\version "2.18.2"
%% include "../../../lbi_defs.ily"
 
antiphon = "3"
psalmnum = "Ps_19_2-7"
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
    The vaults of heav -- en 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    ring with your praise, O Lord.
}

sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges aes[ ces bes aes] aes4
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ges
    \allowBreak ees8[ des]
    \allowBreak ces8
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    r8 des8~ des4. ees2. s16
    bes2 ces4. aes2
}
tenorNotesAnt = \relative g {
    ges4~ ges4.~ ges2.~ s16
    ges2~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    bes4~ bes4. ces2. s16
    ees2 aes,4. des2
}
