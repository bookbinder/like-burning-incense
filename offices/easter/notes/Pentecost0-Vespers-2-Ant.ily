\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_147_1-11"
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
  Tongues of fire
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  ap -- peared be -- fore the a -- pos -- tles, and the Ho -- ly
  Spir -- it came u -- pon each of them, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8[ bes] aes f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges4
  \allowBreak aes8
  \allowBreak bes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees[-- f ges]
  \allowBreak ges4
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*9/16~ s16 des2~ 2. bes4.
  des\breve*5/16 ees ces4. aes bes4 aes4~ 4
}
tenorNotesAnt = \relative g {
  f\breve*9/16 s16 bes2 ges4 f2 ges4.~
  \breve*5/16~ ges~ 4. f ees4 ges f
}
bassNotesAnt = \relative c {
  des\breve*9/16~ s16 des2~ 2. ees4.
  bes\breve*5/16 ces~ 4. des4.~ 2~ 4
}
