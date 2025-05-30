\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "54"
psalmtonestruct = "42"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus rose ear -- ly in the mor -- ning 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and went out to a place of so -- li -- tude, and there he prayed.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis[ gis] \bar "" b[ gis] gis4 fis8 e \bar ""
  fis[ e cis] cis4
  \hideNotes cis16 \unHideNotes   %so that I can align the * better
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak e4
  \allowBreak cis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak b
  \allowBreak b8
  \allowBreak ais4 \bar "'"
  \allowBreak ais8
  \allowBreak b
  \allowBreak ais
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*5/16~ dis2. cis4.~ cis s16 gis2. b4.
  cis\breve*5/16~ cis4 b
}
tenorNotesAnt = \relative g {
  b\breve*5/16 cis4 b2 gis4. e~ s16 e2. dis4.
  fis\breve*5/16~ fis4 dis
}
bassNotesAnt = \relative g {
  gis\breve*5/16~ gis2. cis,\breve*6/16~ s16 cis2. b4.
  fis\breve*5/16 dis4 gis
}
