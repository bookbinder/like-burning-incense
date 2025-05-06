\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "B"
psalmtone = "23"
psalmtonestruct = "42"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord has come to his peo -- ple  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    and set them free.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 c8 c[ des] bes ees4 f8 aes g[ f ees] ees4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    ees8 \bar "" f[ ees] des[ f] \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 s4 s8 ees2~ ees4. bes
    s16
    des2 bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees4 f4. aes2 bes4. g
    s16
    f2 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes4 des4. c2 ees2.
    s16
    bes2 ees4
}
