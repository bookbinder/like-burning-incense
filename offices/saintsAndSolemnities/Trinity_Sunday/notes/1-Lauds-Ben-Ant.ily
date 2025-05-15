\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  O ho -- ly, un -- di -- vi -- ded Tri -- ni -- ty,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Cre -- a -- tor and Ru -- ler of all that e -- xists,
  may all praise be yours now, for e -- ver, and for a -- ges
  un -- en -- ding.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes[ bes] aes aes aes f ges bes aes aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees4( des) \bar ","
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak des[ ees]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak f8[ ges]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*9/16~ des4~ des4. s16 bes2. ces2 aes\breve*7/16
  ces\breve*5/16~ ces\breve*10/16 aes2
}
tenorNotesAnt = \relative g {
  f\breve*9/16 ges4 f4. s16 ges2. ees2 f\breve*7/16
  ges\breve*5/16~ ges\breve*10/16~ ges4 f
}
bassNotesAnt = \relative c {
  des\breve*9/16~ des4~ des4. s16 ees2. ces2 des\breve*7/16
  ees\breve*5/16 ces\breve*10/16 des2
}
