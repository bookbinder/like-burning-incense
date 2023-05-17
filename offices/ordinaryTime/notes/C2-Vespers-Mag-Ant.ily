\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "M"
psalmtone = "62"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My soul pro -- claims the great -- ness of the Lord, " * " 
    for he has looked with fa -- vor on his low -- ly ser -- vant.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 f8 ees[ f] ees des[ f] aes bes[ c] bes bes bes bes4( aes) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 ges[ aes] bes bes[( aes] bes4) bes8 aes[ f] f4 \bar "" ees8 ees f ees 
    \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    aes4 bes4. des4.~ des\breve*5/16~ des\breve*5/16~
    s16
    des4.~ des\breve*5/16 des2 bes aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f4 ges4. f ges\breve*5/16 f2
    s16
    s8
    bes4. ges\breve*5/16 f2 ges f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des4~ des2. ges,\breve*5/16 des'2~
    s16
    s8
    des4.~ des\breve*5/16~ des2~ des

}
