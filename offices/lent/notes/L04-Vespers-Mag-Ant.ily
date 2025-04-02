\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "M"
psalmtone = "29"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    When you give "alms, * " do not let your left hand know
    what your right hand is do -- ing.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 c des \bar "" des([ f] \bar "" ees4) \bar "'"
    ees8 \bar "" f[ ees] des ees \bar "" f[ aes] aes4 \bar ""
    g4 g8 aes \bar "" f[ g] f f \bar "" f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c2 bes4 c4. des2 ees2~ ees c bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ees2 f4 aes4.~ aes2~ aes bes aes g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes2~ aes4~ aes4. des2 c ees2~ ees~ ees
}
