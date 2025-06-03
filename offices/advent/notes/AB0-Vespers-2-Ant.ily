\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "47"
antKeysig = \key e \major
psalmnum = "Ps_16"
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
  Have cou -- rage, all of you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  lost and fear -- ful; take heart and
  say: Our God will come to save us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e dis[ e] cis b4
  \noBreak \hideNotes b16 \unHideNotes
  e4 fis8 fis[ gis] fis \breathe
  \allowBreak e
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak gis8[ a]
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*10/16 s16 cis4. dis2 e4. cis4 e4~ e2. cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 fis4 s16 gis4. b2~ b4. a4 b4~ b2.
  \parenthesize cis4. a4.~ a4~ a4 gis4 
}
bassNotesAnt = \relative c { 
  e\breve*8/16 dis4 s16 cis4. b2 e4.~ e4~ e4 gis2. a2.
  a,4 e'2 
}
