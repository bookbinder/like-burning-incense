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
  I am the light;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have come in -- to the world, that those who be -- lieve in me
  may not re -- main in dark -- ness, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 f8 ees aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes4
  \allowBreak f8
  \allowBreak f
  \allowBreak aes
  \allowBreak g([ f] ees4) \bar "'"
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak des([ ees] f4)
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak aes4
  \allowBreak bes8
  \allowBreak aes[ g]
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*8/16 s16 des\breve*5/16 c\breve*5/16~ c4.
  des4.~ des\breve*5/16 ees2.~ ees\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*8/16 s16 f\breve*5/16 ees\breve*5/16 aes4.~
  aes4.~ aes\breve*5/16~ aes2. bes\breve*5/16 aes4~ aes g
}
bassNotesAnt = \relative c {
  aes\breve*8/16~ s16 aes\breve*5/16~ aes\breve*5/16~ aes4.
  des4. bes\breve*5/16 c2. ees\breve*5/16~ ees4~ ees2
}
