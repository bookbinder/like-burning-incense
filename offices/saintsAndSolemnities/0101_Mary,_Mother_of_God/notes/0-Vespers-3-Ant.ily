\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Eph_1_3-10"
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
  Your bles -- sed and fruit -- ful vir -- gin -- i -- ty
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is like the bush, flam -- ing and yet un -- burned, which Mo -- ses saw
  on Si -- nai. Pray for us, Moth -- er of God.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak fis8
  \allowBreak fis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak cis
  \allowBreak dis
  \allowBreak e4
  \breathe
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4
  \allowBreak r4 \bar "|"
  \allowBreak cis8[ gis']
  \allowBreak fis
  \allowBreak gis4
  \breathe
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*9/16 gis\breve*8/16~ s16 gis4~
  gis2. cis4. gis\breve*5/16 b2. cis\breve*5/16~
  cis2 b
}
tenorNotesAnt = \relative g {
  dis\breve*9/16 e\breve*8/16~ s16 e4~
  e2.~ e4.~ e\breve*5/16 gis2. e\breve*5/16
  gis2~ gis
}
bassNotesAnt = \relative c {
  b\breve*9/16 cis\breve*8/16 s16 b4~
  b2. a4. cis\breve*5/16 gis2. cis\breve*5/16~
  cis2 gis
}
