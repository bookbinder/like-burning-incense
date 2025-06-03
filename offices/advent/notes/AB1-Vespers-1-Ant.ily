\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  The Lord will come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  on the clouds of hea -- ven with great pow -- er
  and might, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes[ bes] aes aes4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak des4( aes'4) \bar "'"
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak g[ f ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*5/16~ ees2. s16 s4 s4. s4. c\breve*5/16 des4~ des4.~ des4 c4. bes4
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes2. s16 c4. bes\breve*5/16 aes\breve*5/16~ aes4
  f4. bes4 aes4. g4
}
bassNotesAnt = \relative c {
  c\breve*5/16 ees2. s16 aes4. g\breve*5/16 aes\breve*5/16 des,4~ des4.~
  des4 ees4.~ ees4
}
