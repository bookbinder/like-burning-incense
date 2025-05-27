\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
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
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    If a -- ny -- one bears wit -- ness to me be -- fore men, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I will praise him in the pre -- sence of my Fa -- ther.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis cis[ e] fis4 fis8 e fis fis fis[ a] a4( gis)
  \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak cis
  \allowBreak b
  \allowBreak cis8[ e fis e cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s1*7/8 cis2. e4 e2 s16 dis4. cis4~ cis2~ cis2 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 e2. a4 b2~ s16 b4. gis4 e2 a2 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  e\breve*7/16 a,2. cis4 e2 s16 b4. cis4~ cis2~ cis2~ cis\breve*5/16~ cis4
}
