\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, shine on those who dwell in dark -- ness  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and the sha -- dow of death.
}
sopNotesAnt = \relative e' {
    g8[ c] c[ d] c b c a g a[ g] g4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 g \bar "" f[( g] a4) a8 a \bar "" g4 \bar "||"
}
altoNotesAnt = \relative e' {
    g\breve*7/16 f4 e2.
    s16
    f2. d4
}
tenorNotesAnt = \relative g {
    c\breve*7/16~ c4~ c2.~
    s16
    c2. b4
}
bassNotesAnt = \relative c {
    e\breve*7/16 f4 c2.
    s16
    d2. g4
}
