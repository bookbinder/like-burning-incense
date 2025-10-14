\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Magnificat"
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
  To de -- stroy the pow -- er of hell
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Christ died u -- pon the cross; clothed in strength and
  glo -- ry,
  he tri -- umphed o -- ver death on the third day,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ees f4 g8 aes g f g([ aes] g4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak aes8[ c]
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak g4( f)
  \allowBreak r4 \bar "|"
  \allowBreak f8[ c']
  \allowBreak bes
  \allowBreak aes[ c]
  \allowBreak c
  \allowBreak c[ bes]
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak aes[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g([ aes] bes4)
  \allowBreak g8
  \allowBreak aes
  \allowBreak c[ bes]
  \allowBreak bes4 \bar "'"
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak bes[ aes f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s2 s16 ees\breve*7/16 c2.~
  2. f\breve*5/16 c f\breve*6/16
  g\breve*5/16 c,~ 4
}
tenorNotesAnt = \relative g {
  c\breve*8/16 bes2 s16 aes\breve*7/16~ 2.
  f aes\breve*5/16~ aes bes\breve*6/16~
  \breve*5/16~ bes aes4
}
bassNotesAnt = \relative c {
  aes'\breve*8/16 ees2 s16 c\breve*7/16 f2.~
  << { \hideNotes \once \override NoteColumn.force-hshift = 0 f2. \unHideNotes }
     \new Voice { \voiceTwo aes,2. } >>
  des\breve*5/16 f des\breve*6/16
  ees\breve*5/16 f~ 4
}
