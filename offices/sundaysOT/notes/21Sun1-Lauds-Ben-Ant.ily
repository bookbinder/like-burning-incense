\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
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
    Lord, to whom shall we go? 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    You have the words of e -- ter -- nal life. We be -- lieve and we are
    con -- vinced that you are Christ, the Son of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 fis8 gis[ a] gis a b4
  \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak e,4
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak a[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak gis
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak b
  \allowBreak gis
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis[ b a]
  \allowBreak gis
  \allowBreak fis8--[ e cis]
  \allowBreak \breathe
  \allowBreak e8
  \allowBreak fis[ a gis]
  \allowBreak a
  \allowBreak fis--([ e] gis4) \bar "'"
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*9/16 s16 cis\breve*11/16 b2 e\breve*8/16~ e4. dis2 cis e
  cis\breve*5/16~ cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 s16 a\breve*11/16 gis2 e\breve*8/16~ e4. gis2~ gis a
  gis\breve*5/16 a4~ a gis
}
bassNotesAnt = \relative c {
  e\breve*9/16~ s16 e\breve*11/16~ e2 gis,\breve*8/16 a4. b2 cis4( e~) e2~
  e\breve*5/16~ e4~ e2
}
