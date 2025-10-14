\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
  Fa -- ther,
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  give me the glo -- ry that I had with you be -- fore the world was made.
}
sopNotesAnt = \relative e' {
    cis8([ e fis] e4 cis8) cis4
    \noBreak \noBreak \hideNotes cis16 \unHideNotes
    \allowBreak cis8[ gis']
    \allowBreak gis
    \allowBreak fis
    \allowBreak gis[ a]
    \allowBreak gis
    \allowBreak gis
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis([ gis] fis4) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e[ fis e]
    \allowBreak dis
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*8/16 s16 b\breve*11/16 cis\breve*8/16 a2 gis4
}
tenorNotesAnt = \relative g {
    e\breve*8/16 s16~ e\breve*11/16~ e\breve*8/16~ e2~ e4
}
bassNotesAnt = \relative c {
    cis\breve*8/16 s16 e,\breve*11/16 a\breve*8/16 cis2~ cis4
}
