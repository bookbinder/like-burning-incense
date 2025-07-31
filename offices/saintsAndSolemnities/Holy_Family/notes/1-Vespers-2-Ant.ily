\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "17"
antKeysig = \key e \major
psalmnum = "Ps_127"
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
  Je -- sus re -- turned with Ma -- ry and Jo -- seph to
  Na -- za -- reth;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  there he lived and was o -- be -- dient to them.
}
sopNotesAnt = \relative e' {
  e4 e8 fis gis[ a] \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak cis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*10/16 cis2 b\breve*5/16 s16 dis4.
  cis\breve*5/16~ cis2 b4
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 a2 b\breve*5/16~ s16 b4.
  gis\breve*5/16 a2 gis4
}
bassNotesAnt = \relative c {
  e\breve*10/16~ e2 dis\breve*5/16 s16 b4.
  cis\breve*5/16 a2 e'4
}
