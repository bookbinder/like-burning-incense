\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Ps_63_2-9"
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
  You fed your peo -- ple with the food of an -- gels;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you gave them bread from hea -- ven, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes8 f ges aes[ bes] aes aes aes ges[ aes] aes des,4 des 
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak \breathe
  \allowBreak f8
  \allowBreak ges
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*9/16 ces4. aes4~ aes4. s16 s4. ces4. ees\breve*5/16 aes,2
}
tenorNotesAnt = \relative g {
  f\breve*9/16 ees4. ges4 f4. s16 ges4.~ ges4.~ ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
  des\breve*9/16~ des4.~ des4~ des4. s16 bes4. ees4. ces\breve*5/16 des2
}
