\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "31"
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
  My heart burns with -- in me;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I long to see my Lord; I look for him, but I can -- not
  find where they have put him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes ges ges[ f] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak aes
  \allowBreak des,4
  \allowBreak des \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  s8 des8~ des2~ des\breve*5/16 s16 ees4. ces4 des4 s4 ces4.~
  ces2 ees\breve*5/16 des2 aes4~ aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
  f4~ f4 bes4 aes\breve*5/16 s16 ges4. ees4 f4 aes4 ges4.~
  ges2~ ges\breve*5/16~ ges2~ ges4 f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des4~ des2~ des\breve*5/16~ s16 des4.~ des4~ des4 f4 ees4.~
  ees2 ces\breve*5/16 bes2 des4~ des4.~ des4~ des2
}
