\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_100"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is God;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    we are his peo -- ple, the flock he shep -- herds.
}
sopNotesAnt = \relative e' {
    r8 ees8 g[ aes] f ees4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak ees4
    \allowBreak c8
    \allowBreak des
    \allowBreak f4
    \allowBreak ees8
    \allowBreak f
    \allowBreak f[ aes g]
    \allowBreak f
    \allowBreak ees4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*5/16 bes4
    s16
    c2~ c ees bes
}
tenorNotesAnt = \relative g {
    ees\breve*5/16~ ees4~
    s16
    ees2 aes~ aes~ aes4 g
}
bassNotesAnt = \relative c {
    aes\breve*5/16 g4
    s16
    aes2~ aes c ees
}
