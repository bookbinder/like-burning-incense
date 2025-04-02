\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "B"
psalmtone = "27"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    The time has "come * " for Ma -- ry to give birth to her first -- born Son. 
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 f8 des8 ees ees([ f] ees4) f8 aes[ bes] aes aes g[ aes]
    f[ ees] des ees f[ g] f ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    aes4 des4~ des4 c4. ees2. des2 c4. bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 aes4~ aes4.~ aes2.~ aes2~ aes4. g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f2 aes,4~ aes4. c2. des2~ des4. ees4
}
