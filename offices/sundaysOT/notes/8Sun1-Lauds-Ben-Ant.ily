\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "Ben."
psalmtone = "32"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    No one pours new wine in -- to old wine -- "skins; * "
    new wine should be put in new wine -- skins.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8[ ees] des f[ ges] bes4 aes f8 aes ges([ f] ees4) ees8[ des] des4 \bar "'"
    ees8[ f ees] ees4 \bar ""
    ees8 f f[ ges] ges ges([ bes aes] f4) ees8[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16~ des2.~ des2 s2 s4. s4
    s4 des4.~ des4.~ des4 bes aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*5/16 ges4 f aes^"?" bes( ges) f2 aes4.~ aes4~
    aes4 ges4. f4. bes4 ges4 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16~ des2.~ des2~ des c4.~ c4~
    c4 bes4. des4.~ des4~ des2
}
