\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    Un -- less a grain of "wheat * " falls in -- to the ground and dies,
    it re -- mains on -- ly a sin -- gle grain;
    but if it dies, it pro -- du -- ces a rich har -- vest.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 g8 e f g[ a] g \bar "" f([ g] a4) \bar "" c4 b8 c a b a \bar "" g4
    \bar "'" g8 g \bar "" f[ g] a4 g8 f \bar "" a[ b] a g4 \bar "|"
    r8 g8 g g \bar "" f([ e] d4) \bar "'" a'8 g a b c \bar ""
    d([ c] a4) \bar "" a8[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*7/16 f2 e\breve*7/16 s2 f2. e4. d4
    s2 s2 f\breve*5/16 e2 d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*7/16~ c2~ c\breve*7/16~ c2~ c2.~ c4. b4
    c2~ c2~ c\breve*5/16~ c2~ c4 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16 d2 a'\breve*7/16 e2
    d2.~ d4. g4 e2 d4( f)~ f\breve*5/16~ f2 g2
}
