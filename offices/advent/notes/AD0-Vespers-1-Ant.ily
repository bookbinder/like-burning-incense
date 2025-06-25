\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "56"
antKeysig = \key cis \minor
psalmnum = "Ps_110_1-5,_7"
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
  He comes, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the de -- sire of all hu -- man hearts; his
  dwel -- ling place shall be re -- splen -- dent with glo -- ry,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis4( gis')
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis4( fis4) \bar ","
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  r8 cis8~ cis2. s16 e\breve*7/16 dis\breve*5/16 cis\breve*7/16
  cis4 b gis\breve*5/16 a4 gis2
}
tenorNotesAnt = \relative g {
  a4 gis2. s16 b\breve*7/16~ b\breve*5/16 gis\breve*7/16
  fis2~ fis4 e4. fis4~ fis e
}
bassNotesAnt = \relative c {
  fis4 e2.~ s16 e\breve*7/16 b\breve*5/16 cis\breve*7/16
  a4 b cis\breve*5/16~ cis4~ cis2
}
