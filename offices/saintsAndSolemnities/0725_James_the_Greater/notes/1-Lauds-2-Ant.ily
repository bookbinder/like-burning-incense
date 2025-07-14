\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Dan_3_57-88,_56"
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
  Im -- me -- diate -- ly
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  they left their nets and their fa -- ther and fol -- lowed him.
}
sopNotesAnt = \relative e' {
  r8 gis8 fis gis cis,4
  \noBreak \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak e4
  \allowBreak cis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis([ fis] gis4)
  \allowBreak cis,8
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*14/16 s16 cis2 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  e\breve*14/16~ s16 e2 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  cis\breve*14/16 s16 a2 fis\breve*5/16 cis'4
}
