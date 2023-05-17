\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "M"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    God has cast down the migh -- ty from their thrones " * " 
    and has lif -- ted up the low -- ly.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8 ees des[ ees] des ees f ges aes aes bes4( aes) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 aes ges[ aes] bes aes4 ges8 aes[ des,] des4 \bar "|"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    aes1 ees'4 des2.~
    s16
    des4. bes aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f1 ges4 f2.
    s16
    ges4.~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des1~ des4~ des2.
    s16
    bes4. ges des'2

}
