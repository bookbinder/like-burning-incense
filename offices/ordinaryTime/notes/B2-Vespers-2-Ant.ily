\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_45_11-18"
psalmtone = "21"
psalmtonestruct = "33"
antKeysig = \key aes \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Bride -- groom is here; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    go out and wel -- come him.
}

sopNotesAnt = \relative e' {
    r8 ees8 aes g aes \bar "" f4( ees) 
    \hideNotes b16 \unHideNotes %so that I can align the * better
    \allowBreak ees8
    \allowBreak f[ ees]
    \allowBreak des
    \allowBreak f
    \allowBreak ees
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \hideNotes ees8~ \unHideNotes ees4. c\breve*5/16
    s16 des4. bes2
}
tenorNotesAnt = \relative g {
    aes4~ aes4.~ aes\breve*5/16~ s16
    aes4.~ aes4 g4
}
bassNotesAnt = \relative c {
    c4~ c4. aes\breve*5/16 s16
    des4. ees2
}
