\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "Ben."
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus, turn -- ing, saw the wo -- man and "said: * " 
    Take cou -- rage, daugh -- ter; your faith has saved you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f4 ges8 aes[ bes] aes f[ aes] aes ges4 f8 ees des4 \bar "'"
    ees4 des8[ aes'] aes4 bes8[ aes] aes4 \bar "'" aes8 \bar ""
    ges[ f ] ees f4 ges8 \bar "'" aes8[ ges] ees \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2.~ des4. bes2 \parenthesize aes4 bes4 des2~ des4~ des4.~ des2. ces4. bes4 aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4. f4.~ f4. ges2 aes4 ges4 f2 ges4 f4. ges2. ees4. f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2.~ des4. ees2 f4 ges4 des2~ des4~ des4. bes2. ces4. des2
}
