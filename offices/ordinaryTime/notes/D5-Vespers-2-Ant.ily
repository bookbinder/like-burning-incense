\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "2"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_144_9-15"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed are the peo -- ple  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    whose God is the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f8[ ges] f ees ges ges[ aes] aes4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8 ees[ ges] f ees f[( ees] des4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des4.~ des2~ des4.~
    s16
    des2~ des2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes4. bes4 ees, f4.
    s16
    ges2 aes4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des4.~ des2~ des4.
    s16
    bes2 des
}
