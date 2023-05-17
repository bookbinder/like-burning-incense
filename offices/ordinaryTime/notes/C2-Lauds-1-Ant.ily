\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_84"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed are they " * " 
    who dwell in your house, O Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4 g8 aes f[( ees] des4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8 ees[ f] ees des ees4 ees8[ f] ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees2 des4~ des4.
    s16
    c1 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2~ aes4~ aes4.~
    s16
    aes1 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 des4 f4.
    s16
    aes,1 des2
}
