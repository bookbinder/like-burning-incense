\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_143_1-11"
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
  Be true to your name, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and pre -- serve my life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes aes g f[ g] f f4( ees)
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak des([ f] aes4) \bar "'"
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4. c2.~ s16 des4.~ des\breve*5/16~ des4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes4.~ aes2.~ s16 aes4.~ aes\breve*5/16~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*5/16 des4. aes2. s16 des4. f\breve*5/16 bes,4 ees2
}
