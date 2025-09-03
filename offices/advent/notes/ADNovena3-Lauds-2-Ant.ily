\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Dan_3_26,_27,_29,_34-41"
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
  Zi -- on is our migh -- ty ci -- ta -- del,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  our sa -- ving Lord its wall and its de -- fense;
  throw o -- pen the gates, for our God is here a -- mong
  us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8[ aes'] aes4 ges8 aes ces[ bes] aes bes aes aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des)
  \allowBreak r4 \bar "|"
  \allowBreak des4
  \allowBreak des8
  \allowBreak ees
  \allowBreak des
  \allowBreak ces([ ees] ges4) \bar "'"
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des2. ees4. des\breve*5/16 s16 ees4. des4. bes4.
  ces4 aes2. bes\breve*5/16 ces2.~ ces2 aes4~
  aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
  f2 bes4 ges4. f\breve*5/16 s16 ges4.~ ges4.~ ges4.~
  ges4 f2. ges\breve*5/16~ ges2.~ ges2~ ges4
  f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des2.~ des4.~ des\breve*5/16 s16 ces4. bes4. ees4.
  ces4 des2. ges\breve*5/16 ees2. ces2 des4~
  des4.~ des4~ des2
}
