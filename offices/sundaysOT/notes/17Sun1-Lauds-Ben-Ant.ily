\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    When those men saw the signs Je -- sus per -- formed, they said: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    Sure -- ly this is the Pro -- phet who is to come in -- to the world.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak g8
  \allowBreak a[ g]
  \allowBreak f[ g]
  \allowBreak a4
  \allowBreak a8
  \allowBreak g[ c]
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak a4( g)
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak f4
  \allowBreak e8
  \allowBreak f
  \allowBreak e[ d]
  \allowBreak d4
  \allowBreak f8[ e]
  \allowBreak d
  \allowBreak c
  \allowBreak d([ e] f4)
  \allowBreak f8
  \allowBreak g
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 f\breve*7/16 g\breve*5/16 f4. d2 s16 e4. d2 r2 c2~ c~ c4. b4
}
tenorNotesAnt = \relative g {
  c4~ c\breve*7/16~ c\breve*5/16~ c4. b2 s16 c4.~ c2 a1 f2 s4. d4
}
bassNotesAnt = \relative c {
  e4 d\breve*7/16 e\breve*5/16 f4. g2 s16 c,4. d2 f1 a,2 d,4. g4
}
