\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "42"
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
    He saw the great crowd 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and had pi -- ty on them, for they were like sheep with -- out a shep -- herd.
}
sopNotesAnt = \relative e' {
  r8 cis8 e fis fis[ gis] gis4
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis[ e]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis8[ cis,]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b4 gis4.~ s16 gis4 cis2 b\breve*8/16 cis\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  e2 dis4 e4.~ s16 e4 a2 fis\breve*8/16~ fis\breve*5/16~ fis4 e
}
bassNotesAnt = \relative c {
  cis2~ cis4~ cis4.~ s16 cis4 a2 b\breve*8/16 a\breve*5/16 cis2
}
