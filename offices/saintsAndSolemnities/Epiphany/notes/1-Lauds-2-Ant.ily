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
  Migh -- ty seas and ri -- vers,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  bless the Lord; springs of wa -- ter, sing his prais -- es,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges8
  \allowBreak ges[ f]
  \allowBreak f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8[ bes aes]
  \allowBreak ges
  \allowBreak aes4( des,4) \bar ","
  \allowBreak ees8[ f ees]
  \allowBreak f
  \allowBreak ges[ f ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8[ f ees]
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des4.~ 4~ 2 s16 ees2 des s2
  s\breve*5/16 ces2 aes\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
  f4. bes4 aes2 s16 ges2 f ges~
  \breve*5/16~ 2 f\breve*5/16 ges4~ 4 f
}
bassNotesAnt = \relative c {
  des4.~ 4~ 2~ s16 des2~ 2 ces2~
  \breve*5/16 aes2 des\breve*5/16~ 4~ 2
}
