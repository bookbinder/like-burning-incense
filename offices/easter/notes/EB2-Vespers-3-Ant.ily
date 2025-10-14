\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Eph_1_3-10"
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
  From his full -- ness
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  we have all re -- ceived, grace u -- pon grace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 c b[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak g4 \bar ","
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak f[-- a]
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4 s2 s16 e4.~ 4 f4.~ 2 d
}
tenorNotesAnt = \relative g {
  c4 d b2 s16 a4. c4~ 4.~ 2~ 4 b
}
bassNotesAnt = \relative c {
  e4 g2. s16 c,4.~ 4 f4. d2 g
}
