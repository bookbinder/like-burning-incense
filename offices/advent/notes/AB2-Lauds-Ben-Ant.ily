\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "29"
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
  The Lord pro -- claims:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Re -- pent, the king -- dom of God is u -- pon you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 g[ aes] f f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak ees8
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak g4
  \allowBreak g8
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  bes4 des4.~ des4. s16 ees4. des\breve*7/16 bes4~ bes4.
  c4 bes2
}
tenorNotesAnt = \relative g {
  g4 f4. aes4.~ s16 aes4.~ aes\breve*7/16~ aes4 g4. aes4~ aes g
}
bassNotesAnt = \relative c {
  ees4 des4.~ des4. s16 c4. bes\breve*7/16 ees4~ ees4.~ ees4~ ees2
}
