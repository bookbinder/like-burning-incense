\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    Show us your mer -- cy, Lord;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    re -- mem -- ber your ho -- ly co -- ve -- nant.
}
sopNotesAnt = \relative e' {
    aes4 g8 aes f[ ees] f \bar "" aes[( bes aes] g4)
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak aes
    \allowBreak bes
    \allowBreak bes[( c] bes4)
    \allowBreak bes8
    \allowBreak aes
    \allowBreak g
    \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*7/16 ees4.~ ees2.
    s16
    f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
    aes\breve*7/16~ aes4. bes2.~
    s16
    bes\breve*5/16~ bes4 aes
}
bassNotesAnt = \relative c {
    f\breve*7/16 c4. ees2.
    s16
    des\breve*5/16 f2
}
