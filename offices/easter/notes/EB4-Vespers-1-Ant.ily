\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_62"
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
  Do not let your hearts be trou -- bled;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  have faith in me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis cis[ e] dis e fis4 e8 e[ dis] dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 b\breve*5/16 s16 cis\breve*5/16~ 4~ 4 b
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis\breve*5/16 s16 gis\breve*5/16~ 4~ 2
}
bassNotesAnt = \relative c {
  cis\breve*9/16 b\breve*5/16 s16 e\breve*5/16 cis4 gis2
}
