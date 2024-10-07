\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "Mag."
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
    Tea -- cher, what is the grea -- test com -- mand -- ment in the "law? * "
    Je -- sus said to him: You shall love the Lord your God with your
    whole heart.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4 aes8 g aes g f g aes \bar "" bes[ c] bes bes aes \bar "" g4 \bar "'"
    g8[ aes] g \bar "" f[ g] aes g4
    g8 \bar "" g[ aes] \bar "" f--[g aes g] f \bar "" f[ ees c] ees \bar ""
    f([ g aes] bes4) aes8 g \bar "" g4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16 f\breve*5/16 ees4~ ees4. f4. ees4.~ ees4
    c\breve*5/16~ c2 f\breve*7/16 ees4 c
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*9/16 des\breve*5/16 bes4~ bes4.~ bes4.~ bes4.~ bes4 aes\breve*5/16
    g2 bes\breve*7/16~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*9/16 des\breve*5/16 ees4 c4.
    des4. ees c4 f\breve*5/16 ees2 des\breve*7/16 ees4 f
}
