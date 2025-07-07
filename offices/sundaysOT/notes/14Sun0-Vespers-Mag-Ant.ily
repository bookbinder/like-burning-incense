\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My yoke is ea -- sy 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and my bur -- den is light, says the Lord.
}
sopNotesAnt = \relative e' {
  g4 c8[ b] c a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d4
  \allowBreak f8
  \allowBreak g
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative d' {
  g\breve*5/16 e2. s16 d\breve*5/16~ d4~ d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c2. s16 a\breve*5/16~ a4 c( b)
}
bassNotesAnt = \relative c {
  e\breve*5/16 c2. s16 f\breve*5/16 d4 g2
}
%% update
