\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  He pu -- ri -- fied us from our sins,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and is seat -- ed on high at God's right hand,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 c[ d] c b c a b a4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak d[ a']
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a4( g) \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  r8 g'8~ g\breve*5/16 f4 e2. s16 d4.~ \breve*5/16~
  d\breve*5/16 e4 d2
}
tenorNotesAnt = \relative g {
  c4~ \breve*5/16~ 4~ 2.~ s16 c4.~ \breve*5/16
  b c4~ 4 b
}
bassNotesAnt = \relative c {
  e4~ \breve*5/16 f4 c2. s16 d4. f\breve*5/16
  g~ 4~ 2
}
