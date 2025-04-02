\version "2.20.0"
%% \include "../../../lbi_defs.ily"

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
    A great pro -- phet has ri -- sen up a -- mong "us * "
    and God has vi -- si -- ted his peo -- ple.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 des[ aes'] aes4 ges8 aes ces bes aes ges aes[ des,] des4 \bar "'"
    des8 ces[ ees] ges \bar "" f ges f ees \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s8 des8~ des4~ des2 ees aes,\breve*5/16 ces4.~ ces2 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f2~ f ges f\breve*5/16 ges4.~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2~ des~ des~ des\breve*5/16 ees4. ces2 des
}
