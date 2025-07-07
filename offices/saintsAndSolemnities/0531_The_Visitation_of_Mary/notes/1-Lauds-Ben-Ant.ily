\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "14"
antKeysig = \key e \major
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
  When E -- li -- za -- beth heard Ma -- ry's gree -- ting,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  she cried out and said: Who am I that the mo -- ther of my Lord
  should come to me? "[E.T. Al" -- le -- lu  -- ia.]
}
sopNotesAnt = \relative e' {
  b8 b e[ fis] e e4 e8[ gis] fis([ gis] fis4) e8 gis[ fis] fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e[ gis]
  \allowBreak b
  \allowBreak a([ gis] fis4)
  \allowBreak e8[ gis]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak a([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4 \bar "||"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s\breve*12/16 s16 e4. cis2
  e\breve*12/16 cis\breve*5/16~ cis4. b4~ b8
  cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 a\breve*12/16 s16 gis4. e2~
  e\breve*12/16~ e\breve*5/16 a4. gis4.~ gis8
  a4~ a gis
}
bassNotesAnt = \relative c {
  e\breve*9/16~ e\breve*12/16~ s16 e4. a,2
  gis\breve*12/16 a\breve*5/16~ a4. e'4~ e8~
  e4~ e2
}
