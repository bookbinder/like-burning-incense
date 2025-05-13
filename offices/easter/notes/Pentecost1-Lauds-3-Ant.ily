\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_149"
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
  The a -- pos -- tles preached
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in dif -- ferent tongues and pro -- claimed the great
  works of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 f ees[ aes] aes g([ aes] f4)
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees
  \allowBreak des[ f]
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak f4( ees) \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c4 ees4. des\breve*7/16 s16 c2 des4.~ des2
  bes\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
  aes4~ aes4.~ aes\breve*7/16~ s16 aes2~ aes4.~ aes2
  g\breve*5/16 aes4~ aes g
}
bassNotesAnt = \relative c {
  aes'4 c,4. des\breve*7/16 s16 aes2 bes4.~ bes4 des4 ees\breve*5/16~
  ees4~ ees2
}
