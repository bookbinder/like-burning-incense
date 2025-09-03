\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key d \minor
psalmnum = "Ps_135_13-21"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Wait for the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and he will come to you with his sav -- ing power.
}
sopNotesAnt = \relative e' {
  \allowBreak f8[ d]
  \allowBreak e
  \allowBreak f
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak a[ bes]
  \allowBreak a
  \allowBreak g4
  \allowBreak f8
  \allowBreak f
  \allowBreak e[ f]
  \allowBreak e
  \allowBreak d4
  \bar "||"
}
altoNotesAnt = \relative c' {
  a2 c\breve*5/16~ s16 c4. d2 c4. a4
}
tenorNotesAnt = \relative g {
  f2 e4. s16 d8[ e] f4.~ f4 bes4 g4. f4
}
bassNotesAnt = \relative c {
  d2 c\breve*5/16 s16 f,4. bes2 c4. d4
}
