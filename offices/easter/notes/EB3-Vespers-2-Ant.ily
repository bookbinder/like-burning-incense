\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_49_14-21"
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
  The Lord has res -- cued my life
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the pow -- er of hell, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] cis dis[ e] dis e e4( fis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2~ 2.~ s16 b4. cis\breve*5/16 b4 a gis
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2 cis4( dis2) s16 e4.~ \breve*5/16 dis4 e2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2~ 2. s16 e,4. a\breve*5/16 b4 cis2
}
