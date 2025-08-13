\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "19"
antKeysig = \key aes \major
psalmnum = "Ps_135_13-21"
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
  Great is the Lord, our God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  tran -- scend -- ing all oth -- er gods.
}
sopNotesAnt = \relative e' {
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des([ f] aes4)
  \allowBreak aes8
  \allowBreak f
  \allowBreak f4( ees4) \bar "||"
}
altoNotesAnt = \relative c' {
  ees2 des4. c4 s16 s2 des2. bes2
}
tenorNotesAnt = \relative g {
  aes2~ 4.~ 4.~ s16 aes4.~ 2.~ 4( g)
}
bassNotesAnt = \relative c {
  c2 des4. aes4. s16 c4. f2 des4 ees2
}
