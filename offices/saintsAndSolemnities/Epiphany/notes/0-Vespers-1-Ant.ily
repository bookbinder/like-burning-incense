\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_135_1-12"
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
  Be -- got -- ten of the Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be -- fore the day -- star shone or time be -- gan, the Lord our Sav -- ior
  has ap -- peared on earth to -- day.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak f8
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak f[ ees des]
  \allowBreak c4
  \noBreak \hideNotes c16 \unHideNotes
  \allowBreak f8
  \allowBreak ees[ f]
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g4
  \allowBreak g8([ aes] bes4)
  \allowBreak bes8
  \allowBreak aes
  \allowBreak g
  \allowBreak g4( f) \bar ","
  \allowBreak f8
  \allowBreak ees[ f]
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak g
  \allowBreak g
  \allowBreak ees
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*13/16 s16 ees4.~ 2 f\breve*7/16
  des\breve*5/16 c4. des2 c4. bes4 c4
}
tenorNotesAnt = \relative g {
  f\breve*13/16 s16 aes4. bes2~ \breve*7/16
  aes\breve*5/16~ 4.~ 2 g4.~ 4 aes
}
bassNotesAnt = \relative c {
  aes\breve*13/16 s16 c4. ees2 des\breve*7/16~
  \breve*5/16 aes4. bes2 c4.~ 4 f,
}
