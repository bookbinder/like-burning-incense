\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key e \major
antiphon = "2"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Isa_38_10-14,_17-20"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Lord, my God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you de -- fen -- ded my cause; you ran -- somed my life.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ a] gis gis4( fis)
    \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak e8
    \allowBreak fis
    \allowBreak fis[ a]
    \allowBreak a
    \allowBreak a
    \allowBreak a4( gis) \bar "'"
    \allowBreak gis8
    \allowBreak fis[ a]
    \allowBreak a
    \allowBreak a
    \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b4. cis2. s16 e2~ e\breve*5/16~ e2~ e4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4.~ e2. s16 a2 b\breve*5/16 cis2 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4. a,2. s16 cis2 e\breve*5/16~ e2~ e4
}
