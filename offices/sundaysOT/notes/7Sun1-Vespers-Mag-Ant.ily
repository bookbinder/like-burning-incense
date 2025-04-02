\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "M"
psalmtone = "44"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Do not judge o -- "thers, * "
    and you will not be judged, for as you have judged them,
    so will God judge you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 a8 g[ a] \bar "" c[ b] \bar "" a4 \bar "" a a8 \bar ""
    g[ a] a \bar "" g g \bar "" e4 r4 \bar "|"
    e8 g \bar "" a[ b] a \bar "" g[ e] \bar ""
    e4( d) \bar "'" e8[ g] a \bar "" g-- g-- \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2 g4 e4~ e4.~ e4. d4 c2 d4
    e4.~ e4 s2 e4. d4 c
}
tenorNotesAnt = \relative c' {
    \global
    \keysig
    c2 d4~ d4 c4.~ c4. a4~ a2 g4~
    g4. c4 b2 a4.~ a4~ a
}
bassNotesAnt = \relative a {
    \global
    \keysig
    a2 g4 a4~ a4. c,4. d4 a2 b4
    c4.~ c4 g'2 c,4. d4 a
}
