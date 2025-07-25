\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_80"
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
  I am the vine;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you are the bran -- ches, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 cis8 e e4( dis)
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  dis4 dis8 e fis[ e dis] dis4 \bar "'" fis8 fis[ e] dis4 dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*8/16 s16 cis4. b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
  e2 fis\breve*8/16 s16 e4. fis4. gis4~ gis2
}
bassNotesAnt = \relative c {
  cis2 b\breve*8/16~ s16 b4.~ b4. e4 gis,2
}
