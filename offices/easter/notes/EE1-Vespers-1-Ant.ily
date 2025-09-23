\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_110_1-5,_7"
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
  The Lord has ri -- sen
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and is seat -- ed at the right hand of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] b cis[ gis'] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*11/16 s16 s\breve*5/16 e4 r4 dis4~ 4. b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*11/16 s16 b\breve*5/16 gis2~ 4 fis4.~ 4~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*11/16 s16 dis\breve*5/16 cis2 b4~ 4. gis4 cis2
}
