\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  See, your King comes,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the mas -- ter of the earth; he will shat -- ter the
  yoke of your slave -- ry.
}
sopNotesAnt = \relative e' {
  des8[ aes'] aes ges[ f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak aes4( des,) \bar ","
  \allowBreak des8
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4
  des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des4.~ des\breve*5/16~ s16 des2~ des2.~ des2
  bes2 aes
}
tenorNotesAnt = \relative g {
  f4. aes\breve*5/16 s16 ges4 bes aes2. ges2~
  ges f
}
bassNotesAnt = \relative c {
  des4.~ des\breve*5/16 s16 ges2 f2. bes,2 ges des'
}
