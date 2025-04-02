\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "1_Pet_2_21-24"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Those "things, * " which God fore -- told through his pro -- phets
    con -- cer -- ning the suf -- ferings that Christ would en -- dure,
    have been ful -- filled.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8[ f d] d4 d8 \bar "" e8 f \bar "" a8[ g] f a \bar ""
    g4 g8 f \bar "" a c c \bar "" d4 c8 c \bar "" b[ c] a g
    \bar "" a4 \bar "'" a8-- \bar "" b-- a-- \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    d2.~ d4 f2 s2 f4. a2 f2~ f4. e4 d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    a2.~ a4 c2~ c2~ c4.~ c2 d2 c4.~ c4 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f2.~ f4~ f2 e2 d4. f2~ f2~ f4.~ f4 g
}
