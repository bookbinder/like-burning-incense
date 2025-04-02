\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "B"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    In his great love for "us, * " God sent his Son in the like -- ness
    of our sin -- ful na -- ture. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    r8 g8 g[ a] g4 \bar "" g8[ f] d d4 \bar "'" f4 \bar "" g8[ a] a \bar ""
    g[ a] g g \bar "" b c a \bar "" b4 \bar "" a8[ b] a \bar "" g4 g \bar "||"
    a8 \bar "" a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    e2. d\breve*5/16 r4 f4. r2 f4.~ f4 e4. d2~ d8 c4~ c b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    c2. a\breve*5/16~ a4 c4.~ c2~ c4.~ c4~ c4.~ c4 b4~ b8 c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    c2. d4. f4~ f4~ f4. e2 d4.~ d4 f4. g2~ g8~ g4~ g2
}
