\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_41"
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
  Christ be -- came poor for our sake,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that we might be -- come rich, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8 b[ cis] cis[ gis'] a gis4 gis
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ e fis]
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4. s4 cis4. b\breve*5/16~ s16 b2 dis2. b4 gis2
}
tenorNotesAnt = \relative g {
  gis4. fis4 gis4. e\breve*5/16~ s16 e2 fis2.~ 4~ 4 e
}
bassNotesAnt = \relative c {
  cis4. dis4 e4.~ \breve*5/16 s16 gis,2 b2.~ 4 cis2
}
