\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "70"
psalmtonestruct = "43"
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
    Who -- e -- ver does the will of God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    he is my bro -- ther, and my sis -- ter, and my mo -- ther.
}
sopNotesAnt = \relative e' {
  r8 e8 fis[ gis] gis fis gis b[ cis] b gis4
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak e4
  \allowBreak e8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak cis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak cis
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16 e4. b4~ s16 b2 cis\breve*8/16 a4 gis
}
tenorNotesAnt = \relative g {
  gis\breve*7/16~ gis4. e4~ s16 e2 e\breve*8/16~ e2
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e4.~ e4 s16 gis,2 a\breve*8/16 e2
}
