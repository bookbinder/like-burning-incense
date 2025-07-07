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
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  I go now
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to pre -- pare a place for you, but I shall re -- turn to take you with me,
  so that where I __ am you al -- so may be, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes[ ges] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges[ bes]
  \allowBreak bes
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak des4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ces[ ees ges]
  \allowBreak ges4
  \allowBreak \breathe
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*11/16~ s16 des4.~ des4. bes2.
  ees4 r4 s4 s2 ces\breve*5/16~ ces\breve*5/16 aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*11/16 s16 bes4. f4. ges2.~
  ges2~ ges2.~ ges\breve*5/16 ees\breve*5/16 f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*11/16~ s16 des4.~ des4. ees2.
  ces2 bes2. ees\breve*5/16 aes,\breve*5/16 des4.~ des4~ des2
}
