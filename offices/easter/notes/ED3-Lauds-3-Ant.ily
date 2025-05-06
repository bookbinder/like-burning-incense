\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "34"
antKeysig = \key aes \major
psalmnum = "Ps_144_1-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  The Lord is my re -- fuge
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and my sa -- vior, al -- le -- lu __ -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes g[ aes] f ees des[ f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak aes'8
  \allowBreak g[ aes]
  \allowBreak f([ ees] f[ ees des])
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16 s16 c4 bes\breve*5/16 des4~ des\breve*5/16~ des4
}
tenorNotesAnt = \relative g {
  f\breve*10/16 s16 aes4 f\breve*5/16 bes4 aes\breve*5/16 f4
}
bassNotesAnt = \relative c {
  des\breve*10/16 s16 aes4 bes\breve*5/16~ bes4 des\breve*5/16~ des4
}
