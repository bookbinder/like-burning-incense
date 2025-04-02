\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_112"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed are they who hun -- ger and thirst
    for ho -- li -- \ll "ness;  * " _
    they will be sa -- tis -- fied.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    ees8 f ees c des f4 ees8 des ees[ aes] f g f ees4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    f4 f8 g f ees ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 s8 s2 ees4. des4 c
    s16
    des4 c bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c\breve*5/16 bes2 aes4.~ aes4~ aes4~
    s16
    aes2~ aes4 g
}
bassNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*5/16 g2 c,4. des4 aes
    s16
    des2 ees
}
