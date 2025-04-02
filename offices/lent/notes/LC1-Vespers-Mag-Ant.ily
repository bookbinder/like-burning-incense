\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
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
    Who -- e -- ver drinks the wa -- "ter * " that I shall give
    will ne -- ver be thirs -- ty a -- gain, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 f ees aes4 f8 \bar "" aes8[ g] g
    ees8 \bar "" aes4 f8 \bar "" aes4( g8) f8 \bar ""
    ees([ f] ees4) ees8 ees \bar "" des[ ees] f ees \bar "" f4 \bar "'"
    ees8 des \bar "" des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*7/16 ees2~ ees4.~ ees2 c\breve*6/16
    des2 bes2~ bes4( aes4)
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*7/16 bes2 c4. bes2 aes\breve*6/16~ <f~ aes>2~ f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*7/16 ees2~ ees4.~ ees2 aes\breve*6/16 s2 des,4 bes f2
}
