\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Magnificat"
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
  When they heard the voice from the cloud,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the di -- sci -- ples fell on their fa -- ces, o -- ver -- come with fear;
  Je -- sus came up to them, touched them and said: Stand up.
  Do not be a -- fraid.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis dis[ cis] b cis dis4 
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ dis]
  \allowBreak cis
  \allowBreak gis'4
  \allowBreak fis8
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak b
  \allowBreak dis4( cis)
  \allowBreak r4 \bar "|"
  \allowBreak e4
  \allowBreak dis8
  \allowBreak cis
  \allowBreak b[ cis]
  \allowBreak dis
  \allowBreak dis4 \bar "'"
  \allowBreak e4
  \allowBreak dis8
  \allowBreak cis
  \allowBreak b([ cis] dis4)
  \allowBreak \breathe
  \allowBreak e8[ dis]
  \allowBreak cis4( gis') \bar "'"
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak cis,8
  \allowBreak e
  \allowBreak fis([ e] dis4) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 b2 s16 cis\breve*7/16
  b\breve*9/16 gis2.~ gis2 b4.~ b4~ b2~
  b2 gis\breve*11/16 cis4( b)
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis2 s16 e\breve*7/16
  fis\breve*9/16 e2.~ e2 fis4.~ fis4 gis2
  dis4( fis4) e\breve*11/16 gis2
}
bassNotesAnt = \relative c {
  cis\breve*9/16 b2~ s16 b\breve*7/16~
  b\breve*9/16 cis2.~ cis2 dis4. b4~ b2~
  b2 cis\breve*11/16 gis2
}
