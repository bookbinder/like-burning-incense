\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "M"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    No ser -- vant can o -- bey two mas -- "ters: * " 
    you can -- not serve God and the love of mo -- ney at the same time.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 f8 e d g g([ a] g4) g8--[ c] c[ b] b4 \bar "'" b8 c \bar "" a[ c] b[ c]
    \bar "" a[ g]
    f g \bar "" f--[g a] g \bar "" b4 a8 a a \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2. e2 g4~ g2. e2 f~ f~ f\breve*5/16 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g4 a2 c2~ c4 d2. c2~ c2~ c2~ c\breve*5/16~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2.~ c2 e4 g2. a4 g f2 d2 f\breve*5/16 g2
}
