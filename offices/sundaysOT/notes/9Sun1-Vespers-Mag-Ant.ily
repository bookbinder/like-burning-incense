\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "42"
psalmtonestruct = "43"
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
    Lord, I am not wor -- thy to have you en -- ter my house; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    just say the word and my ser -- vant will be healed.
  }
sopNotesAnt = \relative e' {
  e4 e8 e8 dis[ e] dis[ cis] cis gis' fis gis b4^"?" b8 b8 gis4
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8[ b]
  \allowBreak cis--[ b]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak e4
  \allowBreak dis
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis2. s2 e4 fis2 e4 s16 fis4 e4.
  dis2 cis4. b4~ b gis4
}
tenorNotesAnt = \relative g {
  gis2.~ gis2 b4~ b2 cis4 s16 b4 gis4.
  b2 e,4.~ e4 fis e
}
bassNotesAnt = \relative c {
  cis2. e2~ e4 dis2 s16 cis4 dis e4. b2 a 4. gis4 b cis
}
%% update
