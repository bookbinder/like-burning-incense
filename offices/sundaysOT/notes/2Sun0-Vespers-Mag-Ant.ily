\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
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
     Be -- hold the Lamb of \ll "God, * " 
     be -- hold him who takes a -- way the sins of the world.
}
sopNotesAnt = \relative bes' {
    \global
    \keysig
    r8 des,8 des[ aes'] ges \bar ""
    aes[ ces bes] ges \bar "" bes4( aes) \bar ""
    aes8 \bar "" aes[ bes aes] \bar ""
    ges4 ges8 f ges ees des \bar "" ces([ ees] ges4) \bar "" f8 ees
    \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    r8 des8~ des4. ees2 des\breve*5/16
    ees4. des\breve*7/16 ces2. aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f4~ f4. ges2 f\breve*5/16
    ges4.~ ges\breve*7/16~ ges2.~ ges4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des4~ des4.~ des2~ des\breve*5/16
    ces4. bes\breve*7/16 ees2 ces4 des2
}
