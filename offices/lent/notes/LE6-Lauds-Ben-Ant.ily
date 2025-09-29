\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
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
  The Lord said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have done you ma -- ny acts of kind -- ness; for which
  of them do you want to kill me?
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ fis] fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak cis4
  \allowBreak b8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e4
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b2.~ s16 b\breve*9/16~ \breve*5/16
  cis4.~ 4 r4 b4. a4 gis
}
tenorNotesAnt = \relative g {
  e2~ 2.~ s16 e\breve*9/16 dis\breve*5/16
  e4. fis2~ 4. e2
}
bassNotesAnt = \relative c {
  cis2 gis2. s16 e\breve*9/16 b'\breve*5/16
  a4.~ 2 gis4. cis2
}
