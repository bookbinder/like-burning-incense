\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "43"
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
  The Fa -- ther loves the Son
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and has en -- trus -- ted e -- very thing to him,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 b4 cis8 dis[ e] fis e([ dis] cis4)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak e8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
  }
altoNotesAnt = \relative c' {
  s4 s4. s4. s4 cis\breve*5/16~ s16 cis\breve*7/16~
  cis4. b4 gis2
}
tenorNotesAnt = \relative g {
  e4 dis4. fis4. gis4 e\breve*5/16~ s16 e\breve*7/16
  a4. fis4~ fis e
}
bassNotesAnt = \relative c {
  cis4~ cis4.~ cis4.~ cis4~ cis\breve*5/16 s16 a\breve*7/16~
  a4. b4 cis2
}