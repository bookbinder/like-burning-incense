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
    When Je -- sus saw the crowds, 
     \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    he went up the moun -- tain; his dis -- ci -- ples
    came and ga -- thered a -- round him, and he
    o -- pened his mouth and be -- gan to teach them.
}
sopNotesAnt = \relative e' {
  cis4 e8[ dis] cis \bar "" b cis \bar "" cis4( gis')
  \noBreak \hideNotes gis16 \unHideNotes   %so that I can align the * better
  \allowBreak gis8
  \allowBreak fis[ gis fis]
  \allowBreak e4
  \allowBreak dis8
  \allowBreak dis[ cis]
  \allowBreak cis4
  \allowBreak r4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ ais]
  \allowBreak b
  \allowBreak b4
  \allowBreak b8
  \allowBreak ais
  \allowBreak b
  \allowBreak ais
  \allowBreak gis4
  \allowBreak gis \bar ","
  \allowBreak gis8
  \allowBreak gis[ b]
  \allowBreak cis[ b cis]
  \allowBreak b
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis8[ e cis]
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s4. cis\breve*5/16~ s16 cis4. s4. s2 r4 e4
  fis4. dis2. e\breve*5/16 fis4 e\breve*5/16
  cis2~ cis4 r4 a4 gis
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis4 e\breve*5/16 s16 dis4. gis4. fis4 e2 cis'4
  b4.~ b2.~ b\breve*5/16~ b4 gis\breve*5/16
  a2 gis4 dis e2
}
bassNotesAnt = \relative c {
  e\breve*5/16 dis4 cis\breve*5/16~ s16 cis2.~ cis2. cis4
  dis4. gis fis e\breve*5/16 dis4 cis\breve*5/16
  a2 cis2~ cis2
}
%% update
