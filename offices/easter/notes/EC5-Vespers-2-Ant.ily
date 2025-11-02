\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "11"
antKeysig = \key e \major
psalmnum = "Ps_132_11-18"
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
  Je -- sus Christ is su -- preme in his pow -- er.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  He is King of kings and Lord of lords,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis b4 e,8 fis a[ gis] fis e gis[ fis] fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis
  \allowBreak cis4( b8)
  \allowBreak cis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak fis--([ gis a gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e4.~ 2~ 2 cis s16 b2. s2 cis4.~ \breve*9/16 b2
}
tenorNotesAnt = \relative g {
  b4. gis2 cis a s16 gis2. fis2 gis4. a\breve*9/16~ 4 gis
}
bassNotesAnt = \relative c {
  e4.~ 2~ 2~ 2~ s16 e2. dis2 cis4. a\breve*9/16 e'2
}