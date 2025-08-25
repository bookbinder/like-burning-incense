\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "2"
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
    My son, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    you have been with me all the time
    and e -- very -- thing I have is yours. But we had to feast
    and re -- joice, be -- cause your bro -- ther was dead and
    has come to life a -- gain; he was lost to us and now has
    been found.
}
sopNotesAnt = \relative e' {
    g8[ c] \bar "" c4( b) \bar "'" g8 g \bar "" b c a4 b8 a \bar ""
    g4 \bar "'" g8 \bar "" a g f g \bar "" a[ b] a \bar "" g4 r4 \bar "|"
    g8 g e[ g] g \bar "" f[ g] f g \bar "" a([ g] \bar "" f4) \bar "'"
    f8 \bar "" a4 f8 g a g \bar "" c4 b8 b \bar "" a[ b] g b a \bar "" g4
    \bar "," g8 g e[ g] g \bar "" f[ a] a \bar "" b4 a8 a g4 \bar "||"
}
altoNotesAnt = \relative e' {
    g4~ g2. e2. s4. f2 e4. d2
    e\breve*5/16 f2~ f4~ f4.~ f2.
    e2 f\breve*5/16 e\breve*4/16 r4.
    f4.~ f2 d4
}
tenorNotesAnt = \relative g {
    c4 d2 b4 a2. c4.~ c2~ c4. b2
    c\breve*5/16~ c2~ c4~ c4.~ c2.~ c2~ c\breve*5/16~ c\breve*7/16~ c4.
    c2 b4
}
bassNotesAnt = \relative c {
    e4 g2. c,2. e4. f2~ f4. g2 c,\breve*5/16 d2 f4( a4.)
    d,2. a'2 f\breve*5/16 c\breve*7/16 d4. f2 g4
}
