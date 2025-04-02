\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A good tree can -- not bear bad "fruit, * "
    nor a bad tree good fruit.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 f8 f[ aes] bes4 bes8 aes[ bes] c([ aes] f4) aes8[ g] g4 \bar "'"
    g8 aes f[ ees c] \bar "" c4 \bar "" g'8--[ f] \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 f4~ f4.~ f4~ f2 ees des4 c4.~ c4~ c4~ c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2 des4.~ des4 c2 bes~ bes4 g4.~ g4 bes aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f2~ f4.~ f4 aes2 ees bes4 c4. ees4~ ees4 f4
}
