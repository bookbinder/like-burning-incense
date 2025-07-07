\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Col_1_12-20"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
    \set includeGraceNotes = ##t
    He is the first -- born for all cre -- a -- tion;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    in ev -- ery way the pri -- ma -- cy is his.
}
sopNotesAnt = \relative e' {
    des4 f8 ges aes[ bes] aes aes des4 c8 bes[ aes] aes4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ aes]
    \allowBreak bes
    \allowBreak bes4
    \allowBreak bes8
    \allowBreak aes
    \allowBreak f
    \allowBreak ees
    \allowBreak ees
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des2 ees f4. ees\breve*5/16~ s16
    ees4. des4. des2 aes4
}
tenorNotesAnt = \relative g {
    f2 ges2 aes4.~ aes\breve*5/16 s16
    bes4. ges4.~ ges2 f4
}
bassNotesAnt = \relative c {
    des1~ des4. ces\breve*5/16
    s16
    ees4. ges4. des2~ des4
}
