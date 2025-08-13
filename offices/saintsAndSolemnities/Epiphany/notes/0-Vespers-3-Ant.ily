\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "1_Tim_3_16"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  The star burned like a flame,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  point -- ing the way to God, the King of kings; the wise men saw the sign
  and brought their gifts in ho -- mage to their great King.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak f[ ges]
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak bes4( aes)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges[ bes]
  \allowBreak bes
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees4( des) \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak ces[ ees ges]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak ges4( aes) \bar "'"
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak ges8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees([ f] ees4)
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*8/16~ des2 s16 ees2 des4.~ 4.
  bes4. aes2 s4 ces\breve*7/16 bes4( des4.) ees4.~
  4. des\breve*7/16 ces2 aes
}
tenorNotesAnt = \relative g {
  f\breve*8/16 ges4( f) s16 ges2~ 4. f4.
  ges4. f2
  \shape #'((0 . -0.5) (0 . -0.5) (-1.5 . -0.5) (-2.5 . -0.5)) ~
  << {\hideNotes f4 \unHideNotes } \new Voice { \voiceOne aes4 } >>
  ges\breve*7/16~ 4 f4. ges4.~
  4.~ \breve*7/16~ 2~ 4( f)
}
bassNotesAnt = \relative c {
  des\breve*8/16~ 2 s16 ces2 bes4. des4.~
  4.~ 2 f4 ees\breve*7/16 des4~ 4. ces4.~
  4. bes\breve*7/16 ces2 des
}
