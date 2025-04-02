\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Spi -- rit of the Lord rests u -- pon \ll "me; * "
    he has sent me to preach the good news to the poor.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 f8 aes[ g] f ees f \bar "" g[( aes] bes4) \bar ""
    aes8[ c] c \bar "" bes4 bes \bar ""
    aes8 aes g[ aes] f ees \bar "" f([ g aes] \bar "" bes4) bes8
    \bar "" aes8[ bes aes] \bar "" g4 \bar "" f8 ees \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*7/16 f2 ees4.~ ees2
    c2.~ c4. f4. ees4.~ ees2 c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*7/16~ aes2~ aes4.~ aes4 g
    aes2.~ aes4.~ aes4.~ aes4. bes2 aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*7/16 des2 c4. ees2 f2.
    ees4. des4. c4.~ c2 f4
}
