\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "M"
psalmtone = "10"
psalmtonestruct = "33"
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
  Who -- e -- ver wish -- es to come af -- ter me 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  must de -- ny him -- self, take up his cross, and fol -- low me.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e gis4 gis8 a b[ cis] b a b([ a] gis4)
  \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak gis8[ a]
  \allowBreak b([ cis] b4)
  \allowBreak b8
  \allowBreak e,4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*9/16 e2 dis4 e s16 cis4. e4. cis4 e2 fis4~ fis e cis4. b4
}
tenorNotesAnt = \relative g {
  gis\breve*9/16~ gis2~ gis4~ gis s16 a4. b a4 gis2 a4 b gis a4. gis4
}
bassNotesAnt = \relative c {
  e\breve*9/16~ e2 b4( cis) s16 a'4. gis a4 cis,2. dis4 e4~ e4.~ e4
}
