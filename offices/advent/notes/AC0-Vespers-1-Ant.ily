\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "6"
antKeysig = \key c \major
psalmnum = "Ps_113"
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
  Re -- joice, Je -- ru -- sa -- lem, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let your joy o -- ver -- flow; your Sa -- vior will
  come to you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 d8 e[ f] g f e d4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak e
  \allowBreak f4
  \allowBreak g8[ a]
  \allowBreak a
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak a[ c]
  \allowBreak b
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    s4 s4 s4. s4 s16 c4 a4 c2.~ c\breve*7/16 c4.~ c4~ c b  
}
tenorNotesAnt = \relative g {
  a4 g4. \tieDown
  <<  {a2 \hideNotes f4 s16 \unHideNotes } \\
      {\voiceOne \hideNotes  f2~ s16 \unHideNotes f4~ }
    >> \tieUp
  f4~ f4. e4.~ e\breve*7/16 f4. e4 d2
}
bassNotesAnt = \relative c {
  f4~ f4.~ f2 s16 a,4 d4 c2. a\breve*7/16 f4.~ f4 g2
}
