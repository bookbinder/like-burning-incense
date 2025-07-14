\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "35"
antKeysig = \key des \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  Mar -- tha said to Je -- sus:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  You are the Christ, the Son of the li -- ving God: he who is to
  come in -- to the world.
}
sopNotesAnt = \relative e' {
  des8[ ees] des ees f ees4 des4
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak aes'4
  \allowBreak f8
  \allowBreak des
  \allowBreak ges([ f] ees4)
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar ","
  \allowBreak bes8[ des]
  \allowBreak des
  \allowBreak bes
  \allowBreak des
  \allowBreak ees([ f] ees4)
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 des2~ des4 r4. s\breve*6/16
  s2 bes\breve*12/16 aes2
}
tenorNotesAnt = \relative g {
  aes\breve*9/16 s16 f2 bes4( ges4.~) ges\breve*6/16
  f2 ges\breve*12/16 f2
}
bassNotesAnt = \relative c {
  f\breve*9/16 s16 des2~ des4~ des4.~ des\breve*6/16~
  des2 ges,\breve*12/16 des'2
}
