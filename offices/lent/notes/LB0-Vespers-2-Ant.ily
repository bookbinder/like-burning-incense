\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Ps_16"
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
    His face was ra -- diant as the sun, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and his clo -- thing
    white as snow.
}
sopNotesAnt = \relative e' {
    r8 ees8 \bar "" aes4 aes8 g aes g f \bar "" ees4 \bar "'"
    ees8 ees \bar "" f4 ees8 des[ f] f \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    s8 ees8~ ees\breve*7/16 c2 des2. bes4
}
tenorNotesAnt = \relative g {
    aes\breve*9/16~ aes2~ aes2. g4
}
bassNotesAnt = \relative c {
    c\breve*9/16 aes2 des4. bes4. ees4
}
