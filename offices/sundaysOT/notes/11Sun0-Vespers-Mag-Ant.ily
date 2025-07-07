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
    Go, preach the good news of the king -- dom; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    free -- ly you have re -- ceived, free -- ly give, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c'4 b8[ c] b b[ a] a4 g8 f a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak e4( d) \bar "'"
  \allowBreak d8[ a']
  \allowBreak g
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak a[ c]
  \allowBreak b[ a g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative g' {
  g\breve*5/16 f2. d2 s16 c2. s2 c2.~ c4 d4. b4
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c2.~ c4 b s16 g2. a2 f2.~ f4 d4.~ d4
}
bassNotesAnt = \relative c {
  e\breve*5/16 f2. g2 s16 e2. f2 a,4. f d4 g4.~ g4
}
%% update
