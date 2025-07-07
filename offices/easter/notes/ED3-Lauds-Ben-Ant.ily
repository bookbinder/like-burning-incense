\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Benedictus"
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
  The works that I do
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in the name of my Fa -- ther speak on my be -- half,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 aes8 g f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak f
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak des8[ f]
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8~ ees2~ ees2 s16 des2 c2 des\breve*5/16 r4. des4 bes2
}
tenorNotesAnt = \relative g {
  aes4~ aes2~ aes\breve*8/16~ s16 aes2~ aes\breve*5/16~ aes4.~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c4~ c2 des\breve*8/16 s16 aes2 bes\breve*5/16 c4. des4 ees2
}
