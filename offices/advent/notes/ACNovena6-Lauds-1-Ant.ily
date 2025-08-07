\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "31"
antKeysig = \key ges \major
psalmnum = "Ps_51"
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
  Our King will come from Zi -- on;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord, God- -- is- -- with- -- us, is his migh -- ty name.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak ges[ f]
  \allowBreak f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes4
  \allowBreak bes8[ aes]
  \allowBreak ges
  \allowBreak aes[ des,]
  \allowBreak des4
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  aes4 des4.~ des4~ des\breve*5/16~ s16 des4~ des4.~ des2
  bes2 aes4
}
tenorNotesAnt = \relative g {
  f4~ f4. bes4 aes\breve*5/16 s16 f4 ges4. des2
  ges f4
}
bassNotesAnt = \relative c {
  des4~ des4.~ des4~ des\breve*5/16~ s16 des4 ges,4. f2
  ges des'4
}
