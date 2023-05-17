\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_90"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Each mor -- ning, Lord, " * "
    you fill us with your kind -- ness.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4 g8[ aes] f g[( aes] f4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    ees8 f ees des ees ees4 des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees4 des\breve*8/16
    s16
    c2 aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes\breve*8/16~
    s16
    aes2 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4 des\breve*8/16
    s16
    aes2 des
}
