\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    I am the li -- ving bread come down from hea -- ven. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    A -- ny -- one who eats this bread will live for e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis dis[ e] fis e4 dis8 cis8[ gis'] fis a--[ gis] gis4
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b2. cis4. e2~ s16 e2~ e4 cis\breve*5/16 dis2. b4 gis2
}
tenorNotesAnt = \relative g {
  gis2 fis2. gis4. b2~ s16 b2~ b4 a\breve*5/16 fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
  cis2 b2. e4.~ e2~ s16 e2 gis4 a\breve*5/16 b,2. gis4 cis2
}
