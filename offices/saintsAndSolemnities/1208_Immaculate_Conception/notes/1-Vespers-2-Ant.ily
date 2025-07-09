\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_127"
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
  You are the glo -- ry of Je -- ru -- sa -- lem,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the joy of Is -- ra -- el; you are the fair -- est
  ho -- nor of our race.
}
sopNotesAnt = \relative e' {
  aes4 aes8 aes g aes g ees f[ ees] des des4
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak ees
  \allowBreak f4 \bar ","
  \allowBreak f8[-- aes]
  \allowBreak g
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak f4( ees) \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*8/16 des\breve*6/16 s16 c4. des2 ees2
  des\breve*7/16 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*8/16~ aes\breve*6/16~ s16 aes4.~ aes2~ aes2~
  aes\breve*7/16~ aes4( g)
}
bassNotesAnt = \relative c {
  c\breve*8/16 bes\breve*6/16 s16 aes4. des2 c2
  des\breve*7/16 ees2
}
