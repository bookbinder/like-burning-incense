\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "2"
psalmtone = "32"
psalmtonestruct = "33"
psalmnum = "Ps_132_11-18"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord has cho -- sen Zi -- \ll "on;  * " _
    he has de -- sired it for his dwell -- ing.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 f[ ees] des ees[ f] ges f[ aes] aes4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8 \bar "" ees f \bar "" ges4 ges8 f ees \bar ""
    ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    aes\breve*5/16 bes4. f'4 des4.~
    s16
    des4~ des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f\breve*5/16 ges4. aes4 f4.
    s16
    aes4 ges\breve*5/16 ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des\breve*5/16~ des4.~ des4~ des4.~
    s16
    des4 bes\breve*5/16 des2
}
