\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Al -- migh -- ty has done great things for me " * " 
    and ho -- ly is his Name.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8 des ges f ges aes bes[ ces] bes ges aes4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 ges[ ees] \bar "" ees4 \bar "" f8 \bar "" ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2.~ des2~ des4.
    s16
    bes2 ces4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges2.~ ges2 f4.
    s16
    ges2~ ges4~ ges4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes2. ges2 des'4.
    s16
    ees2 ces4 des2
}
