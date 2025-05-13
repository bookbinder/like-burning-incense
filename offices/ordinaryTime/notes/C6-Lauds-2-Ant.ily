\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Jer_14_17-21"
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
    Tru -- ly we know our of -- fen -- ses, Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for we have sinned a -- gainst you.
}
sopNotesAnt = \relative e' {
    f8 g f f[ ees] c ees f[ aes] aes \bar "" aes4( g) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak aes
    \allowBreak bes
    \allowBreak bes8([ c] aes4)
    \allowBreak g8
    \allowBreak f4
    \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
    c4.~ c2 ees4.~ ees\breve*7/16
    s16
    f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
    f4. g2 aes4. bes\breve*7/16~
    s16
    bes\breve*5/16~ bes4 aes
}
bassNotesAnt = \relative c {
    aes4. c2~ c4. ees\breve*7/16
    s16
    des\breve*5/16 f2
}
