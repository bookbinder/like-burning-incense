\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Pray for peace, " * "
    for the peace of Je -- ru -- sa -- lem.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 fis8 a4( gis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 gis fis[ a] gis fis a gis gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4. s2
    s16
    e4~ e2~ e
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b4. e2
    s16
    b4 a2 cis4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4.~ e2~
    s16
    e4~ e2~ e
}
