\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_112"
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
    Bles -- sed are they who hun -- ger and thirst
    for ho -- li -- ness;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    they will be sa -- tis -- fied.
}
sopNotesAnt = \relative e' {
    ees8 f ees c des f4 ees8 des ees[ aes] f g f ees4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak f4
    \allowBreak f8
    \allowBreak g
    \allowBreak f
    \allowBreak ees
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s8 s2 ees4. des4 c
    s16
    des4 c bes2
}
tenorNotesAnt = \relative g {
    c\breve*5/16 bes2 aes4.~ aes4~ aes4~
    s16
    aes2~ aes4 g
}
bassNotesAnt = \relative g {
    aes\breve*5/16 g2 c,4. des4 aes
    s16
    des2 ees
}
