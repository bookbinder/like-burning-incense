\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "34"
antKeysig = \key aes \major
psalmnum = "Ps_142"
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
  You have led me forth from prison,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that I may give praise to your name,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 f aes[ bes] aes g! aes f4 f
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees([ f] ges4)
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ \breve*9/16~ s16 des2. bes\breve*7/16 aes2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 aes\breve*9/16 s16 ges2.~ \breve*7/16~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ \breve*9/16 s16 bes2. ges\breve*7/16 des'2
}
