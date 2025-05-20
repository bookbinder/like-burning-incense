\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "2"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Isa_38_10-14,_17-20"
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
  Keep this day
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as a fes -- ti -- val day and give praise to the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 e8[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak cis8
  \allowBreak dis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ e] dis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b2. s16 cis4. b\breve*5/16 cis2 \parenthesize b4 dis4.
  cis4~ cis b
}
tenorNotesAnt = \relative g {
  e4 fis2. s16 e4. fis\breve*5/16 gis2 b4~ b4. gis4~ gis2
}
bassNotesAnt = \relative c {
  cis4 b2.~ s16 b4.~ b\breve*5/16 e2 dis4 b4. cis4 gis2
}
