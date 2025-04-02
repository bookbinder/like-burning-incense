\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    That poor wi -- dow gave more than e -- very -- "one, * " 
    be -- cause in her po -- ver -- ty she gave all she had.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f4 f8[ aes] bes4 bes8 aes bes[ c bes] aes \bar "" aes g g4 \bar "'"
    g8 \bar "" g[ aes] g g \bar "" f[ ees] c \bar "" c4 c8[ ees]
    \bar "" f[ g aes] \bar "" bes4
    \bar "" aes8[ g] \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c2 f1 ees\breve*5/16~ ees2 c4. c2 bes4. des4 f c
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2~ aes2 des2 bes\breve*5/16 c2 g4.~ g2 f4.~ f4 bes aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f2 des1 ees\breve*5/16 c2 ees4.~ ees2 des4. bes4 des f
}
