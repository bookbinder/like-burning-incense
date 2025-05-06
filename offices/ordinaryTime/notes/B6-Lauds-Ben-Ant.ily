\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "50"
psalmtonestruct = "33"
keysig = \key f \minor
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Through the ten -- der com -- pas -- sion of our God   \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    the dawn from on high shall break u -- pon us.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    f8 g aes g f g f ees f \bar "" g[( aes] bes4)
    \hideNotes bes16 \unHideNotes %so that I can align the * better
    bes8 \bar "" c[ bes] aes g \bar "" g[ bes] bes aes g \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    c\breve*9/16 f\breve*5/16 s16
    ees2 f4. des4 c2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes\breve*9/16~ aes\breve*5/16 s16
    aes2~ aes4. bes4~ bes aes
}
bassNotesAnt = \relative c {
    \keysig
    \global
    f\breve*9/16 des\breve*5/16 s16
    aes2 des4. bes4 f'2
}
