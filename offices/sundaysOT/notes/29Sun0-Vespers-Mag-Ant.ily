%% \include "../../../lbi_defs.ily"
\version "2.20.0"

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
    Give to Cae -- "sar * " what be -- longs to Cae -- sar,
    but to God what be -- longs to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes8[ f] bes aes[ f] f4 ees8[ f] ees des f aes4 aes \bar "'"
    des,8 des \bar "" ees([ f] ees4) des8 ees \bar "" f ees
    \bar "" ees4( des) \bar "'"
    ees8 \bar "" ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des\breve*7/16 bes\breve*5/16 ees4 des
    aes4 c2. bes4 aes\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f\breve*7/16 ges\breve*5/16 f2. ees2.~ ees4 f\breve*5/16 ges4~ ges4 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des\breve*7/16~ des\breve*5/16~ des2. aes2. ges4 des'\breve*5/16~ des4~ des2
}
