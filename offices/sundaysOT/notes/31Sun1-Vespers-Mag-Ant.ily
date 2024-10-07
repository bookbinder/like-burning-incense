\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "Mag."
psalmtone = "30"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Son of Man came to seek out and to "save * " 
    those who were lost.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 aes8 f ges aes([ bes] aes4) ces8[ bes] aes ges[ bes] \bar "" aes4
    ges8 ges \bar "" aes4 \bar "" ges8([ f] ees4) \bar ""
    ees8 f \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*8/16 ees4. des2 bes4 des bes2 ces4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*8/16 ges4.~ ges4 f4 ees f ges2~ ges4~ ges4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*8/16 ces4. bes4 des2~ des4 ees2 ces4 des2
}
