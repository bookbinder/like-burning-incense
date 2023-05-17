\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_138"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    In the pre -- sence of the an -- gels " * "
    I will sing to you, my God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes8 aes g aes f ees f[ ees des] des4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8 ees f[ aes] f ees[ f] ees ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees4 des2~ des4.~ des2
    s16
    c2. aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes2~ aes4. f2~
    s16
    f4. aes f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4 des2~ des4.~ des2
    s16
    aes2. des2
}
