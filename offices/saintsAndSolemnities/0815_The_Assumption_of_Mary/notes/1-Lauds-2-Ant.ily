\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
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
  The Vir -- gin Ma -- ry is e -- xal -- ted
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a -- bove the choirs of an -- gels;
  let all be -- lie -- vers re -- joice and bless the Lord.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e e4 cis8 cis e e[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ fis]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "|"
  \allowBreak r8
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*10/16 b\breve*5/16 s16 dis4. cis4.~ cis4 b4~
  b4 cis\breve*10/16~ cis2 b4
}
tenorNotesAnt = \relative g {
  e\breve*10/16 fis\breve*5/16 s16 b4. gis4.~ gis2~
  gis4 e\breve*10/16 gis4 e gis
}
bassNotesAnt = \relative c {
  cis\breve*10/16 b\breve*5/16~ s16 b4. e4. gis,2~
  gis4 cis\breve*10/16~ cis2 gis4
}
