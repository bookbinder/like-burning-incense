\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
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
    He will bring those e -- vil men to an e -- vil end 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and en -- trust his vine -- yard to o -- ther te -- nants who will give
    him the har -- vest at the pro -- per sea -- son.
}
sopNotesAnt = \relative e' {
  g4 g8 g[ a] g \bar "" f[ e] d d[ f] e f \bar "" g--[ a b] a g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4 \bar "'"
  \allowBreak d8
  \allowBreak e
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak a'4
  \allowBreak a8
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*6/16 d\breve*7/16 f2 g2 s16 e4. f2 e4. d\breve*7/16 r4. f\breve*7/16 d2
}
tenorNotesAnt = \relative g {
  c\breve*6/16~ c\breve*7/16~ c2~ c~ s16 c4.~ c2~ c4.~ c\breve*10/16~ c\breve*7/16~ c4 b
}
bassNotesAnt = \relative c {
  c\breve*6/16 d\breve*7/16 f2 e s16 a4. f2 c4. d\breve*10/16 f\breve*7/16 g2
}
%% update
