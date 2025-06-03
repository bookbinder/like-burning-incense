\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Dan_3_52-57"
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
  Come to the wa -- ters, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all you who thirst; seek the Lord while he can be found,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ e] dis e fis[ e dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak dis4( cis) \bar ","
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak gis4( fis) \bar "'"
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b4.~ b4 s16 s1 cis4. \parenthesize b2.
  cis4 dis\breve*5/16 cis4~ cis4. b4
}
tenorNotesAnt = \relative g {
  e2 dis4. fis4 s16 gis2 fis4( e) gis4. b2. gis4 b\breve*5/16
  gis4~ gis4.~ gis4
}
bassNotesAnt = \relative c {
  cis2 b4.~ b4~ s16 b2 cis2 e4. dis2. cis4 b\breve*5/16
  e4 cis4. gis4
}
