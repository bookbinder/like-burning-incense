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
  Tru -- ly I say to you:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Mo -- ses did not give you the bread of hea -- ven;
  my Fa -- ther gives you the true bread from hea -- ven,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 f8 ges aes aes des,4
    \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak aes'4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak f[ ges]
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes
  \allowBreak ces[ bes aes]
  \allowBreak ges8
  \allowBreak aes4
  \allowBreak aes \bar ","
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak aes4
  \allowBreak ges8[ aes]
  \allowBreak aes
  \allowBreak des,4
  \allowBreak des \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*8/16~ s16 des\breve*10/16 ees\breve*9/16
  bes4. des\breve*7/16 ees\breve*5/16 r4 r4. bes4 aes2
}
tenorNotesAnt = \relative g {
  <f~ aes>\breve*8/16 s16 <des f>\breve*10/16 ges\breve*9/16~
  ges4.~ ges\breve*7/16~ ges\breve*5/16 f\breve*5/16
  ges4~ ges f
}
bassNotesAnt = \relative c {
  s\breve*8/16 s16 s\breve*10/16 ces\breve*9/16
  ees4. bes\breve*7/16 ces\breve*5/16 des\breve*5/16~
  des4~ des2
}
