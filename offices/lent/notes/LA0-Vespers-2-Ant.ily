\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_142"
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
    Call u -- pon the "Lord * " and he will hear you;
    cry out and he will an -- swer: Here I am.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees8[ f] ees8 ees ees \bar "" des([ f] aes4) \bar "'" aes8
    \bar "" g([ aes] f4) g8 \bar "" ees4 ees \bar "," ees8[ f]
    \bar "" f[ ees] des des f \bar "" aes4 aes \bar "'"
    g8([-- aes] f4) g \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*5/16 des\breve*5/16 des\breve*5/16 c2. des\breve*5/16 ees2 des2. bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*5/16~ aes\breve*5/16~ aes\breve*5/16~ aes2.~ aes\breve*5/16~
    aes2~ aes2. g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 f\breve*5/16 des\breve*5/16 aes2. des\breve*5/16 c2 bes2. ees4
}
