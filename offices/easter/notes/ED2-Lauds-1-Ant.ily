\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_90"
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
  Let the splen -- dor of the Lord our God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be u -- pon us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis cis e dis[ e] dis cis([ gis'] fis4)
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 b4. cis4 dis4~ s16 dis4 cis4. b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
  e\breve*7/16 fis4. e4 fis s16 b4 gis4.~ gis4. e4 gis2
}
bassNotesAnt = \relative c {
  cis\breve*7/16 b4.~ b2~ s16 b4 cis4. gis4.~ gis4~ gis2
}
