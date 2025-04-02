\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_63_2-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Tell us, shep -- "herds, * " what have you seen? Who has
    ap -- peared on earth? We have seen a new -- born in -- fant
    and a choir of an -- gels prai -- sing the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes8 aes g[ aes] f4 \bar "'"
    f8 f aes g4 \bar "'"
    ees8[ f] aes g ees8 g \bar "" f4 r4 \bar "|"
    ees8 f aes g ees g \bar "" f4 f4 \bar "'"
    ees8 f \bar "" aes g \bar "" aes[ bes] bes4 \bar "" aes8[ bes] g aes
    \bar "" f[ aes]
    \breathe g8 ees \bar "" g4 f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16 ees4~ ees2~ ees4 c2 ees2. s2 s4
    f4~ f2 des2 ees2 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*9/16 bes4 aes2 bes4
    aes2 c2.~ c2.~ c4 bes2~ bes2 aes4 bes4~ bes4 aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*9/16 ees4 c2~ c4 f2 c'2. aes2. f4 des2
    bes2 c2 f2
}
