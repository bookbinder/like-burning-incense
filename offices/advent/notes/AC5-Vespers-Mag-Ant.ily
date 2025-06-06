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
  All you who love Je -- ru -- sa -- lem,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  re -- joice with her for -- e -- ver.  
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] cis dis4 e8 fis[ gis] fis fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b4. cis4. b4.~ s16 b4. cis4.~ cis4 b4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4. e4. dis4. s16 e4. gis4.~ gis2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b4.~ b4.~ b4. s16 e4. cis4. gis2
}
