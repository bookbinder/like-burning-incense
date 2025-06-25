\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_141_1-9"
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
  Pro -- claim the good news a -- mong the na -- tions:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Our God will come to save us.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes aes4 aes8 aes ges bes bes[ aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak f8
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des4. f2 ges4 f\breve*5/16 s16 ees4. des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
  bes4 aes4.~ aes2 bes4 des\breve*5/16 s16 bes4. ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
  ges'4 f4. des2.~ des\breve*5/16 s16 ees4. bes\breve*5/16 des2
}
