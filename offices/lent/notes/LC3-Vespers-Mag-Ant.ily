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
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  This is how my heav -- en -- ly Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will treat each of you, un -- less you for -- give
  your broth -- ers and sis -- ters from your heart.
}
sopNotesAnt = \relative e' {
  des8[ ees] des des4 des8 f ges aes bes[ aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees([-- f ges f] ees4)
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  s2. des4.~ 4~ 4. s16 ges2 f4. ees4.
  bes\breve*7/16 des4. ces2 aes2
}
tenorNotesAnt = \relative g {
  aes2.~ 4. ges4 f4. s16 bes2 des4. bes4.
  ges\breve*7/16~ 4.~ 2 f2
}
bassNotesAnt = \relative c {
  f2. des4.~ 4~ 4.~ s16 des2~ 4. ees4.
  ges\breve*7/16 bes,4. aes2 des
}
