\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "10"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    He who lo -- ses his life be -- case of me 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and for the sake of the Go -- spel shall save it, says the Lord.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis gis a gis[ b] b cis-- cis-- b4
  \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak b8
  \allowBreak gis
  \allowBreak b
  \allowBreak a[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak gis4
  \allowBreak b8--[ gis e]
  \allowBreak e4
  \allowBreak cis8[ e]
  \allowBreak fis
  \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*9/16~ e4~ e\breve*5/16 s16 cis2 e4 dis2 b\breve*5/16 cis4. gis2
}
tenorNotesAnt = \relative g {
  b\breve*9/16 a4 gis\breve*5/16 s16 a2 fis2. e\breve*5/16~ e4.~ e2
}
bassNotesAnt = \relative c {
  e\breve*9/16~ e4~ e\breve*5/16 s16 fis2 b,2. gis\breve*5/16 a4. e2
}
