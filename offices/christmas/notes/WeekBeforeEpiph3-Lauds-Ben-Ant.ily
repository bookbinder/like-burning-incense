\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "42"
antKeysig = \key cis \minor
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
  The Word was made man;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  full of grace and truth, he lived a -- mong us. From his full -- ness
  we all have re -- ceived gift u -- pon gift of his love,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak gis8
  \allowBreak gis4
  \allowBreak cis,8
  \allowBreak cis[ dis]
  \allowBreak e([ fis] gis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak gis
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak b4
  \allowBreak b8
  \allowBreak b
  \allowBreak b
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis([ e] dis4)
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16 s16 e'4. dis\breve*8/16 cis2.
  b2~ \breve*8/16 cis2. b4
  gis\breve*5/16 a4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*11/16 s16 gis4.~ \breve*8/16 e2.~
  e2 dis2 fis2~ 2.~ 4
  e\breve*5/16 fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*11/16~ s16 cis4. gis\breve*8/16 a2.
  e2 b'\breve*8/16 a2. b4
  cis\breve*5/16~ 4~ 2
}
