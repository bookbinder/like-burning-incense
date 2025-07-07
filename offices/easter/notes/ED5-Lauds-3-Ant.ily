\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_147_1-11"
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
  The Lord re -- builds Je -- ru -- sa -- lem
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and heals the bro -- ken hear -- ted, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e b4 cis8 cis[ gis'] gis8 gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16~ b2. s16 cis\breve*5/16~ cis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*8/16~ e2.~ s16 e\breve*5/16 a\breve*5/16 fis4~ fis e
}
bassNotesAnt = \relative c {
  gis\breve*8/16 e2. s16 a\breve*5/16~ a\breve*5/16 b4 cis2
}
