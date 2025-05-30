\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Where two or three are ga -- thered to -- ge -- ther in my name, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I am there a -- mong them, says the Lord.
}
sopNotesAnt = \relative e' {
  cis4 e8[ fis] e dis e dis[ cis] cis b cis[ gis'] gis gis gis4 fis
  \hideNotes fis16 \unHideNotes  %so taht I can align the * better
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis[ cis,]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16~ gis2 b s16 gis4~ gis4. a\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
  e\breve*11/16 cis2 dis s16 e4~ e4. fis\breve*7/16 e2
}
bassNotesAnt = \relative c {
  cis\breve*11/16 e,2 b'2 s16 cis4~ cis4.~ cis\breve*7/16~ cis2
}
