\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Dan_3_57-88,_56"
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
  The Lord sent his an -- gel
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to free me from the fire, and I es -- caped the flames un -- harmed.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak aes4
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes aes]
  \allowBreak aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ees
  \allowBreak ees
  \allowBreak ges
  \allowBreak f4 \bar ","
  \allowBreak f8
  \allowBreak f
  \allowBreak ges
  \allowBreak ees[ f]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*12/16~ s16 des2~ des\breve*5/16 ces4.
  des4. aes2
}
tenorNotesAnt = \relative g {
  f\breve*12/16 s16 bes2 aes\breve*5/16~ aes4.
  ges4.~ ges4( f)
}
bassNotesAnt = \relative c {
  des\breve*12/16~ s16 des2~ des\breve*5/16 aes4.
  bes4. des2
}
