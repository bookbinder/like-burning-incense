\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_100"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is God;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    we are his peo -- ple, the flock he shep -- herds.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 ees8 g[ aes] f ees4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    ees4 c8 des \bar "" f4 ees8 f \bar "" f[ aes g] f \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*5/16 bes4
    s16
    c2~ c ees bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees\breve*5/16~ ees4~
    s16
    ees2 aes~ aes~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes\breve*5/16 g4
    s16
    aes2~ aes c ees
}
