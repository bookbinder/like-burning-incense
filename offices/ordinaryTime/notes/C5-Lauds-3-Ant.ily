\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Ps_99"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Give praise to the Lord our God,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    bow down be -- fore his ho -- ly moun -- tain.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 g8 b[ c] a g f[ a] a g4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g4 f8 e \bar "" d e \bar "" f[ g] a \bar "" g4 g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2. f4. e4
    s16
    s2. f4. d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g2. a4. c4~
    s16
    c2 a4~ a4. c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2.~ c4.~ c4
    s16
    e2 f4 d4. g2
}
