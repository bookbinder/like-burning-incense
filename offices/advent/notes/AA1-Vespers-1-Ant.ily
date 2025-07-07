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
  Re -- joice, daugh -- ter of Zi -- on;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  shout for joy, daugh -- ter of Je -- ru -- sa -- lem, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 g8 aes f f[ ees] ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des([ f] aes4) \bar "'"
  \allowBreak bes8
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*7/16 s\breve*7/16 s16 des2 f c\breve*5/16 bes4~ bes2
}
tenorNotesAnt = \relative g {
  c\breve*7/16 bes\breve*7/16 s16 aes2~ aes2~ aes\breve*5/16~ aes4~ aes g
}
bassNotesAnt = \relative c {
  aes'\breve*7/16 g\breve*7/16 s16 f2 des2 aes\breve*5/16 des4 ees2
}
