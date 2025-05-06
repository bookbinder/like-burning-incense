\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Through the ten -- der com -- pas -- sion of our God \noBreak
    \markup \with-color #(x11-color 'gray36) { \tiny "🞵  " }
    the dawn from on high shall break u -- pon us.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f8 g aes g f g f ees f g[( aes] bes4) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    bes8 \allowBreak c[ bes] \allowBreak aes \allowBreak g
    \allowBreak g[ bes] bes aes g f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*9/16 f\breve*5/16
    s16
    ees2 f4. des4 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*9/16~ aes\breve*5/16~
    s16
    aes2~ aes4. bes4~ bes aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*9/16 des\breve*5/16
    s16
    aes2 des4. bes4 f'2
}
