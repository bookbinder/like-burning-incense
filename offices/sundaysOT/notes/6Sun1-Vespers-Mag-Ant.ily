\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "M"
psalmtone = "69"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed are you who are "poor, * "
    for the king -- dom of God is yours.
    And bles -- sed are you who hun -- ger now; you shall be sa -- tis -- fied.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 f e \bar "" e[ d] \bar "" g a \bar "" c4( b) \bar ""
    a8 a \bar "" g[ a] g g \bar "" a[ g f] g \bar ""
    a4( g) \bar "|" r8 g8 \bar "" f e d \bar "" d[ e] d f[ g] a \bar ""
    a4 \bar "'" g4 g8 \bar "" g[ f] \bar "" f e \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 s4. \parenthesize c4 d2~ d4 \parenthesize c2 d2~
    d~ d4~ d4. \break s4. s4. f4 e4. d4~ d c
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g4. a4 c g2 a4 c2 a2
    b2~ b4 a4.~ a2. c4~ c4. a4~ a~ a
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c4. f4 e g2 f4 e2 f2
    g2~ g4 d4. f2.~ f4 c4. d4 a4~ a
}
