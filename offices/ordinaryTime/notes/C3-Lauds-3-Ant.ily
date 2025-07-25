\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "3"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_67"
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
    Lord, let the light of your face  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    shine up -- on us.
}
sopNotesAnt = \relative e' {
    c8[ des] c bes ees4 f8 aes g[( f] ees4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8[( f] ees4)
    \allowBreak des8
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 ees2 ees4 bes~
    s16
    bes\breve*5/16~ bes4 aes
}
tenorNotesAnt = \relative g {
    f2 aes2 bes4( g4)
    s16
    f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
    des2 c ees
    s16
    bes\breve*5/16
    f2
}
