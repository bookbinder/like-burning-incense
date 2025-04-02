\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Those who wel -- come "you * " 
    are wel -- co -- ming me, and those who wel -- come me are
    wel -- co -- coming him who sent me.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    des4 des8 ees[ ges] ges f4 \bar "'" ees8 f ees ees des4 \bar "'"
    des8 f[ ges] aes aes[ bes] bes \bar "" aes4 f8 \bar "" ges8 f ees
    \bar "" ees([ f] ges4) f8 \bar "" ees8[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des2.~ des4. bes4. aes4. s4 s4. s4. s2 des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f4. ges aes ges f des'4.~ des~ des bes ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2.~ des4.~ des~ des~ des f~ f ees bes\breve*5/16 des2
}
