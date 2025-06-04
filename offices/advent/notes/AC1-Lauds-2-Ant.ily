\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Dan_3_57-88,_56"
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
  Moun -- tains and hills shall be le -- vel, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  croo -- ked paths straight, rough ways smooth.
  Come, Lord, do not de -- lay, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 g8 aes f[ ees] des8 ees f[ ees] ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f[ g aes]
  \allowBreak aes4 \bar "'"
  \allowBreak bes4
  \allowBreak aes8[ f]
  \allowBreak ees4
  \allowBreak r4 \bar "|"
  \allowBreak ees8[ f ees]
  \allowBreak des([ f] aes4) \bar "'"
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees2 des c2 s16
  des4. c4. f4 des2 bes2
  c4. des\breve*5/16~ des4. bes4. c4 bes2
}
tenorNotesAnt = \relative g {
  aes2~ aes2~ aes2~ s16 aes2.~ aes4~ aes2 g2
  aes4.~ aes\breve*5/16~ aes4. g4. aes4~ aes g
}
bassNotesAnt = \relative c {
  c2 des2 aes2 s16
  f'4. ees4. des4 bes2 ees2 aes4. f\breve*5/16 des4.
  ees4.~ ees4~ ees2
}
