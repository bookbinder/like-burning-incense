\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_150"
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
  Our God will come with great pow -- er
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to en -- ligh -- ten the eyes of his ser -- vants, al -- le -- lu -- ia.  
}
sopNotesAnt = \relative e' {
  r8 e8 fis[ gis] gis gis([ a] gis4) gis8 fis[ a] a[ gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis([ gis] a4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s8 e\breve*5/16~ e4~ e2 s16 s4 cis4. e2. b4~ b4. cis4 b2
}
tenorNotesAnt = \relative g {
  gis4 a4. b\breve*5/16 cis4 b2~ s16 b4 a4.~ a2.~ a4 gis4.
  a4~ a gis
}
bassNotesAnt = \relative c {
  e4~ e4.~ e\breve*5/16~ e4~ e2 s16 gis4 a4. cis,2. e4~ e4.~ e4~ e2
}
