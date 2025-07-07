\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_118"
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
  I shall not die but live
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and pro -- claim the works of the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 dis8 dis[ e] cis[ b] e fis4( gis)
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] a4) \bar "'"
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16~ b\breve*9/16 s16 cis2 e\breve*7/16 b2
}
tenorNotesAnt = \relative g {
  e\breve*8/16~ e\breve*9/16~ s16 e2 a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
  gis\breve*8/16 e\breve*9/16 s16 a2 cis\breve*7/16 e2
}
