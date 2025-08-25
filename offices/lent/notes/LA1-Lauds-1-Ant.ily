\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
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
    I will praise you all my life, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in your name I will
    lift up my hands.
}
sopNotesAnt = \relative e' {
    ees8 f aes[ bes] aes g aes \bar "" f[ g] f \bar "" ees4 \bar ","
    ees8 ees[ f] \bar "" des([ ees] des4) des8 f \bar "" aes4
    g8 f \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees\breve*7/16 des4. c\breve*5/16 des2.~ des2 bes4
}
tenorNotesAnt = \relative g {
    aes\breve*7/16~ aes4.~ aes\breve*5/16~ aes4~ f2~ f2 g4
}
bassNotesAnt = \relative c {
    c\breve*7/16 des4. aes\breve*5/16 des2. bes2 ees4
}
