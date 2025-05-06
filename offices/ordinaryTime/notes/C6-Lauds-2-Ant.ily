\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Jer_14_17-21"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Tru -- ly we know our of -- fen -- ses, Lord,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    for we have sinned a -- gainst you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f8 g f f[ ees] c ees f[ aes] aes \bar "" aes4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 aes bes \bar "" bes8([ c] aes4) g8 \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c4.~ c2 ees4.~ ees\breve*7/16
    s16
    f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f4. g2 aes4. bes\breve*7/16~
    s16
    bes\breve*5/16~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes4. c2~ c4. ees\breve*7/16
    s16
    des\breve*5/16 f2
}
