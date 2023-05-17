\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "1"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord said to my Mas -- ter: " * " 
    Sit at my right hand, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 des8 ges[ f] ees[( f] ges4) f8 ees ees[ des] des4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8[ aes'] ges aes ces[ bes aes] aes4 \bar "'"
    ges8 aes aes[ des,] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s1 s2.
    s16
    des2 ees\breve*5/16 des4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4 bes\breve*1/2 aes2
    s16
    f2 ges\breve*5/16~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f4 ges\breve*1/2 f2
    s16
    des2 ces\breve*5/16 bes4 des2
}
