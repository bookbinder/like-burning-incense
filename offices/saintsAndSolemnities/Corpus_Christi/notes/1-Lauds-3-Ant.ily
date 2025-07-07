\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_149"
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
  I will give to the one who is vic -- to -- rious
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the hid -- den bread and a new name, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis dis[ e] dis dis e fis4 gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis[-- fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak fis[-- e dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*5/16~ b\breve*5/16~ s16 b4.~ b2~ b\breve*5/16
  gis4 cis4. b4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis\breve*5/16~ fis\breve*5/16 s16 e4.~ e2
  dis\breve*5/16 e4 gis4.~ gis4
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b\breve*5/16 dis\breve*5/16 s16 e4. gis,2
  b\breve*5/16 cis4~ cis4. gis4
}
