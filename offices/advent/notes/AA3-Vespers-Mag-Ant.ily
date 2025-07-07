\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "22"
antKeysig = \key aes \major
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
  Seek the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  while he may be found; call on him while he is near, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8[ bes] aes g([ aes] f4)
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des4( f) \bar ","
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des4. des2 s16 s2 des2 ees4. des2
  c4.~ c4 bes4 aes
}
tenorNotesAnt = \relative g {
  f4. aes2 s16 bes2 f4( aes)~ aes4.~ aes2~
  aes4.~ aes4 f2
}
bassNotesAnt = \relative c {
  des4.~ des2~ s16 des2~ des2 c4. bes2
  aes4.~ aes4 des2
}
