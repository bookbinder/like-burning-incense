\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "17"
antKeysig = \key e \major
psalmnum = "Ps_63_2-9"
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
  Who -- e -- ver thirsts
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will drink free -- ly of life -- gi -- ving wa -- ter, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e cis b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8
  \allowBreak e[ fis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 s2 cis2~ cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 s16 b2 a2~ a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
  e\breve*9/16~ s16 e2 a2 a,\breve*7/16 e'2
}
