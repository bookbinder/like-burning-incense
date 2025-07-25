\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    When the Son of Man comes to earth, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} do you think he will find
    faith in men's hearts?
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis cis([ e] dis4) dis8 e fis4
  \noBreak \hideNotes fis16 \unHideNotes  %so taht I can align the * better
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis8[ b]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis8([ gis a gis] fis4)
  \allowBreak e8
  \allowBreak e8[ dis]
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2.~ b2~ s16 b\breve*5/16 cis2~ cis4 b gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2. dis2 s16 e\breve*5/16~ e2 a4. fis4~ fis( e)
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2.~ b2 s16 e,\breve*5/16 a2~ a4. b4 cis2
}
%% update
