\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "2"
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
    He is not a God of the dead, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    but of the li -- ving: for to him all things are a -- live,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 g g[ c] a a[ g] f g \bar "" a4
  \noBreak \hideNotes a16 \unHideNotes  %so taht I can align the * better
  \allowBreak a8
  \allowBreak a
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak e[ g]
  \allowBreak a4
  \allowBreak g
  \allowBreak f8
  \allowBreak e
  \allowBreak e4( d) \bar "'"
  \allowBreak a'8
  \allowBreak b[ a]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*5/16 f2~ f\breve*5/16 s16 d2 s4 e4~ e2 s2. s8 f4 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c2~ c\breve*5/16 s16 b2 s4 c4~ c2. a\breve*5/16
  c4~ c b
}
bassNotesAnt = \relative c {
  c\breve*5/16 f2 d\breve*5/16 s16 g2 s4 c,4~ c2. f\breve*5/16~ f4
  g2
}
%% update
