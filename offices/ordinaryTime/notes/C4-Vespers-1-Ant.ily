\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_126"
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
    Those who sow in tears  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    will reap in joy.
}
sopNotesAnt = \relative e' {
    f4 g8 aes[ g] f c'[( bes c bes] aes4)
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak g[ bes aes]
    \allowBreak g
    \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*6/16 f\breve*7/16~
    s16
    f2 c4
}
tenorNotesAnt = \relative g {
    aes\breve*6/16~ aes\breve*7/16
    s16
    bes2 aes4
}
bassNotesAnt = \relative c {
    f\breve*6/16 des\breve*7/16
    s16
    des2 f4
}
